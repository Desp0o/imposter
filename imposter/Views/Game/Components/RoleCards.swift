//
//  RoleCards.swift
//  imposter
//
//  Created by Tornike Despotashvili on 8/24/25.
//


import SwiftUI

struct RoleCards: View {
  @AppStorage(AppStorageEnum.sub.rawValue) private var activeSubscribe: String?
  
  @Environment(\.dismiss) private var dismiss
  @Environment(GameManager.self) private var gameManager
  
  @State private var offset: CGSize = .zero
  
  @Binding var curretnRole: Int
  @Binding var isAssigned: Bool
  @Binding var roles: [Role]?
  @Binding var isGameStarted: Bool
  
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
      if isAssigned {
        Button {
          setupRoles()
        } label: {
          Text(curretnRole == (roles?.count ?? 0) - 1 ? "Play" : "Next Player")
            .customFontSytle()
            .padding()
            .padding(.horizontal, 60)
            .background(
              RoundedRectangle(cornerRadius: 12)
                .fill(.mainBlack)
            )
        }
        .offset(y: -200)
      } else {
        VStack(spacing: 10) {
          Image(systemName: IconsEnum.arrowUp.rawValue)
            .foregroundStyle(.mainBlack)
          
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
              offset.height = max(value.translation.height, -150)
              print(offset.height)
            }
          }
        }
        .onEnded { _ in
          if offset.height <= -100 {
            withAnimation(.spring(response: 0.3, dampingFraction: 0.75, blendDuration: 0.3)) {
              isAssigned = true
              offset = .zero
            }
          } else {
            withAnimation(.spring(response: 0.3, dampingFraction: 0.75, blendDuration: 0.3)) {
              offset = .zero
            }
          }
        }
    )
    .if(activeSubscribe == nil) { view in
      view.overlay {
        AdView(isMain: true, bannerId: .cardsBottomBanner)
      }
    }
    .overlay(alignment: .top) {
      HStack {
        Button {
          dismiss()
        } label: {
          Image(systemName: IconsEnum.arrowLeft.rawValue)
            .padding(.horizontal, 30)
            .padding(.vertical, 20)
            .foregroundStyle(.mainBlack)
        }
        
        Spacer()
      }
      .if(activeSubscribe == nil) { view in
        view.padding(.top, 40)
      }
    }
  }
}

extension RoleCards {
  func setupRoles() {
    guard let roles else { return }
    if curretnRole < roles.count - 1 {
      curretnRole += 1
      
      withAnimation(.smooth(duration: 0.1)) {
        isAssigned = false
      }
    } else {
      isGameStarted = true
    }
  }
}
