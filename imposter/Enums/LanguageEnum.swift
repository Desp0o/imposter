//
//  LanguageEnum.swift
//  imposter
//
//  Created by Tornike Despotashvili on 8/18/25.
//

enum LanguageEnum: String, CaseIterable, Identifiable {
  case ka = "ka"
  case en = "en"
  
  var id: String { rawValue }
  var displayName: String {
    switch self {
    case .ka: return "ქართული"
    case .en: return "English"
    }
  }
}
