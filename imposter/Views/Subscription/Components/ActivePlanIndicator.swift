//
//  ActivePlanIndicator.swift
//  imposter
//
//  Created by Tornike Despotashvili on 8/28/25.
//


import SwiftUI

struct ActivePlanIndicator: View {
  var body: some View {
    HStack {
      Text("⭐️ YOUR PLAN")
        .customFontSytle(color: .mainRed, weight: .semibold, size: 12)
        .padding(.vertical, 3)
        .padding(.horizontal, 5)
        .background(
          RoundedRectangle(cornerRadius: 6)
            .fill(.mainBlack)
        )
      
      Spacer()
    }
  }
}
