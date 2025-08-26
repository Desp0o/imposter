//
//  GameManager.swift
//  imposter
//
//  Created by Tornike Despotashvili on 8/23/25.
//


import Observation
import SwiftUICore

@Observable
final class GameManager {
  var localsQuantity: Int = 3
  var impostersQuantity: Int = 1
  var timeAmount: Int = 3
  var isHintEnabled: Bool = false
  var isTimeLimitEnabled: Bool = false

  
  var categories: [CategoryModel] = [
    CategoryModel(id: 1, nameEng: "Everyday Objects", nameGeo: "ყოველდღიური", data: everydayObjectsData),
    CategoryModel(id: 2, nameEng: "Flora & Fauna", nameGeo: "ფლორა & ფაუნა", data: floraAndFaunaData)
  ]
  
  func generateRandomWord() -> WordModel? {
    guard let randomCategoryIndex = categories.indices.randomElement() else { return nil }
    guard let randomWord = categories[randomCategoryIndex].data.randomElement() else { return nil }
    
    categories[randomCategoryIndex].data.removeAll { $0.id == randomWord.id }
    
    return randomWord
  }
  
  func assignRoles() -> [Role] {
    let roles: [Role] = Array(repeating: .imposter, count: impostersQuantity) +
    Array(repeating: .local, count: localsQuantity)
    
    return roles.shuffled()
  }
}
