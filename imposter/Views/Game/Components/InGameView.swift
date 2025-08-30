//
//  InGameView.swift
//  imposter
//
//  Created by Tornike Despotashvili on 8/25/25.
//

import SwiftUI

struct InGameView: View  {
  @AppStorage(AppStorageEnum.language.rawValue) private var appLanguage: LanguageEnum = .ka
  @AppStorage(AppStorageEnum.sub.rawValue) private var activeSubscribe: String?

  @Environment(GameManager.self) private var gameManager
  @Environment(\.dismiss) private var dismiss
  
  @Binding var roles: [Role]?
  @State private var whoStarts: Int? = nil
  @State private var timeRemaining: Int = 0
  @State private var isGameOver: Bool = false
  @State private var impostersWithIndices: [(index: Int, role: Role)] = []
  @State private var revealWhithManually: Bool = false
  
  @Binding var randomWord: WordModel?
  
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
      .if(activeSubscribe == nil) { view in
        view.padding(.top, 40)
      }
      .padding(.trailing, 10)
      
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
      
      switch gameManager.isTimeLimitEnabled {
      case true:
        GameOverWhenTimeIsEnabled(
          isGameOver: $isGameOver,
          timeRemaining: $timeRemaining,
          randomWord: $randomWord,
          impostersWithIndices: $impostersWithIndices
        )
      case false:
        VStack(spacing: 40) {
          switch revealWhithManually {
          case false:
            Button {
              revealWhithManually = true
            } label: {
              Text("Reveal imposter & word")
                .customFontSytle(color: .mainGray, weight: .semibold, size: 16)
                .padding(.vertical, 10)
                .padding(.horizontal, 20)
                .background(
                  RoundedRectangle(cornerRadius: 12)
                    .fill(.clear)
                    .stroke(.mainGray, lineWidth: 1)
                )
            }
          case true:
            RevealedRolesAndWord(randomWord: $randomWord, impostersWithIndices: $impostersWithIndices)
            
            NewGameButton()
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
      
      if let roles {
        impostersWithIndices = roles
          .enumerated()
          .filter { $0.element == .imposter }
          .map { (index: $0.offset, role: $0.element) }
      }
    }
  }
}
