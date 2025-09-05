//
//  SubscriptionPrivacyPolicy.swift
//  imposter
//
//  Created by Tornike Despotashvili on 8/28/25.
//


import SwiftUI

struct SubscriptionPrivacyPolicy: View {
  @State private var isTermsVisible: Bool = false
  @State private var isPrivacyVisible: Bool = false
  
  var body: some View {
    HStack {
      Button {
        isTermsVisible = true
      } label: {
        Text("Terms of Service")
          .customFontSytle(color: .mainRed, size: 12)
      }
      
      Text("and")
        .customFontSytle(color: .gray, size: 12)
      
      Button {
        isPrivacyVisible = true
      } label: {
        Text("Privacy Policy")
          .customFontSytle(color: .mainRed, size: 12)
      }
    }
    .sheet(isPresented: $isTermsVisible) {
      TermsofService()
    }
    .sheet(isPresented: $isPrivacyVisible) {
      PrivacyPolicyView()
    }
  }
}
