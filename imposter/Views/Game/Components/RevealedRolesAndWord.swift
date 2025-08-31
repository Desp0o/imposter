//
//  RevealedRolesAndWord.swift
//  imposter
//
//  Created by Tornike Despotashvili on 8/25/25.
//


import SwiftUI

struct RevealedRolesAndWord: View {
  @AppStorage(AppStorageEnum.language.rawValue) private var appLanguage: LanguageEnum = .en

  @Binding var randomWord: WordModel?
  @Binding var impostersWithIndices: [(index: Int, role: Role)]
  
  var body: some View {
    VStack {
      HStack(spacing: 0) {
        Text("Word: ")
          .customFontSytle(size: 18)
        
        if let randomWord {
          Text(appLanguage == .ka ? randomWord.geo : randomWord.eng)
            .customFontSytle(color: .mainBlack, size: 18)
            .padding(.horizontal, 5)
            .padding(.vertical, 3)
            .background(
              RoundedRectangle(cornerRadius: 6)
                .fill(.mainPink)
            )
        }
      }
      
      VStack(alignment: .leading) {
        ForEach(impostersWithIndices, id: \.index) { index, element in
          HStack(spacing: 0) {
            Text("Imposter: ")
              .customFontSytle()
            
            Text("Player \(index + 1)")
              .customFontSytle(color: .mainWhite, size: 18)
              .padding(.vertical, 3)
              .padding(.horizontal, 5)
              .background(
                RoundedRectangle(cornerRadius: 6)
                  .fill(.red)
              )
          }
        }
      }
      .frame(alignment: .leading)
    }
  }
}
