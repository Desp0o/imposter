//
//  TogglerCustomComponent.swift
//  imposter
//
//  Created by Tornike Despotashvili on 8/23/25.
//

import SwiftUI

struct TogglerCustomComponent: View {
  let title: String
  @Binding var value: Bool
  
  var body: some View {
    HStack {
      Text(title)
        .customFontSytle(weight: .bold)
      
      Spacer()
      
      Toggle("", isOn: $value)
        .tint(.mainPink)
        .frame(width: 70)
    }
  }
}
