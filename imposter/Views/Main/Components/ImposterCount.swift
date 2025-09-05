//
//  ImposterCount.swift
//  imposter
//
//  Created by Tornike Despotashvili on 8/23/25.
//


import SwiftUI

struct ImposterCount: View {
  @Environment(GameManager.self) private var gameManager
  @Binding var isImposterAddSheetVisible: Bool
  
  var imposterPossibleCount: Int {
    switch gameManager.localsQuantity {
    case 3...5:
      return 1
    case 6...7:
      return 2
    case 8...10:
      return 3
    default:
      return 1
    }
  }
  
  var body: some View {
    VStack {
      Picker("players quantity", selection: Binding(
        get: { gameManager.impostersQuantity},
        set: { gameManager.impostersQuantity = $0 }
      ))
      {
        ForEach(1...imposterPossibleCount, id: \.self) { num in
          Text("\(num)")
            .customFontSytle(color: .mainRed, weight: .bold, size: 24)
        }
      }
      .pickerStyle(.wheel)
      .frame(maxWidth: .infinity, maxHeight: .infinity)
      
      Button {
        isImposterAddSheetVisible = false
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
  }
}
