//
//  Main.swift
//  imposter
//
//  Created by Tornike Despotashvili on 8/18/25.
//


import SwiftUI
import StackWrapper

struct Main: View {
  @State private var isPlayersAddSheetVisible: Bool = false
  @State private var playersQuantity: Int = 3
  @State private var impostersQuantity: Int = 1
  
  @State private var playersData: [String] = []
  
  var body: some View {
    VStack(spacing: 20) {
      Text("Imposter")
        .customFontSytle(color: .mainGray, weight: .black, size: 42)
      
      Spacer().frame(height: 10)
      
      // MARK: - players
      VStack(alignment: .leading, spacing: 20) {
        Text("🎮 Players")
          .customFontSytle(weight: .bold)
        
        HStack {
          Text("\(playersQuantity)")
            .customFontSytle()
          
          Text("Players")
            .customFontSytle()
        }
        .padding(8)
        .background(.mainBlack)
        .clipShape(RoundedRectangle(cornerRadius: 8))
      }
      .gameSettingsComponent {
        isPlayersAddSheetVisible = true
      }
      
      // MARK: - imposter
      VStack {
        Text("🥷🏿 Imposters")
          .customFontSytle(weight: .bold)
        
        HStack {
          Text("\(impostersQuantity)")
            .customFontSytle()
          
          Text(impostersQuantity > 1 ?  "Imposters" : "Imposter")
            .customFontSytle()
        }
        .padding(8)
        .background(.mainBlack)
        .clipShape(RoundedRectangle(cornerRadius: 8))
      }
      .gameSettingsComponent {
        
      }
      
    }
    .frame(maxWidth: .infinity, maxHeight: .infinity, alignment: .top)
    .padding()
    .background(.mainBlack)
    .sheet(isPresented: $isPlayersAddSheetVisible) {
      VStack {
        Picker("players quantity", selection: $playersQuantity) {
          ForEach(3...32, id: \.self) { num in
            Text("\(num)")
              .customFontSytle(color: .mainPink, weight: .bold, size: 24)
          }
        }
        .pickerStyle(.wheel)
        .frame(maxWidth: .infinity, maxHeight: .infinity)
        
        
        Button {
          isPlayersAddSheetVisible = false
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
    .toolbar(.hidden, for: .tabBar)
  }
  
}

#Preview {
  Main()
}


