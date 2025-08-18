//
//  Tabbar.swift
//  imposter
//
//  Created by Tornike Despotashvili on 8/17/25.
//

import SwiftUI

struct Tabbar: View {
  
  init() {
    let appearance = UITabBarAppearance()
    appearance.configureWithDefaultBackground()
    appearance.backgroundEffect = UIBlurEffect(style: .systemUltraThinMaterialDark)
    appearance.backgroundColor = UIColor.clear
    
    UITabBar.appearance().standardAppearance = appearance
    if #available(iOS 15.0, *) {
      UITabBar.appearance().scrollEdgeAppearance = appearance
    }
  }
  
  var body: some View {
    TabView {
      Main()
        .tabItem {
          Image(systemName: IconsEnum.gamecontroller.rawValue)
          Text("თამაში")
        }
      
      Main()
        .tabItem {
          Image(systemName: IconsEnum.storefront.rawValue)
          Text("მაღაზია")
        }
      
      Main()
        .tabItem {
          Image(systemName: IconsEnum.shippingbox.rawValue)
          Text("პაკეტები")
        }
      
      Main()
        .tabItem {
          Image(systemName: IconsEnum.settings.rawValue)
          Text("პარამეტრები")
        }
    }
    .tint(.mainPink)
  }
}

#Preview {
  Tabbar()
}

