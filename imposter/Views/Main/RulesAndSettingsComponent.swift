//
//  RulesAndSettingsComponent.swift
//  imposter
//
//  Created by Tornike Despotashvili on 8/23/25.
//


import SwiftUI

struct RulesAndSettingsComponent: View {
  @Binding var isRulesSheetVisible: Bool
  
  var body: some View {
    HStack {
      Button {
        isRulesSheetVisible = true
      } label: {
        Image(systemName: IconsEnum.book.rawValue)
          .resizable()
          .scaledToFit()
          .frame(width: 24, height: 24)
          .foregroundStyle(.mainPink)
          .padding(.vertical)
          .padding(.trailing, 10)
      }
      
      Spacer()
      
      Button {
        
      } label: {
        Image(systemName: IconsEnum.gearshape.rawValue)
          .resizable()
          .scaledToFit()
          .frame(width: 24, height: 24)
          .foregroundStyle(.mainPink)
          .padding(.vertical)
          .padding(.trailing, 10)
      }
    }
  }
}