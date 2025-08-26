//
//  Main.swift
//  imposter
//
//  Created by Tornike Despotashvili on 8/18/25.
//


import SwiftUI

struct Main: View {
  @Environment(GameManager.self) private var gameManager
  @AppStorage("appLanguage") private var appLanguage: LanguageEnum = .ka
  
  @State private var isLocalsAddSheetVisible: Bool = false
  @State private var isImposterAddSheetVisible: Bool = false
  @State private var isRulesSheetVisible: Bool = false
  @State private var isTimeSheetVisible: Bool = false
  @State private var isCategorySheetVisible: Bool = false
  
  var body: some View {
    NavigationStack {
      ScrollView {
        ZStack(alignment: .top) {
          RulesAndSettingsComponent(isRulesSheetVisible: $isRulesSheetVisible)
            .sheet(isPresented: $isRulesSheetVisible) {
              RulesView(isRulesSheetVisible: $isRulesSheetVisible)
            }
          
          VStack(spacing: 20) {
            Text("IMPOSTER")
              .customFontSytle(color: .mainGray, weight: .black, size: 42)
            
            Spacer().frame(height: 5)
            
            // MARK: - locals
            VStack(alignment: .leading, spacing: 20) {
              Text("🎮 Players")
                .customFontSytle(weight: .bold)
              
              HStack {
                Text("\(gameManager.localsQuantity)")
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
                Text("\(gameManager.impostersQuantity)")
                  .customFontSytle()
                
                Text(gameManager.impostersQuantity > 1 ?  "Imposters" : "Imposter")
                  .customFontSytle()
              }
              .componetnTextBackground()
            }
            .gameSettingsComponent {
              isImposterAddSheetVisible = true
            }
            
            // MARK: - time limit
            VStack(alignment: .leading, spacing: 20) {
              TogglerCustomComponent(title: "⏰ Time Limit",
                                     value: Binding(
                                      get: { gameManager.isTimeLimitEnabled },
                                      set: { gameManager.isTimeLimitEnabled = $0 })
              )
              
              if gameManager.isTimeLimitEnabled {
                HStack {
                  Text("\(gameManager.timeAmount)")
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
              if gameManager.isTimeLimitEnabled {
                isTimeSheetVisible = true
              }
            }
            
            // MARK: - Hint
            VStack(alignment: .leading, spacing: 20) {
              TogglerCustomComponent(title: "💡 Imposter Hint", value: Binding(
                get: { gameManager.isHintEnabled },
                set: { gameManager.isHintEnabled = $0 }
              ))
              
              HStack {
                Text("Give imposter a hint about the word to help them blend in better")
                  .customFontSytle()
              }
              .padding(8)
              .clipShape(RoundedRectangle(cornerRadius: 8))
            }
            .gameSettingsComponent(action: {})
            
            // MARK: - Category
            VStack(alignment: .leading, spacing: 20) {
              Text("🏷️ Category")
                .customFontSytle(weight: .bold)
              
              FlowLayout(spacing: 10, vSpacing: 10) {
                ForEach(gameManager.categories, id: \.id) { list in
                  Text(appLanguage == .ka ? list.nameGeo : list.nameEng)
                    .customFontSytle()
                    .componetnTextBackground()
                }
              }
            }
            .gameSettingsComponent {
              isCategorySheetVisible = true
            }
            
            Spacer().frame(height: 5)
            
            HStack(spacing: 12) {
              Button {
                
              } label: {
                Text("⭐️")
                  .customFontSytle()
                  .frame(width: 52, height: 52)
                  .background(
                    RoundedRectangle(cornerRadius: 8)
                      .fill(.mainPink)
                  )
              }
              
              NavigationLink {
                GameView()
                  .toolbar(.hidden)
              } label: {
                Text("Play")
                  .customFontSytle(color: .mainBlack, weight: .bold, size: 20)
                  .frame(height: 52)
                  .frame(maxWidth: .infinity)
                  .background(
                    RoundedRectangle(cornerRadius: 8)
                      .fill(.mainPink)
                  )
              }
            }
          }
          .padding(.bottom, 30)
          .sheet(isPresented: $isLocalsAddSheetVisible) {
            LocalsCount(isLocalsAddSheetVisible: $isLocalsAddSheetVisible
            )
          }
          .sheet(isPresented: $isImposterAddSheetVisible) {
            ImposterCount(isImposterAddSheetVisible: $isImposterAddSheetVisible)
          }
          .sheet(isPresented: $isTimeSheetVisible) {
            TimeSetup(isTimeSheetVisible: $isTimeSheetVisible)
          }
          .sheet(isPresented: $isCategorySheetVisible) {
            CategoryView(isCategorySheetVisible: $isCategorySheetVisible)
          }
          .toolbar(.hidden, for: .tabBar)
        }
        .frame(maxWidth: .infinity, maxHeight: .infinity, alignment: .top)
        .padding(30)
      }
      .scrollIndicators(.hidden)
      .background(.mainBlack)
      .overlay {
        AdView(isMain: true, bannerId: .banner)
      }
    }
  }
  
}

#Preview {
  Main()
    .environment(GameManager())
}




