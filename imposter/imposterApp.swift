//
//  imposterApp.swift
//  imposter
//
//  Created by Tornike Despotashvili on 8/17/25.
//

import SwiftUI

@main
struct imposterApp: App {
  @AppStorage("appLanguage") private var appLanguage: LanguageEnum = .ka
  @State private var gameManager = GameManager()
  
  var body: some Scene {
    WindowGroup {
      Main()
        .background(.mainBlack)
        .environment(\.locale, Locale(identifier: appLanguage.rawValue))
        .environment(gameManager)
    }
  }
}
