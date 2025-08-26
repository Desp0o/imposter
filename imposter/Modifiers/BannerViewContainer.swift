//
//  BannerViewContainer.swift
//  imposter
//
//  Created by Tornike Despotashvili on 8/26/25.
//

//ca-app-pub-2568329825158793/2869892604

import SwiftUI
import GoogleMobileAds
import UIKit

struct BannerViewContainer: UIViewRepresentable {
  typealias UIViewType = BannerView
  
  let bannerType: AdsEnum
  
  func makeUIView(context: Context) -> BannerView {
    let banner = BannerView(frame: .zero)
    banner.adUnitID = bannerType.rawValue
    banner.load(Request())
    banner.delegate = context.coordinator
    return banner
  }
  
  func updateUIView(_ uiView: BannerView, context: Context) {}
  
  func makeCoordinator() -> BannerCoordinator {
    return BannerCoordinator(self)
  }
}


class BannerCoordinator: NSObject, BannerViewDelegate {

    let parent: BannerViewContainer

    init(_ parent: BannerViewContainer) {
      self.parent = parent
    }

    // MARK: - GADBannerViewDelegate methods

    func bannerViewDidReceiveAd(_ bannerView: BannerView) {
      print("DID RECEIVE AD.")
    }

    func bannerView(_ bannerView: BannerView, didFailToReceiveAdWithError error: Error) {
      print("FAILED TO RECEIVE AD: \(error.localizedDescription)")
    }
  }
