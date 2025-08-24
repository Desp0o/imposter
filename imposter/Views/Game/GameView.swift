//
//  GameView.swift
//  imposter
//
//  Created by Tornike Despotashvili on 8/23/25.
//

import SwiftUI

struct GameView: View {
  @Environment(GameManager.self) private var gameManager
  
  @State private var randomWord: WordModel? = nil
  @State private var roles: [Role]? = nil
  @State private var curretnRole: Int = 0
  @State private var isAssigned: Bool = false
  @State private var isGameStarted: Bool = false
  
  var body: some View {
    ZStack {
      switch isGameStarted {
      case true:
        InGameView(roles: $roles)
      case false:
        CardUndercover(randomWord: $randomWord, curretnRole: $curretnRole, roles: $roles)
        
        RoleCards(curretnRole: $curretnRole, isAssigned: $isAssigned, roles: $roles, isGameStarted: $isGameStarted)
      }
    }
    .frame(maxWidth: .infinity, maxHeight: .infinity)
    .background(.mainBlack)
    .onAppear {
      randomWord = gameManager.generateRandomWord()
      roles = gameManager.assignRoles()
    }
  }
}

#Preview {
  GameView()
    .environment(GameManager())
}











struct InGameView: View  {
  @Environment(GameManager.self) private var gameManager
  @Environment(\.dismiss) private var dismiss
  
  @Binding var roles: [Role]?
  @State private var whoStarts: Int? = nil
  @State private var timeRemaining: Int = 0
  @State private var isLastSeconds: Bool = false
  
  let timer = Timer.publish(every: 1, on: .main, in: .common).autoconnect()
  
  var body: some View {
    VStack(spacing: 30) {
      HStack {
        Spacer()
        
        Button {
          dismiss()
        } label: {
          Image(systemName: IconsEnum.xmark.rawValue)
            .resizable()
            .scaledToFit()
            .frame(width: 20, height: 20)
            .foregroundStyle(.mainGray)
        }
      }
      
      Text("IMPOSTER")
        .customFontSytle(color: .mainGray, weight: .black, size: 42)
      
      VStack(spacing: 10) {
        Text("Game started!")
          .customFontSytle(color: .mainWhite, weight: .bold, size: 20)
        
        Text("Time to talk and catch the imposter!")
          .customFontSytle(color: .mainWhite, weight: .bold, size: 16)
          .multilineTextAlignment(.center)
      }
      
      if let whoStarts {
        HStack {
          Text("Player \(whoStarts)")
            .customFontSytle(color: .mainBlack, weight: .semibold)
            .padding(.vertical, 2)
            .padding(.horizontal, 5)
            .background(
              RoundedRectangle(cornerRadius: 6)
                .fill(.mainPink)
            )
          
          Text("starts the conversation")
            .customFontSytle(color: .mainWhite, weight: .regular)
        }
      }
      
      if gameManager.isTimeLimitEnabled {
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
              print("game over")
            }
          }
      }
      
    }
    .frame(maxWidth: .infinity, maxHeight: .infinity, alignment: .top)
    .padding()
    .onAppear {
      timeRemaining = gameManager.timeAmount * 60
      if let (index, _) = roles?
        .enumerated()
        .filter({ $0.element != .imposter })
        .randomElement()
      {
        whoStarts = index + 1
      }
    }
  }
}

extension InGameView {
  private func timeString(from seconds: Int) -> String {
    let minutes = seconds / 60
    let seconds = seconds % 60
    return String(format: "%d:%02d", minutes, seconds)
  }
}
