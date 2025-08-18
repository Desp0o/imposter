//
//  OnBoarding.swift
//  imposter
//
//  Created by Tornike Despotashvili on 8/17/25.
//

import SwiftUI

struct OnBoarding: View {
  @AppStorage("appLanguage") private var appLanguage: LanguageEnum = .ka
  
  var body: some View {
    TabView {
      
      VStack {
        Text("Lets Play Imposter!")
          .customFontSytle(weight: .bold, size: 24)
        
        Picker("languages", selection: $appLanguage) {
          ForEach(LanguageEnum.allCases) { lang in
            Text(LocalizedStringKey(lang.rawValue))
              .customFontSytle(color: .mainPink, weight: .semibold, size: 18)
              .tag(lang)
          }
        }
        .pickerStyle(.wheel)
        .padding(.horizontal, 40)
      }
      
      BoardingRule(
        icon: "mask",
        text: "rule_one"
      )
      
      BoardingRule(
        icon: "location",
        text: "rule_two"
      )
      
      BoardingRule(
        icon: "",
        text: "rule_three"
      )
      
      BoardingRule(
        icon: "",
        text: "rule_four"
      )
      
      BoardingRule(
        icon: "",
        text: "rule_five"
      )
      
      BoardingRule(
        icon: "",
        text: "rule_six"
      )
      
      BoardingRule(
        icon: "",
        text: "rule_seven",
        isButtonVisible: true
      )
    }
    .tabViewStyle(.page)
    .background(.mainBlack)
    .tint(.mainPink)
  }
}

#Preview {
  OnBoarding()
}


