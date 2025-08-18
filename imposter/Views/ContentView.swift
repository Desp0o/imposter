//
//  ContentView.swift
//  imposter
//
//  Created by Tornike Despotashvili on 8/17/25.
//

import SwiftUI

struct ContentView: View {
  @AppStorage("isOnboardingCompleted") var isOnboardingCompleted: Bool = false
  @State private var locale: Locale = .current

    var body: some View {
      if isOnboardingCompleted {
        Tabbar()
      } else {
        OnBoarding()
      }
    }
}

#Preview {
  ContentView()
}


