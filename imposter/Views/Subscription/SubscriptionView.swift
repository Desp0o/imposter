//
//  Subscription.swift
//  imposter
//
//  Created by Tornike Despotashvili on 8/26/25.
//

import SwiftUI
import StoreKit

struct Subscription: View {
  @Environment(\.dismiss) private var dismiss
  @AppStorage(AppStorageEnum.sub.rawValue) private var activeSubscribe: String?

  @State private var isMonthlyActive: Bool = true
  @State private var iapManager = IAPManager.shared
  @State private var activePlan: String? = nil
  
  private let productIDs: [String] = IAPManager.shared.ids
  
  var body: some View {
    ScrollView {
      VStack(spacing: 0) {
        VStack(spacing: 0) {
          Image("logo")
            .resizable()
            .scaledToFit()
            .offset(y: -60)
          
          VStack(spacing: 12) {
            Text("Unlock Full Access")
              .customFontSytle(color: .mainPink, weight: .bold, size: 20)
            
            Text("Access all categories, features and no ADS!")
              .customFontSytle(weight: .semibold, size: 16)
              .multilineTextAlignment(.center)
            
          }
          .offset(y: -60)
        }
        
        VStack(spacing: 12) {
          SubscriptionPrivacyPolicy()
          
          VStack(spacing: 20) {
            //MARK: - Subscription plans
            VStack(spacing: 12) {
              Button {
                isMonthlyActive = true
              } label: {
                VStack {
                  HStack {
                    Text("$4.99/month")
                      .customFontSytle(size: 14)
                    
                    Spacer()
                    
                    SubscriptionCheckMark(isMonthlyActive: Binding(
                      get: { !isMonthlyActive },
                      set: { isMonthlyActive = !$0 }
                    ))
                  }
                  
                  if activeSubscribe == SubscriptionEnum.monthly.rawValue {
                    ActivePlanIndicator()
                  }
                }
                .frame(maxWidth: .infinity)
                .frame(height: activeSubscribe == SubscriptionEnum.monthly.rawValue ? 70 : 48)
                .padding(.horizontal, 20)
                .background(.mainGray)
                .clipShape(RoundedRectangle(cornerRadius: 12))
                .overlay {
                  if isMonthlyActive {
                    RoundedRectangle(cornerRadius: 12).stroke(.mainPink, lineWidth: 1)
                  }
                }
              }
              
              Button {
                isMonthlyActive = false
              } label: {
                VStack {
                  HStack {
                    Text("3 days free, then $19.99/year")
                      .customFontSytle(size: 14)
                      .multilineTextAlignment(.leading)
                    
                    Spacer()
                    
                    SubscriptionCheckMark(isMonthlyActive: $isMonthlyActive)
                  }
                  
                  if activeSubscribe == SubscriptionEnum.yearly.rawValue {
                    ActivePlanIndicator()
                  }
                }
                .frame(maxWidth: .infinity)
                .frame(height: activeSubscribe == SubscriptionEnum.yearly.rawValue ? 70 : 48)
                .padding(.horizontal, 20)
                .background(.mainGray)
                .clipShape(RoundedRectangle(cornerRadius: 12))
                .overlay {
                  if !isMonthlyActive {
                    RoundedRectangle(cornerRadius: 12).stroke(.mainPink, lineWidth: 1)
                  }
                }
              }
            }
            
            //MARK: - purchase button
            VStack {
              switch isMonthlyActive {
              case true:
                Text("Plan auto-renews for $4.99/month untill canceled.")
                  .customFontSytle(size: 10)
              case false:
                Text("3 days free, then $19.99/year")
                  .customFontSytle(size: 10)
              }
              
              VStack(spacing: 20) {
                Button {
                  Task {
                    if isMonthlyActive {
                      await iapManager.buyProduct(withID: SubscriptionEnum.monthly.rawValue)
                    } else {
                      await iapManager.buyProduct(withID: SubscriptionEnum.yearly.rawValue)
                    }
                  }
                } label: {
                  Group {
                    if activeSubscribe == nil {
                      Text(isMonthlyActive ? "Subscribe" : "Try It Free")
                        .customFontSytle(color: .mainBlack, weight: .bold, size: 20)
                    } else {
                      if activeSubscribe == SubscriptionEnum.monthly.rawValue && isMonthlyActive ||
                          activeSubscribe == SubscriptionEnum.yearly.rawValue && !isMonthlyActive {
                        Text("Subscribe")
                          .customFontSytle(color: .mainBlack, weight: .bold, size: 20)
                      } else {
                        Text("Change Plan")
                          .customFontSytle(color: .mainBlack, weight: .bold, size: 20)
                      }
                    }
                  }
                  
                  .frame(height: 48)
                  .frame(maxWidth: .infinity)
                  .background(.mainPink)
                  .clipShape(RoundedRectangle(cornerRadius: 12))
                }
                .disabled(
                  activeSubscribe == SubscriptionEnum.monthly.rawValue && isMonthlyActive ||
                  activeSubscribe == SubscriptionEnum.yearly.rawValue && !isMonthlyActive ? true : false
                )
                .opacity(
                  activeSubscribe == SubscriptionEnum.monthly.rawValue && isMonthlyActive ||
                  activeSubscribe == SubscriptionEnum.yearly.rawValue && !isMonthlyActive ? 0.3 : 1
                )
                
                Button {
                  Task {
                    try await iapManager.restoreSubscription()
                  }
                } label: {
                  Text("Restore Subscription")
                    .customFontSytle(color: .mainPink, weight: .bold, size: 16)
                }
              }
            }
          }
        }
      }
      .frame(maxWidth: .infinity, maxHeight: .infinity)
      .padding(40)
      .background(.mainBlack)
      .foregroundStyle(.mainWhite)
      .onAppear {
        if activeSubscribe == SubscriptionEnum.monthly.rawValue {
          isMonthlyActive = true
        } else {
          isMonthlyActive = false
        }
      }
    }
    .overlay {
      if iapManager.isSyncingSub {
        ProgressView()
          .scaleEffect(2)
          .tint(.mainPink)
      }
    }
    .overlay(alignment: .topTrailing) {
      HStack {
        Spacer()
        
        Button {
          dismiss()
        } label: {
          Image(systemName: IconsEnum.xmark.rawValue)
            .resizable()
            .scaledToFit()
            .frame(width: 18, height: 18)
            .foregroundStyle(.gray)
            .padding()
        }
        .padding(.trailing, 20)
        .padding(.top, 20)
        .contentShape(Rectangle())
      }
    }
  }
}

#Preview {
  Subscription()
}
















