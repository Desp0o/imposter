//
//  SubscriptionCheckMark.swift
//  imposter
//
//  Created by Tornike Despotashvili on 8/28/25.
//


import SwiftUI

struct SubscriptionCheckMark: View {
  @Binding var isMonthlyActive: Bool
  
  var body: some View {
    ZStack {
      if isMonthlyActive {
        Circle().fill(Color.clear)
          .frame(width: 18, height: 18)
          .overlay {
            Circle().stroke(.mainWhite.opacity(0.6), lineWidth: 1)
          }
      } else {
        Image(systemName: IconsEnum.checkMark.rawValue)
          .foregroundStyle(.mainRed)
      }
    }
  }
}
