//
//  LanguageChangeView.swift
//  imposter
//
//  Created by Tornike Despotashvili on 8/30/25.
//


import SwiftUI

struct LanguageChangeView: View {
  @AppStorage(AppStorageEnum.language.rawValue) private var appLanguage: LanguageEnum = .ka
  
  var body: some View {
    VStack {
      Picker("Language selector", selection: $appLanguage) {
        ForEach(LanguageEnum.allCases) { lang in
          Text(lang.displayName).tag(lang)
            .foregroundStyle(.mainWhite)
        }
      }
      .pickerStyle(.wheel)
    }
    .presentationDetents([.fraction(0.3)])
    .frame(maxWidth: .infinity, maxHeight: .infinity)
    .background(.mainBlack)
  }
}
