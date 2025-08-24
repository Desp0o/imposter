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
  @State private var offset: CGSize = .zero
  
  @State private var isRevealed: Bool = false
  
  var body: some View {
    ZStack {
      
      VStack {
        Spacer()
        
        if let roles {
          let role = roles[curretnRole].rawValue
          
          if role != "Imposter" {
            Text("\(randomWord?.geo ?? "")")
              .customFontSytle(color: .mainWhite, weight: .bold, size: 26)
          } else {
            VStack {
              Text("\(roles[curretnRole].rawValue)")
                .customFontSytle(color: .red, weight: .bold, size: 26)
              
              if gameManager.isHintEnabled {
                Text("Hint: \(randomWord?.geoHint ?? "")")
                  .customFontSytle(color: .mainWhite.opacity(0.8), weight: .semibold, size: 18)
              }
            }
          }
          
        }
      }
      .padding()
      
      
      
      VStack(spacing: 20) {
        
        
        
        Text("Player \(curretnRole + 1)")
          .customFontSytle(color: .mainBlack, weight: .black, size: 24)
        
        Text("Do not tell the word to other players.")
          .customFontSytle(color: .mainBlack, weight: .thin, size: 16)
          .multilineTextAlignment(.center)
        
        Spacer().frame(height: 200)
        
        if isRevealed {
          Button("click") {
            setupRoles()
          }
        }
        
      }
      .frame(maxWidth: .infinity, maxHeight: .infinity)
      .padding()
      .background(.mainPink)
      .offset(y: offset.height)
      .gesture(
        DragGesture(minimumDistance: 0)
          .onChanged { value in
            if value.translation.height < 0 {
              withAnimation {
                offset.height = max(value.translation.height, -200)
                
                
              }
            }
          }
          .onEnded { _ in
            withAnimation(.spring(response: 0.3, dampingFraction: 0.75, blendDuration: 0.3)) {
              offset = .zero
            }
            
            withAnimation(.spring(response: 0.3, dampingFraction: 0.75, blendDuration: 0.3)) {
              isRevealed = true
            }
          }
      )
      
      
      
      
    }
    .frame(maxWidth: .infinity, maxHeight: .infinity)
    .background(.mainBlack)
    .onAppear {
      randomWord = gameManager.generateRandomWord()
      roles = gameManager.assignRoles()
    }
  }
}

extension GameView {
  func setupRoles() {
    guard let roles else { return }
    if curretnRole < roles.count - 1 {
      curretnRole += 1
      print(curretnRole)
      isRevealed = false
    }
  }
}

//#Preview {
//  GameView()
//    .environment(GameManager())
//}
