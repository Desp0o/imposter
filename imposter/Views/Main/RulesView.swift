//
//  RulesView.swift
//  imposter
//
//  Created by Tornike Despotashvili on 8/23/25.
//


import SwiftUI

struct RulesView: View {
  @Binding var isRulesSheetVisible: Bool
  
  let rulesArray: [String] = [
    "Gather 3–5 friends and pass the phone around.",
    "Each player swipes to see the secret word — except one person, who will see \"Imposter.\"",
    "One by one, players say a word related to the secret word.",
    "The imposter must fake it and try to blend in without knowing the word.",
    "Keep giving clues and talking until someone thinks they've figured it out.",
    "When you're ready, vote for who you think the imposter is — then tap to reveal the truth!",
    "Record the chaos! Share your funniest rounds on social media and tag your friends."
  ]
  
  var body: some View {
    VStack(spacing: 40) {
      HStack {
        Text("How to Play")
          .customFontSytle(color: .mainWhite, weight: .bold, size: 24)
        
        Spacer()
        
        Button {
          isRulesSheetVisible = false
        } label: {
          Image(systemName: IconsEnum.xmark.rawValue)
            .foregroundStyle(.mainPink)
        }
      }
      
      ScrollView {
        VStack(alignment: .leading, spacing: 20) {
          ForEach(rulesArray.indices, id: \.self) { index in
            let rule = rulesArray[index]
            
            HStack(alignment: .top, spacing: 10) {
              Text("\(index + 1)")
                .customFontSytle(color: .mainPink, weight: .bold, size: 20)
              
              Text(rule)
                .customFontSytle()
            }
          }
        }
      }
      .scrollIndicators(.hidden)
      .scrollBounceBehavior(.basedOnSize)
    }
    .frame(maxWidth: .infinity, maxHeight: .infinity, alignment: .leading)
    .padding(20)
    .background(.mainBlack)
  }
}