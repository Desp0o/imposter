//
//  LanguageEnum.swift
//  imposter
//
//  Created by Tornike Despotashvili on 8/18/25.
//

enum LanguageEnum: String, CaseIterable, Identifiable {
  case ka = "ქართული"
  case en = "English"
  
  var id: String { rawValue }
}
