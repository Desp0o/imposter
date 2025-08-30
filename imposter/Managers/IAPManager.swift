//
//  PurchaseItemModel.swift
//  imposter
//
//  Created by Tornike Despotashvili on 8/26/25.
//


import Foundation
import StoreKit
import Observation

struct PurchaseItemModel {
  let id: String
  let value: Int
}

@Observable
final class IAPManager {
  static let shared = IAPManager()
  private var transactionListener: Task<Void, Never>? = nil

  var isSyncingSub: Bool = false
  var purchaseCanceled: Bool = false
  var purchaseError: Bool = false
  var products: [Product] = []
  
  let ids: [String] = [
    SubscriptionEnum.monthly.rawValue,
    SubscriptionEnum.yearly.rawValue
  ]
  
  init() {
    Task {
      await fetchProducts()
      
      if let latestStatus = await fetchLastActiveSubscription() {
        UserDefaults.standard.set(latestStatus, forKey: "currentSubscribe")
      }
    }
  }
  
  deinit {
    transactionListener?.cancel()
  }
  
  @MainActor
  func fetchProducts() async {
    do {
      products = try await Product.products(for: ids)
    } catch {
      print("❌ Failed to fetch products: \(error)")
    }
  }
  
  @MainActor
  func purchase(_ product: Product) async {
    do {
      let result = try await product.purchase()
      
      switch result {
      case .success(let verification):
        let transaction = try checkVerified(verification)
        print("✅ Purchase success: \(transaction.productID)")
        await transaction.finish()
        
      case .userCancelled:
        purchaseCanceled = true
      default:
        break
      }
    } catch {
      purchaseError = true
      print("❌ Purchase failed: \(error)")
    }
  }
  
  func listenForTransactions() {
    transactionListener = Task.detached { [weak self] in
      guard let self else { return }
      
      for await result in Transaction.updates {
        do {
          let transaction = try self.checkVerified(result)
          await transaction.finish()
          print("✅ Transaction update: \(transaction.productID)")
        } catch {
          print("❌ Transaction verification failed: \(error)")
        }
      }
    }
  }
  
  private func checkVerified<T>(_ result: VerificationResult<T>) throws -> T {
    switch result {
    case .unverified:
      throw NSError(
        domain: "IAP",
        code: 0,
        userInfo: [NSLocalizedDescriptionKey: "Unverified transaction"]
      )
    case .verified(let safe):
      return safe
    }
  }
  
  func fetchLastActiveSubscription() async -> String? {
    do {
      guard let subscriptionProduct = try await Product.products(for: ids).first,
            let statuses = try await subscriptionProduct.subscription?.status else {
        return nil
      }
      
      if let activeStatus = statuses.first(where: { $0.state == .subscribed }) {
        
        let renewalInfoResult = activeStatus.renewalInfo
        
        switch renewalInfoResult {
        case .verified(let renewalInfo):
          return renewalInfo.autoRenewPreference ?? renewalInfo.currentProductID
        case .unverified(let renewalInfo, let error):
          print("⚠️ Unverified renewalInfo: \(renewalInfo), error: \(error)")
          return nil
        }
      }
      
    } catch {
      print("❌ Error fetching subscription status: \(error)")
    }
    return nil
  }
  
  func buyProduct(withID id: String) async {
    guard let product = products.first(where: { $0.id == id }) else {
      print("Product not found for \(id)")
      return
    }
    
    await purchase(product)
    
    if let latestStatus = await fetchLastActiveSubscription() {
      UserDefaults.standard.set(latestStatus, forKey: "currentSubscribe")
    }
  }
  
  @MainActor
  func restoreSubscription() async throws {
    isSyncingSub = true
    
    defer {
      isSyncingSub = false
    }
    
    do {
      try await AppStore.sync()
      
      if let sub = await fetchLastActiveSubscription() {
        UserDefaults.standard.set(sub, forKey: "currentSubscribe")
      }
    } catch {
      dump(error)
    }
  }
}
