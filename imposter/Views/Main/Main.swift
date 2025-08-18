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
  @State private var newPlayer: String = ""
  @AppStorage("playersNames") private var playersString: String = "Player 1,Player2,Player3"
  
  @State private var playersData: [String] = []
  
  var body: some View {
    VStack(spacing: 40) {
      Text("Imposter")
        .customFontSytle(color: .mainGray, weight: .black, size: 40)
      
      VStack(alignment: .leading, spacing: 20) {
        Text("🎮 Players")
          .customFontSytle(weight: .bold)
        
        Hwrapper(items: playersData) { player in
          Text(player)
            .customFontSytle()
            .padding(8)
            .background(.mainBlack)
            .clipShape(RoundedRectangle(cornerRadius: 8))
        }
        
        
      }
      .padding()
      .padding(.top, 6)
      .frame(maxWidth: .infinity, alignment: .leading)
      .background(.mainGray)
      .clipShape(RoundedRectangle(cornerRadius: 8))
      .overlay {
        RoundedRectangle(cornerRadius: 12).stroke(.mainPink, lineWidth: 1)
      }
      .shadow(color: .black.opacity(0.4), radius: 5, x: 0, y: 5)
      .onTapGesture {
        isPlayersAddSheetVisible = true
      }
    }
    .onAppear {
      playersData = playersString.components(separatedBy: ",")
    }
    .frame(maxWidth: .infinity, maxHeight: .infinity, alignment: .top)
    .padding()
    .background(.mainBlack)
    .sheet(isPresented: $isPlayersAddSheetVisible, onDismiss: {
      playersString = playersData.joined(separator: ",")
    }) {
      AddNewPlayerView(
        playersData: $playersData,
        newPlayer: $newPlayer,
        isPlayersAddSheetVisible: $isPlayersAddSheetVisible
      )
    }
    .toolbar(.hidden, for: .tabBar)
  }
  
}

#Preview {
  Main()
}


