//
//  SubscriptionPrivacyPolicy.swift
//  imposter
//
//  Created by Tornike Despotashvili on 8/28/25.
//


import SwiftUI

struct SubscriptionPrivacyPolicy: View {
  var body: some View {
    HStack {
      Button {
        
      } label: {
        Text("Terms of Service")
          .customFontSytle(color: .mainPink, size: 12)
      }
      
      Text("and")
        .customFontSytle(color: .gray, size: 12)
      
      Button {
        
      } label: {
        Text("Privacy Policy")
          .customFontSytle(color: .mainPink, size: 12)
      }
    }
  }
}