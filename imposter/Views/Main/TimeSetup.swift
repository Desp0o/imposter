//
//  TimeSetup.swift
//  imposter
//
//  Created by Tornike Despotashvili on 8/23/25.
//


import SwiftUI

struct TimeSetup: View {
  @Environment(CategoryManager.self) private var catManager
  @Binding var isTimeSheetVisible: Bool
  
  var body: some View {
    VStack {
      Picker("time amount", selection: Binding(
        get: { catManager.timeAmount },
        set: { catManager.timeAmount = $0 }
      )) {
        ForEach(3...10, id: \.self) { num in
          Text("\(num)")
            .customFontSytle(color: .mainPink, weight: .bold, size: 24)
        }
      }
      .pickerStyle(.wheel)
      .frame(maxWidth: .infinity, maxHeight: .infinity)
      
      Button {
        isTimeSheetVisible = false
      } label: {
        Text("Confirm")
          .customFontSytle(color: .mainPink, weight: .bold)
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
