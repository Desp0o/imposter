//
//  Text+Modifier.swift
//  imposter
//
//  Created by Tornike Despotashvili on 8/18/25.
//


import SwiftUI

extension Text {
  func customFontSytle(color: Color = .mainWhite, weight: Font.Weight = .regular, size: CGFloat = 16) -> some View {
    self
      .foregroundStyle(color)
      .monospaced()
      .fontWeight(weight)
      .font(.system(size: size))
  }
  
  func buttonFilled(color: Color = .mainWhite, weight: Font.Weight = .bold, size: CGFloat = 16) -> some View {
    self
      .foregroundStyle(.mainWhite)
      .monospaced()
      .fontWeight(weight)
      .font(.system(size: size))
      .padding()
      .frame(maxWidth: .infinity)
      .frame(height: 42)
      .background(color)
      .clipShape(RoundedRectangle(cornerRadius: 8))
  }
}
