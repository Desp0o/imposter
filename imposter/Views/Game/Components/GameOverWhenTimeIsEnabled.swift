//
//  GameOverWhenTimeIsEnabled.swift
//  imposter
//
//  Created by Tornike Despotashvili on 8/25/25.
//


import SwiftUI

struct GameOverWhenTimeIsEnabled: View {
  @AppStorage("currentSubscribe") private var activeSubscribe: String?

  @State private var isLastSeconds: Bool = false
  
  @Binding var isGameOver: Bool
  @Binding var timeRemaining: Int
  @Binding var randomWord: WordModel?
  @Binding var impostersWithIndices: [(index: Int, role: Role)]
  
  let timer = Timer.publish(every: 1, on: .main, in: .common).autoconnect()
  
  var body: some View {
    VStack(spacing: 30) {
      switch isGameOver {
      case false:
        Text(timeString(from: timeRemaining))
          .customFontSytle(color: isLastSeconds ? .red : .mainWhite, weight: .bold, size: 50)
          .font(.largeTitle)
          .onReceive(timer) { _ in
            if timeRemaining <= 10 {
              isLastSeconds = true
            }
            
            if timeRemaining > 0 {
              timeRemaining -= 1
            } else {
              isGameOver = true
            }
          }
      case true:
        VStack(spacing: 30) {
          Text("Game Over")
            .customFontSytle(color: .red, weight: .bold, size: 50)
          
          RevealedRolesAndWord(randomWord: $randomWord, impostersWithIndices: $impostersWithIndices)
          
          NewGameButton()
        }
      }
      
      if activeSubscribe == nil {
        BannerViewContainer(bannerType: .inGameBanner)
          .frame(maxWidth: .infinity)
          .frame(height: 100)
          .padding(.horizontal, 30)
      }
    }
  }
}

extension GameOverWhenTimeIsEnabled {
  private func timeString(from seconds: Int) -> String {
    let minutes = seconds / 60
    let seconds = seconds % 60
    return String(format: "%d:%02d", minutes, seconds)
  }
}


