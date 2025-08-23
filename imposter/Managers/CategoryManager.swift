//
//  CategoryManager.swift
//  imposter
//
//  Created by Tornike Despotashvili on 8/23/25.
//


import Observation

@Observable
final class CategoryManager {
  var categories: [CategoryModel] = [
    CategoryModel(id: 1, nameEng: "Everyday Objects", nameGeo: "ყოველდღიური", data: everydayObjectsData),
    CategoryModel(id: 2, nameEng: "Flora & Fauna", nameGeo: "ფლორა & ფაუნა", data: floraAndFaunaData)
  ]
  
  func generateRandomWord() {
    guard let randomCategoryIndex = categories.indices.randomElement() else { return }
    guard let randomWord = categories[randomCategoryIndex].data.randomElement() else { return }
    
    categories[randomCategoryIndex].data.removeAll { $0.id == randomWord.id }
  }
}
