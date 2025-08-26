//
//  AdView.swift
//  imposter
//
//  Created by Tornike Despotashvili on 8/26/25.
//

import GoogleMobileAds
import SwiftUI

struct AdView: View {
  let isMain: Bool
  let bannerId: AdsEnum
  
  var body: some View {
    VStack {
      if isMain {
        Spacer()
      }
      
      BannerViewContainer(bannerType: bannerId)
        .frame(maxWidth: .infinity)
        .frame(height: 40)
      
      if !isMain {
        Spacer()
      }
    }
    .padding(.horizontal, 30)
  }
}
