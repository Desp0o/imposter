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
  @Binding var isCategorySheetVisible: Bool
  
  var body: some View {
    VStack(spacing: 5) {
      Text("Choose Category")
        .customFontSytle(weight: .bold, size: 24)
      
      BannerViewContainer(bannerType: .categoryBanner)
        .frame(maxWidth: .infinity)
        .frame(height: 40)
        .padding(.horizontal, 30)
      
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
            .contentShape(Rectangle())
            .onTapGesture {
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
      .scrollIndicators(.hidden)
      .scrollBounceBehavior(.basedOnSize)
      
      BannerViewContainer(bannerType: .categoryBottom)
        .frame(maxWidth: .infinity)
        .frame(height: 40)
        .padding(.horizontal, 30)
    }
    .frame(maxWidth: .infinity, maxHeight: .infinity)
    .padding()
    .padding(.top, 10)
    .background(.mainBlack)
  }
}
