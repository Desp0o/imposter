//
//  CategoryModel.swift
//  imposter
//
//  Created by Tornike Despotashvili on 8/23/25.
//

struct CategoryModel: Identifiable, Equatable {
  let id: Int
  let nameEng: String
  let nameGeo: String
  let data: [WordModel]
}
