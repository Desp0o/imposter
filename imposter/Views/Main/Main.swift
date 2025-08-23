//
//  Main.swift
//  imposter
//
//  Created by Tornike Despotashvili on 8/18/25.
//


import SwiftUI
import StackWrapper

struct Main: View {
  @State private var isLocalsAddSheetVisible: Bool = false
  @State private var isImposterAddSheetVisible: Bool = false
  @State private var isRulesSheetVisible: Bool = false
  @State private var isTimeLimitEnabled: Bool = false
  @State private var isTimeSheetVisible: Bool = false
  
  @State private var localsQuantity: Int = 3
  @State private var impostersQuantity: Int = 1
  @State private var timeAmount: Int = 3
  
  var body: some View {
    ZStack(alignment: .top) {
      RulesAndSettingsComponent(isRulesSheetVisible: $isRulesSheetVisible)
        .sheet(isPresented: $isRulesSheetVisible) {
          RulesView(isRulesSheetVisible: $isRulesSheetVisible)
        }
      
      VStack(spacing: 20) {
        Text("Imposter")
          .customFontSytle(color: .mainGray, weight: .black, size: 42)
        
        Spacer().frame(height: 10)
        
        // MARK: - locals
        VStack(alignment: .leading, spacing: 20) {
          Text("🎮 Players")
            .customFontSytle(weight: .bold)
          
          HStack {
            Text("\(localsQuantity)")
              .customFontSytle()
            
            Text("Players")
              .customFontSytle()
          }
          .padding(8)
          .background(.mainBlack)
          .clipShape(RoundedRectangle(cornerRadius: 8))
        }
        .gameSettingsComponent {
          isLocalsAddSheetVisible = true
        }
        
        // MARK: - imposter
        VStack(alignment: .leading, spacing: 20) {
          Text("🥷🏿 Imposters")
            .customFontSytle(weight: .bold)
          
          HStack {
            Text("\(impostersQuantity)")
              .customFontSytle()
            
            Text(impostersQuantity > 1 ?  "Imposters" : "Imposter")
              .customFontSytle()
          }
          .padding(8)
          .background(.mainBlack)
          .clipShape(RoundedRectangle(cornerRadius: 8))
        }
        .gameSettingsComponent {
          isImposterAddSheetVisible = true
        }
       
        
        // MARK: - time limit
        VStack(alignment: .leading, spacing: 20) {
          TogglerCustomComponent(title: "⏰ Time Limit", value: $isTimeLimitEnabled)
          
          if isTimeLimitEnabled {
            HStack {
              Text("\(timeAmount)")
                .customFontSytle()
              
              Text("Minutes")
                .customFontSytle()
            }
            .padding(8)
            .background(.mainBlack)
            .clipShape(RoundedRectangle(cornerRadius: 8))
          } else {
            Text("Disabled")
              .customFontSytle()
              .padding(8)
              .background(.mainBlack)
              .clipShape(RoundedRectangle(cornerRadius: 8))
          }
        }
        .gameSettingsComponent {
          if isTimeLimitEnabled {
            isTimeSheetVisible = true
          }
        }
        
        
        
      }
      .sheet(isPresented: $isLocalsAddSheetVisible) {
        LocalsCount(
          localsQuantity: $localsQuantity,
          isLocalsAddSheetVisible: $isLocalsAddSheetVisible
        )
      }
      .sheet(isPresented: $isImposterAddSheetVisible) {
        ImposterCount(isImposterAddSheetVisible: $isImposterAddSheetVisible, impostersQuantity: $impostersQuantity, localsQuantity: $localsQuantity)
      }
      .sheet(isPresented: $isTimeSheetVisible) {
        TimeSetup(timeAmount: $timeAmount, isTimeSheetVisible: $isTimeSheetVisible)
      }
      .toolbar(.hidden, for: .tabBar)
    }
    .frame(maxWidth: .infinity, maxHeight: .infinity, alignment: .top)
    .padding()
    .background(.mainBlack)
  }
  
}

#Preview {
  Main()
}


struct TogglerCustomComponent: View {
  let title: String
  @Binding var value: Bool
  
  var body: some View {
    HStack {
      Text(title)
        .customFontSytle(weight: .bold)
      
    Toggle("", isOn: $value)
        .tint(.mainPink)
    }
  }
}
