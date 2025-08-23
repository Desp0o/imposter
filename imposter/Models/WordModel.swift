//
//  WordModel.swift
//  imposter
//
//  Created by Tornike Despotashvili on 8/23/25.
//

import Foundation

struct WordModel: Equatable {
  var id: UUID
  var eng: String
  var geo: String
  var engHint: String
  var geoHint: String
  
  init(id: UUID = UUID(), eng: String, geo: String, engHint: String, geoHint: String) {
    self.id = id
    self.eng = eng
    self.geo = geo
    self.engHint = engHint
    self.geoHint = geoHint
  }
}

