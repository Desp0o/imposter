//
//  View+Modifier.swift
//  imposter
//
//  Created by Tornike Despotashvili on 8/18/25.
//

import SwiftUI

extension View {
  func gameSettingsComponent(action: @escaping () -> Void) -> some View {
    self
    .padding()
    .frame(maxWidth: .infinity, alignment: .leading)
    .background(.mainGray)
    .clipShape(RoundedRectangle(cornerRadius: 8))
    .overlay {
      RoundedRectangle(cornerRadius: 12).stroke(.mainPink, lineWidth: 1)
    }
    .shadow(color: .black.opacity(0.4), radius: 5, x: 0, y: 5)
    .onTapGesture {
      action()
    }
  }
}

extension View {
  func componetnTextBackground() -> some View {
    self
    .padding(8)
    .background(.mainBlack)
    .clipShape(RoundedRectangle(cornerRadius: 8))
  }
}
