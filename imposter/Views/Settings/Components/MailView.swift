//
//  MailView.swift
//  imposter
//
//  Created by Tornike Despotashvili on 8/26/25.
//

import SwiftUI
import MessageUI

struct MailView: UIViewControllerRepresentable {
  var recipients: [String]
  var subject: String
  var body: String
  var onFinish: ((MFMailComposeResult) -> Void)? = nil
  
  class Coordinator: NSObject, MFMailComposeViewControllerDelegate {
    var parent: MailView
    init(_ parent: MailView) { self.parent = parent }
    
    func mailComposeController(_ controller: MFMailComposeViewController,
                               didFinishWith result: MFMailComposeResult,
                               error: Error?) {
      controller.dismiss(animated: true) {
        self.parent.onFinish?(result)
      }
    }
  }
  
  func makeCoordinator() -> Coordinator { Coordinator(self) }
  
  func makeUIViewController(context: Context) -> MFMailComposeViewController {
    let vc = MFMailComposeViewController()
    vc.mailComposeDelegate = context.coordinator
    vc.setToRecipients(recipients)
    vc.setSubject(subject)
    vc.setMessageBody(body, isHTML: false)
    return vc
  }
  
  func updateUIViewController(_ uiViewController: MFMailComposeViewController, context: Context) {}
}
