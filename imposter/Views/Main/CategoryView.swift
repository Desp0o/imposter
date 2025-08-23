//
//  CategoryView.swift
//  imposter
//
//  Created by Tornike Despotashvili on 8/23/25.
//


import SwiftUI

struct CategoryView: View {
  @AppStorage("appLanguage") private var appLanguage: LanguageEnum = .ka
  @Binding var categoryList: [CategoryModel]
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
                  color: categoryList.contains(category)
                  ? .mainBlack : .mainWhite,
                  weight: .semibold
                )
              
              Spacer()
            }
            .padding()
            .background(categoryList.contains(category) ? .mainPink : .clear)
            .clipShape(RoundedRectangle(cornerRadius: 8))
            .overlay {
              RoundedRectangle(cornerRadius: 8)
                .stroke(.mainPink, lineWidth: 1)
            }
            .contentShape(Rectangle())
            .onTapGesture {
              if !categoryList.contains(category) {
                withAnimation(.smooth) {
                  categoryList.append(category)
                }
              } else {
                withAnimation(.smooth) {
                  guard categoryList.count > 1 else { return }
                  categoryList.removeAll { category.id == $0.id }
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