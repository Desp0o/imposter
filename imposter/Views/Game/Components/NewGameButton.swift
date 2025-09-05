//
//  NewGameButton.swift
//  imposter
//
//  Created by Tornike Despotashvili on 8/25/25.
//

import SwiftUI

struct NewGameButton: View {
  @Environment(\.dismiss) private var dismiss

  var body: some View {
    Button {
      dismiss()
    } label: {
      Text("New Game")
        .customFontSytle(color: .mainRed, weight: .bold, size: 20)
        .padding(.vertical, 10)
        .padding(.horizontal, 20)
        .background(
          RoundedRectangle(cornerRadius: 12)
            .fill(.clear)
            .stroke(.mainRed, lineWidth: 1)
        )
    }
  }
}
