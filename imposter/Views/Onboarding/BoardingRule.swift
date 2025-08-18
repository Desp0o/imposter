//
//  BoardingRule.swift
//  imposter
//
//  Created by Tornike Despotashvili on 8/18/25.
//


import SwiftUI

struct BoardingRule:  View {
  @AppStorage("isOnboardingCompleted") var isOnboardingCompleted: Bool = false
  
  let icon: String
  let text: LocalizedStringKey
  let size: CGFloat
  let weight: Font.Weight
  let isButtonVisible: Bool
  
  init(icon: String, text: LocalizedStringKey, size: CGFloat = 16, weight: Font.Weight = .semibold, isButtonVisible: Bool = false) {
    self.icon = icon
    self.text = text
    self.size = size
    self.weight = weight
    self.isButtonVisible = isButtonVisible
  }
  
  var body: some View {
    VStack {
      Spacer()
        .frame(height: 100)
      
      Image(icon)
        .resizable()
        .scaledToFit()
        .frame(width: 170, height: 170)
      
      Text(text)
        .customFontSytle(weight: weight, size: size)
      
      if isButtonVisible {
        Spacer()
        
        Button {
          isOnboardingCompleted = true
        } label: {
          HStack {
            Spacer()
            
            Image(systemName: IconsEnum.arrow.rawValue)
              .foregroundStyle(.mainWhite)
              .padding()
              .background(.mainPink)
              .clipShape(Circle())
          }
        }
        .offset(y: -20)
      } else {
        Spacer()
      }
    }
    .frame(maxWidth: .infinity, maxHeight: .infinity)
    .padding()
  }
}