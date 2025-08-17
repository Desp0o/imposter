//
//  ContentView.swift
//  imposter
//
//  Created by Tornike Despotashvili on 8/17/25.
//

import SwiftUI

struct ContentView: View {
  @AppStorage("isOnboardingCompleted") var isOnboardingCompleted: Bool = false

    var body: some View {
      if isOnboardingCompleted {
        Main()
      } else {
        OnBoarding()
      }
    }
}

#Preview {
  ContentView()
}


struct Main: View {
  var body: some View {
    Text("hello")
  }
}
