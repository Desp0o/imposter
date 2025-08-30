//
//  CategoryView.swift
//  imposter
//
//  Created by Tornike Despotashvili on 8/23/25.
//


import SwiftUI

struct CategoryView: View {
  @Environment(GameManager.self) private var gameManager
  @AppStorage(AppStorageEnum.language.rawValue) private var appLanguage: LanguageEnum = .ka
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
                  color: gameManager.categories.contains(category)
                  ? .mainBlack : .mainWhite,
                  weight: .semibold
                )
              
              Spacer()
            }
            .padding()
            .background(gameManager.categories.contains(category) ? .mainPink : .clear)
            .clipShape(RoundedRectangle(cornerRadius: 8))
            .overlay {
              RoundedRectangle(cornerRadius: 8)
                .stroke(.mainPink, lineWidth: 1)
            }
            .if(currentSubscription == nil && category.isUnlocked == false) { view in
              view.overlay(alignment: .trailing) {
                Image(systemName: "lock")
                  .foregroundStyle(.mainPink)
                  .offset(x: -15)
              }
            }
            .contentShape(Rectangle())
            .onTapGesture {
              if currentSubscription != nil {
                if !gameManager.categories.contains(category) {
                  withAnimation(.smooth) {
                    gameManager.categories.append(category)
                  }
                } else {
                  withAnimation(.smooth) {
                    guard gameManager.categories.count > 1 else { return }
                    gameManager.categories.removeAll { category.id == $0.id }
                  }
                }
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
}
