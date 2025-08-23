//
//  Main.swift
//  imposter
//
//  Created by Tornike Despotashvili on 8/18/25.
//


import SwiftUI

struct Main: View {
  @State private var isLocalsAddSheetVisible: Bool = false
  @State private var isImposterAddSheetVisible: Bool = false
  @State private var isRulesSheetVisible: Bool = false
  @State private var isTimeLimitEnabled: Bool = false
  @State private var isTimeSheetVisible: Bool = false
  @State private var isHintEnabled: Bool = false
  @State private var isCategorySheetVisible: Bool = false
  
  @State private var localsQuantity: Int = 3
  @State private var impostersQuantity: Int = 1
  @State private var timeAmount: Int = 3
  @State private var categoryList: [CategoryModel] = [
    CategoryModel(id: 1, nameEng: "Everyday Objects", nameGeo: "ყოველდღიური", data: everydayObjectsData),
    CategoryModel(id: 2, nameEng: "Flora & Fauna", nameGeo: "ფლორა და ფაუნა", data: floraAndFaunaData)
  ]
  
  var body: some View {
    ScrollView {
      ZStack(alignment: .top) {
        RulesAndSettingsComponent(isRulesSheetVisible: $isRulesSheetVisible)
          .sheet(isPresented: $isRulesSheetVisible) {
            RulesView(isRulesSheetVisible: $isRulesSheetVisible)
          }
        
        VStack(spacing: 20) {
          Text("Imposter")
            .customFontSytle(color: .mainGray, weight: .black, size: 42)
          
          Spacer().frame(height: 5)
          
          // MARK: - locals
          VStack(alignment: .leading, spacing: 20) {
            Text("🎮 Players")
              .customFontSytle(weight: .bold)
            
            HStack {
              Text("\(localsQuantity)")
                .customFontSytle()
              
              Text("Players")
                .customFontSytle()
            }
            .componetnTextBackground()
          }
          .gameSettingsComponent {
            isLocalsAddSheetVisible = true
          }
          
          // MARK: - imposter
          VStack(alignment: .leading, spacing: 20) {
            Text("🥷🏿 Imposters")
              .customFontSytle(weight: .bold)
            
            HStack {
              Text("\(impostersQuantity)")
                .customFontSytle()
              
              Text(impostersQuantity > 1 ?  "Imposters" : "Imposter")
                .customFontSytle()
            }
            .componetnTextBackground()
          }
          .gameSettingsComponent {
            isImposterAddSheetVisible = true
          }
          
          // MARK: - time limit
          VStack(alignment: .leading, spacing: 20) {
            TogglerCustomComponent(title: "⏰ Time Limit", value: $isTimeLimitEnabled)
            
            if isTimeLimitEnabled {
              HStack {
                Text("\(timeAmount)")
                  .customFontSytle()
                
                Text("Minutes")
                  .customFontSytle()
              }
              .componetnTextBackground()
            } else {
              Text("Disabled")
                .customFontSytle()
                .componetnTextBackground()
            }
          }
          .gameSettingsComponent {
            if isTimeLimitEnabled {
              isTimeSheetVisible = true
            }
          }
          
          // MARK: - Hint
          VStack(alignment: .leading, spacing: 20) {
            TogglerCustomComponent(title: "💡 Imposter Hint", value: $isHintEnabled)
            
            
            HStack {
              Text("Give imposter a hint about the word to help them blend in better")
                .customFontSytle()
            }
            .padding(8)
            .clipShape(RoundedRectangle(cornerRadius: 8))
          }
          .gameSettingsComponent {
            if isTimeLimitEnabled {
              isTimeSheetVisible = true
            }
          }
          
          // MARK: - Category
          VStack(alignment: .leading, spacing: 20) {
            Text("🏷️ Category")
              .customFontSytle(weight: .bold)
            
            FlowLayout(spacing: 10, vSpacing: 10) {
              ForEach(categoryList, id: \.id) { list in
                Text(list.nameEng)
                  .customFontSytle()
                  .componetnTextBackground()
                
              }
            }
          }
          .gameSettingsComponent {
            isCategorySheetVisible = true
          }
          
        }
        .padding(.bottom, 30)
        .sheet(isPresented: $isLocalsAddSheetVisible) {
          LocalsCount(
            localsQuantity: $localsQuantity,
            isLocalsAddSheetVisible: $isLocalsAddSheetVisible
          )
        }
        .sheet(isPresented: $isImposterAddSheetVisible) {
          ImposterCount(isImposterAddSheetVisible: $isImposterAddSheetVisible, impostersQuantity: $impostersQuantity, localsQuantity: $localsQuantity)
        }
        .sheet(isPresented: $isTimeSheetVisible) {
          TimeSetup(timeAmount: $timeAmount, isTimeSheetVisible: $isTimeSheetVisible)
        }
        .sheet(isPresented: $isCategorySheetVisible) {
          CategoryView(categoryList: $categoryList, isCategorySheetVisible: $isCategorySheetVisible)
        }
        .toolbar(.hidden, for: .tabBar)
      }
      .frame(maxWidth: .infinity, maxHeight: .infinity, alignment: .top)
      .padding()
    }
    .background(.mainBlack)
  }
  
}

#Preview {
  Main()
}



