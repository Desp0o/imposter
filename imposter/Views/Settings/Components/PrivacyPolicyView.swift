//
//  PrivacyPolicyView.swift
//  imposter
//
//  Created by Tornike Despotashvili on 8/30/25.
//


import SwiftUI

struct PrivacyPolicyView: View {
  var body: some View {
    ScrollView {
      VStack(spacing: 20) {
        Text("Pricacy Policy")
          .customFontSytle(color: .mainWhite, weight: .bold, size: 20)
        
        Text(SettingsEnum.privacyPolicyText.rawValue)
          .customFontSytle()
      }
      .frame(maxWidth: .infinity, maxHeight: .infinity)
      .padding()
    }
    .scrollIndicators(.hidden)
    .background(.mainBlack)
  }
}