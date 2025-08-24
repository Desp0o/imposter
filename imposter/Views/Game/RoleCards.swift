//
//  RoleCards.swift
//  imposter
//
//  Created by Tornike Despotashvili on 8/24/25.
//


import SwiftUI

struct RoleCards: View {
  @Environment(GameManager.self) private var gameManager
  
  @State private var offset: CGSize = .zero

  @Binding var curretnRole: Int
  @Binding var isRevealed: Bool
  @Binding var roles: [Role]?
  
  var body: some View {
    VStack(spacing: 20) {
      Text("Player \(curretnRole + 1)")
        .customFontSytle(color: .mainBlack, weight: .black, size: 24)
      
      Text("Do not tell the word to other players.")
        .customFontSytle(color: .mainBlack, weight: .thin, size: 16)
        .multilineTextAlignment(.center)
      
      Spacer().frame(height: 200)
    }
    .frame(maxWidth: .infinity, maxHeight: .infinity)
    .padding()
    .background(.mainPink)
    .overlay(alignment: .bottom) {
      if isRevealed {
        Button {
          setupRoles()
        } label: {
          Text(curretnRole == (roles?.count ?? 0) - 1 ? "Play" : "Next Player")
            .customFontSytle()
            .padding()
            .background(
              RoundedRectangle(cornerRadius: 12)
                .fill(.mainBlack)
            )
        }
        .offset(y: -100)
      } else {
        VStack(spacing: 10) {
          Image(systemName: IconsEnum.arrowUp.rawValue)
          
          Text("Slide up to reveal")
            .customFontSytle(color: .mainBlack)
        }
        .offset(y: -50)
      }
    }
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
}

extension RoleCards {
  func setupRoles() {
    guard let roles else { return }
    if curretnRole < roles.count - 1 {
      curretnRole += 1
      
      withAnimation(.smooth(duration: 0.1)) {
        isRevealed = false
      }
    }
  }
}
