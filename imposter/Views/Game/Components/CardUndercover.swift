//
//  CardUndercover.swift
//  imposter
//
//  Created by Tornike Despotashvili on 8/24/25.
//


import SwiftUI

struct CardUndercover: View {
  @AppStorage(AppStorageEnum.language.rawValue) private var appLanguage: LanguageEnum = .en
  @Environment(GameManager.self) private var gameManager
  
  @Binding var randomWord: WordModel?
  @Binding var curretnRole: Int
  @Binding var roles: [Role]?
  
  var body: some View {
    VStack {
      Spacer()
      
      if let roles {
        let role = roles[curretnRole].rawValue
        
        if role != "Imposter" {
          if let randomWord {
            Text(appLanguage == .ka ? randomWord.geo : randomWord.eng)
              .customFontSytle(color: .mainWhite, weight: .bold, size: 26)
          }
        } else {
          VStack(spacing: 10) {
            Text("\(roles[curretnRole].rawValue)")
              .customFontSytle(color: .mainBlack, weight: .bold, size: 26)
            
            if gameManager.isHintEnabled {
              Text("\(appLanguage == .ka ? "მინიშნება" : "Hint"):  \(appLanguage == .ka ? randomWord?.geoHint ?? "" : randomWord?.eng ?? "")")
                .customFontSytle(color: .mainWhite.opacity(0.8), weight: .semibold, size: 18)
            }
          }
        }
      }
    }
    .frame(maxWidth: .infinity, maxHeight: .infinity)
    .padding()
    .padding(.bottom, 50)
    .background(roles?[curretnRole].rawValue == "Imposter" ? .mainRed : .mainGray)
  }
}
