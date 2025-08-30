//
//  imposterApp.swift
//  imposter
//
//  Created by Tornike Despotashvili on 8/17/25.
//

import SwiftUI

@main
struct imposterApp: App {
  @AppStorage(AppStorageEnum.language.rawValue) private var appLanguage: LanguageEnum = .ka
  @AppStorage(AppStorageEnum.sub.rawValue) private var activeSubscription: String?

  @State private var gameManager = GameManager()
  
  init() {
    IAPManager.shared.listenForTransactions()
  }
  
  var body: some Scene {
    WindowGroup {
      Main()
        .background(.mainBlack)
        .environment(\.locale, Locale(identifier: appLanguage.rawValue))
        .environment(gameManager)
        .preferredColorScheme(.dark)
    }
  }
}
