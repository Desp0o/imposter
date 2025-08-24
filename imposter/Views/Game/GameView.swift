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
  @State private var isRevealed: Bool = false
  
  var body: some View {
    ZStack {
      CardUndercover(randomWord: $randomWord, curretnRole: $curretnRole, roles: $roles)
      
      RoleCards(curretnRole: $curretnRole, isRevealed: $isRevealed, roles: $roles)
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











