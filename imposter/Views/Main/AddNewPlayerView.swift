//
//  AddNewPlayerView.swift
//  imposter
//
//  Created by Tornike Despotashvili on 8/18/25.
//


import SwiftUI
import StackWrapper

struct AddNewPlayerView: View {
  @Binding var playersData: [String]
  @Binding var newPlayer: String
  @Binding var isPlayersAddSheetVisible: Bool
  
  var body: some View {
    VStack {
      VStack(spacing: 30) {
        VStack {
          Text("Edit Players")
            .customFontSytle(weight: .semibold, size: 24)
          Text("3-20 players")
            .customFontSytle(color: .mainWhite.opacity(0.7), weight: .semibold, size: 16)
          Divider()
        }
        
        Hwrapper(items: playersData) { player in
          HStack(spacing: 12) {
            Text(player)
              .customFontSytle()
            
            Image(systemName: "xmark")
              .resizable()
              .scaledToFit()
              .frame(width: 12, height: 12)
              .foregroundStyle(.red)
          }
          .padding(8)
          .background(.mainGray)
          .clipShape(RoundedRectangle(cornerRadius: 8))
          .onTapGesture {
            if let index = playersData.firstIndex(of: player) {
              playersData.remove(at: index)
            }
          }
        }
      }
      
      Spacer()
      
      VStack(spacing: 12) {
        TextField("add player", text: $newPlayer, prompt: Text("Enter player name").foregroundStyle(.mainWhite.opacity(0.5)))
          .padding(.horizontal, 10)
          .padding(.trailing, 40)
          .frame(maxWidth: .infinity)
          .frame(height: 48)
          .foregroundStyle(.mainWhite)
          .clipShape(RoundedRectangle(cornerRadius: 8))
          .overlay {
            RoundedRectangle(cornerRadius: 8)
              .stroke(.mainGray, lineWidth: 1)
          }
          .overlay {
            HStack {
              Spacer()
              
              Button {
                if !playersData.contains(newPlayer) && !newPlayer.isEmpty {
                  playersData.append(newPlayer)
                  newPlayer = ""
                }
              } label: {
                Image(systemName: "plus.square.fill")
                  .resizable()
                  .scaledToFit()
                  .frame(width: 30, height: 30)
                  .foregroundStyle(.mainPink)
                  .offset(x: -10)
              }
              .disabled(playersData.contains(newPlayer) || newPlayer.isEmpty)
              .grayscale(playersData.contains(newPlayer) || newPlayer.isEmpty ? 1 : 0)
            }
          }
          .onSubmit {
            if !playersData.contains(newPlayer) && !newPlayer.isEmpty {
              playersData.append(newPlayer)
              newPlayer = ""
            }
          }
        
        Button {
          isPlayersAddSheetVisible = false
        } label: {
          Text("Confirm")
            .customFontSytle(color: .mainPink, weight: .bold)
            .textCase(.uppercase)
            .frame(maxWidth: .infinity, maxHeight: 48)
            .overlay {
              RoundedRectangle(cornerRadius: 8)
                .stroke(.mainGray, lineWidth: 1)
            }
        }
      }
    }
    .frame(maxWidth: .infinity, maxHeight: .infinity)
    .padding(.horizontal, 30)
    .padding(.vertical, 40)
    .background(.mainBlack)
  }
}
