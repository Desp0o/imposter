//
//  LocalsCount.swift
//  imposter
//
//  Created by Tornike Despotashvili on 8/23/25.
//

import SwiftUI

struct LocalsCount: View {
  @Environment(GameManager.self) private var gameManager
  @Binding var isLocalsAddSheetVisible: Bool
  
  var body: some View {
    VStack {
      Picker("players quantity", selection: Binding(
        get: { gameManager.localsQuantity },
        set: { gameManager.localsQuantity = $0 }
      )) {
        ForEach(3...10, id: \.self) { num in
          Text("\(num)")
            .customFontSytle(color: .mainRed, weight: .bold, size: 24)
        }
      }
      .pickerStyle(.wheel)
      .frame(maxWidth: .infinity, maxHeight: .infinity)
      
      Button {
        isLocalsAddSheetVisible = false
      } label: {
        Text("Confirm")
          .customFontSytle(color: .mainRed, weight: .bold)
          .textCase(.uppercase)
          .frame(maxWidth: .infinity, maxHeight: 48)
          .overlay {
            RoundedRectangle(cornerRadius: 12)
              .stroke(.mainGray, lineWidth: 1)
          }
      }
    }
    .presentationDetents([.fraction(0.35)])
    .padding()
    .background(.mainBlack)
    .onChange(of: gameManager.localsQuantity) { _, newValue in
      switch newValue {
      case 3...5:
        if gameManager.impostersQuantity > 1 {
          return gameManager.impostersQuantity = 1
        }
      case 6...7:
        if gameManager.impostersQuantity > 2 {
          return gameManager.impostersQuantity = 2
        }
      default:
        return gameManager.impostersQuantity = 1
      }
    }
  }
}
