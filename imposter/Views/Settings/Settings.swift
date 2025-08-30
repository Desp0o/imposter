//
//  Settings.swift
//  imposter
//
//  Created by Tornike Despotashvili on 8/26/25.
//

import SwiftUI
import MessageUI

struct SettingsView: View {
  @AppStorage("currentSubscribe") private var activeSubscribe: String?

  @Environment(\.dismiss) private var dismiss
  
  @State private var isLanguageSheetVisible: Bool = false
  @State private var isPrivacyPolicyVisible: Bool = false
  @State private var isTermsVisible: Bool = false
  @State private var isMailSheetVisible: Bool = false
  
  var body: some View {
    VStack(spacing: 30) {
      Text("Settings")
        .customFontSytle(color: .mainWhite, weight: .bold, size: 20)
      
      VStack(spacing:20) {
        VStack(spacing: 20) {
          Button {
            isLanguageSheetVisible = true
          } label: {
            HStack {
              Text("Change Language")
                .customFontSytle()
              
              Spacer()
              
              Image(systemName: IconsEnum.chevronRight.rawValue)
                .foregroundStyle(.mainBlack)
            }
          }
          
          if let url = URL(string: "www.google.com") {
            ShareLink(item: url) {
              HStack {
                Text("Share with Friends")
                  .customFontSytle()
                
                Spacer()
                
                Image(systemName: IconsEnum.chevronRight.rawValue)
                  .foregroundStyle(.mainBlack)
              }
            }
          }
          
          Button {
            isTermsVisible = true
          } label: {
            HStack {
              Text("Terms of Service")
                .customFontSytle()
              
              Spacer()
              
              Image(systemName: IconsEnum.chevronRight.rawValue)
                .foregroundStyle(.mainBlack)
            }
          }
          
          Button {
            isPrivacyPolicyVisible = true
          } label: {
            HStack {
              Text("Privacy Policy")
                .customFontSytle()
              
              Spacer()
              
              Image(systemName: IconsEnum.chevronRight.rawValue)
                .foregroundStyle(.mainBlack)
            }
          }
          
          Button {
            if MFMailComposeViewController.canSendMail() {
              isMailSheetVisible = true
            } else {
              if let url = URL(string: "mailto:\(SettingsEnum.supportEmail.rawValue)?subject=\(SettingsEnum.emailSubjerct.rawValue)&body=\(SettingsEnum.emailBody.rawValue)") {
                UIApplication.shared.open(url)
              }
            }
          } label: {
            HStack {
              Text("Contact")
                .customFontSytle()
              
              Spacer()
              
              Image(systemName: IconsEnum.chevronRight.rawValue)
                .foregroundStyle(.mainBlack)
            }
          }
        }
        .gameSettingsComponent {}
        
        Text("© All rights reserved.")
          .customFontSytle(color: .mainGray, weight: .medium, size: 14)
      }
      
      if activeSubscribe == nil {
        BannerViewContainer(bannerType: .settingsBanner)
          .frame(maxWidth: .infinity)
          .frame(height: 300)
      }
    }
    .frame(maxWidth: .infinity, maxHeight: .infinity, alignment: .top)
    .padding(30)
    .background(.mainBlack)
    .overlay(alignment: .top) {
      HStack {
        Button {
          dismiss()
        } label: {
          Image(systemName: IconsEnum.arrowLeft.rawValue)
            .foregroundStyle(.mainPink)
        }
        .padding(.vertical, 5)
        .padding(.horizontal, 30)
        
        Spacer()
      }
    }
    .sheet(isPresented: $isLanguageSheetVisible) {
      LanguageChangeView()
    }
    .sheet(isPresented: $isTermsVisible) {
      TermsofService()
    }
    .sheet(isPresented: $isPrivacyPolicyVisible) {
      PrivacyPolicyView()
    }
    .sheet(isPresented: $isMailSheetVisible) {
      MailView(
        recipients: [SettingsEnum.supportEmail.rawValue],
        subject: SettingsEnum.emailSubjerct.rawValue,
        body: SettingsEnum.emailBody.rawValue
      )
    }
  }
}

#Preview {
  SettingsView()
}







