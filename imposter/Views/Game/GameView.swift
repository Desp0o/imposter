//
//  GameView.swift
//  imposter
//
//  Created by Tornike Despotashvili on 8/23/25.
//

import SwiftUI

struct GameView: View {
  @Environment(CategoryManager.self) private var catManager

    var body: some View {
      VStack {
        Button("print") {
          print(catManager.categories[0].data.count)
        }
        
        Button("delete") {
          catManager.categories[0].data.remove(at: 0)
        }
      }
    }
}

#Preview {
    GameView()
}
