//
//  OnBoarding.swift
//  imposter
//
//  Created by Tornike Despotashvili on 8/17/25.
//

import SwiftUI

struct OnBoarding: View {
  @AppStorage("isOnboardingCompleted") var isOnboardingCompleted: Bool = false
  
  var body: some View {
      TabView {
        Text("123")
        
        Button {
          isOnboardingCompleted = true
        } label: {
          Text("completed")
        }
      }
      .tabViewStyle(.page)
    }
}

#Preview {
    OnBoarding()
}
