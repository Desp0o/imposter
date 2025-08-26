//
//  RulesView.swift
//  imposter
//
//  Created by Tornike Despotashvili on 8/23/25.
//


import SwiftUI

struct RulesView: View {
  @AppStorage("appLanguage") private var appLanguage: LanguageEnum = .ka
  @Binding var isRulesSheetVisible: Bool
  
  let rulesEng: [String] = [
    "Gather 3–5 friends and pass the phone around.",
    "Each player swipes to see the secret word — except one person, who will see \"Imposter.\"",
    "One by one, players say a word related to the secret word.",
    "The imposter must fake it and try to blend in without knowing the word.",
    "Keep giving clues and talking until someone thinks they've figured it out.",
    "When you're ready, vote for who you think the imposter is — then tap to reveal the truth!",
  ]
  
  let rulesGeo: [String] = [
      "შეიკრიბეთ 3–5 მეგობარი და გადაეცით ტელეფონი ერთმანეთს.",
      "თითოეული მოთამაშე გადაატარებს თითს, რათა ნახოს საიდუმლო სიტყვა — გარდა ერთი ადამიანისა, რომელიც ნახავს „ჯაშუშს“ (Imposter).",
      "ერთმანეთის მიყოლებით, მოთამაშეები ამბობენ საიდუმლო სიტყვასთან დაკავშირებულ სიტყვას.",
      "თაღლითმა უნდა მოატყუოს და შეეცადოს შეერწყას სხვებს სიტყვის ცოდნის გარეშე.",
      "გააგრძელეთ მინიშნებების მიცემა და საუბარი, სანამ ვინმე არ იფიქრებს, რომ მიხვდა.",
      "როდესაც მზად იქნებით, ხმა მიეცით იმას, ვინც თქვენი აზრით, თაღლითია — შემდეგ შეეხეთ სიმართლის გამოსავლენად!"
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
          ForEach(appLanguage == .ka ? rulesEng.indices : rulesGeo.indices, id: \.self) { index in
            let rule = appLanguage == .ka ? rulesGeo[index] : rulesEng[index]
            
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
      
      BannerViewContainer(bannerType: .ruleBanner)
        .frame(maxWidth: .infinity)
        .frame(height: 50)
        .padding(.horizontal, 30)
    }
    .frame(maxWidth: .infinity, maxHeight: .infinity, alignment: .leading)
    .padding(20)
    .background(.mainBlack)
  }
}
