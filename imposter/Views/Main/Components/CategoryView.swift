//
//  CategoryView.swift
//  imposter
//
//  Created by Tornike Despotashvili on 8/23/25.
//


import SwiftUI

struct CategoryView: View {
  @Environment(GameManager.self) private var gameManager
  @AppStorage(AppStorageEnum.language.rawValue) private var appLanguage: LanguageEnum = .en
  @AppStorage(AppStorageEnum.sub.rawValue) private var currentSubscription: String?
  @Binding var isCategorySheetVisible: Bool
  
  var body: some View {
    VStack(spacing: 5) {
      Text("Choose Category")
        .customFontSytle(weight: .bold, size: 24)
      
      if currentSubscription == nil {
        BannerViewContainer(bannerType: .categoryBanner)
          .frame(maxWidth: .infinity)
          .frame(height: 40)
          .padding(.horizontal, 30)
      }
      
      ScrollView {
        VStack(spacing: 20) {
          ForEach(CategoryArray, id: \.id) { category in
            HStack {
              Text(appLanguage == .ka ? category.nameGeo : category.nameEng)
                .customFontSytle(
                  color: .mainWhite,
                  weight: .semibold
                )
              
              Spacer()
            }
            .padding()
            .background(
              gameManager.categories.contains(where: { $0.id == category.id }) ? .mainGray : .clear
            )
            .clipShape(RoundedRectangle(cornerRadius: 8))
            .overlay {
              RoundedRectangle(cornerRadius: 8)
                .stroke(.mainGray, lineWidth: 1)
            }
            .if(currentSubscription == nil && category.isUnlocked == false) { view in
              view.overlay(alignment: .trailing) {
                Image(systemName: IconsEnum.lock.rawValue)
                  .foregroundStyle(.mainRed)
                  .offset(x: -15)
              }
            }
            .contentShape(Rectangle())
            .onTapGesture {
              if category.id == 1 || category.id == 3 {
                selectCategory(category: category)
              } else if currentSubscription != nil {
                selectCategory(category: category)
              }
            }
          }
        }
        .padding()
      }
      .scrollIndicators(.hidden)
      .scrollBounceBehavior(.basedOnSize)
      
      if currentSubscription == nil {
        BannerViewContainer(bannerType: .categoryBottom)
          .frame(maxWidth: .infinity)
          .frame(height: 40)
          .padding(.horizontal, 30)
      }
    }
    .frame(maxWidth: .infinity, maxHeight: .infinity)
    .padding(.top, 20)
    .background(.mainBlack)
  }
  
  
  private func selectCategory(category: CategoryModel) {
    let generator = UIImpactFeedbackGenerator(style: .medium)
    generator.impactOccurred()
    
    if !gameManager.categories.contains(category) {
      withAnimation(.snappy(duration: 0.2)) {
        gameManager.categories.append(category)
      }
    } else {
      withAnimation(.snappy(duration: 0.2)) {
        guard gameManager.categories.count > 1 else { return }
        gameManager.categories.removeAll { category.id == $0.id }
      }
    }
  }
}
