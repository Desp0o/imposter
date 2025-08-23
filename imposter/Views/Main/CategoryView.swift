//
//  CategoryView.swift
//  imposter
//
//  Created by Tornike Despotashvili on 8/23/25.
//


import SwiftUI

struct CategoryView: View {
  @Environment(CategoryManager.self) private var catManager
  @AppStorage("appLanguage") private var appLanguage: LanguageEnum = .ka
  @Binding var isCategorySheetVisible: Bool
  
  var body: some View {
    VStack(spacing: 40) {
      Text("Choose Category")
        .customFontSytle(weight: .bold, size: 24)
      
      ScrollView {
        VStack(spacing: 20) {
          ForEach(CategoryArray, id: \.id) { category in
            HStack {
              Text(appLanguage == .ka ? category.nameGeo : category.nameEng)
                .customFontSytle(
                  color: catManager.categories.contains(category)
                  ? .mainBlack : .mainWhite,
                  weight: .semibold
                )
              
              Spacer()
            }
            .padding()
            .background(catManager.categories.contains(category) ? .mainPink : .clear)
            .clipShape(RoundedRectangle(cornerRadius: 8))
            .overlay {
              RoundedRectangle(cornerRadius: 8)
                .stroke(.mainPink, lineWidth: 1)
            }
            .contentShape(Rectangle())
            .onTapGesture {
              if !catManager.categories.contains(category) {
                withAnimation(.smooth) {
                  catManager.categories.append(category)
                }
              } else {
                withAnimation(.smooth) {
                  guard catManager.categories.count > 1 else { return }
                  catManager.categories.removeAll { category.id == $0.id }
                }
              }
            }
          }
        }
      }
      .scrollIndicators(.hidden)
      .scrollBounceBehavior(.basedOnSize)
    }
    .frame(maxWidth: .infinity, maxHeight: .infinity)
    .padding()
    .padding(.top, 10)
    .background(.mainBlack)
  }
}
