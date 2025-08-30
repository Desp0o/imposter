//
//  Category.swift
//  imposter
//
//  Created by Tornike Despotashvili on 8/23/25.
//

import Foundation

let currentSub = UserDefaults.standard.string(forKey: AppStorageEnum.sub.rawValue)

let CategoryArray = [
  CategoryModel(id: 1, nameEng: "Everyday Objects", nameGeo: "ყოველდღიური", data: everydayObjectsData, isUnlocked: true),
  CategoryModel(id: 2, nameEng: "Flora & Fauna", nameGeo: "ფლორა & ფაუნა", data: floraAndFaunaData, isUnlocked: true),
  CategoryModel(id: 3, nameEng: "Animals", nameGeo: "ცხოველები", data: animalsData, isUnlocked: currentSub != nil),
  CategoryModel(id: 4, nameEng: "Cities & Countries", nameGeo: "ქალაქები და ქვეყნები", data: countriesCitiesData, isUnlocked: currentSub != nil),
  CategoryModel(id: 5, nameEng: "Feelings & Emotions", nameGeo: "გრძნობები და ემოციები", data: emotionsData, isUnlocked: currentSub != nil),
  CategoryModel(id: 6, nameEng: "Food", nameGeo: "საჭმელი და სასმელი", data: foodAndDrinksData, isUnlocked: currentSub != nil),
  CategoryModel(id: 7, nameEng: "Hobbies", nameGeo: "ჰობი", data: hobbiesActivitiesData, isUnlocked: currentSub != nil),
  CategoryModel(id: 8, nameEng: "History", nameGeo: "ისტორია", data: historyObjectsData, isUnlocked: currentSub != nil),
  CategoryModel(id: 9, nameEng: "Companies & Logos", nameGeo: "კომპანიები და ლოგოები", data: companiesLogosData, isUnlocked: currentSub != nil),
  CategoryModel(id: 10, nameEng: "Movies", nameGeo: "ფილმები", data: cinematographyData, isUnlocked: currentSub != nil),
  CategoryModel(id: 11, nameEng: "Music", nameGeo: "მუსიკა", data: musicAndBandsData, isUnlocked: currentSub != nil),
  CategoryModel(id: 12, nameEng: "Mythology", nameGeo: "მითოლოგია", data: mythologyData, isUnlocked: currentSub != nil),
  CategoryModel(id: 13, nameEng: "Professions", nameGeo: "პროფესიები", data: professionsData, isUnlocked: currentSub != nil),
  CategoryModel(id: 14, nameEng: "Science", nameGeo: "მეცნიერება", data: scienceWordsData, isUnlocked: currentSub != nil),
  CategoryModel(id: 15, nameEng: "Sport", nameGeo: "სპორტი", data: sportObjectsData, isUnlocked: currentSub != nil),
  CategoryModel(id: 16, nameEng: "Transport", nameGeo: "ტრანსპორტი", data: transportData, isUnlocked: currentSub != nil),
  CategoryModel(id: 17, nameEng: "Video Games", nameGeo: "ვიდეო თამაშები", data: videoGameObjectsData, isUnlocked: currentSub != nil),
  CategoryModel(id: 18, nameEng: "Lord of The Rings", nameGeo: "ბეჭდების მბრძანებელი ", data: lordOfTheRingsData, isUnlocked: currentSub != nil),
  CategoryModel(id: 19, nameEng: "Star Wars", nameGeo: "ვარსკვლავური ომები", data: starWarsData, isUnlocked: currentSub != nil),
  CategoryModel(id: 20, nameEng: "Harry Potter", nameGeo: "ჰარი პოტერი", data: harryPotterWordsData, isUnlocked: currentSub != nil),
  CategoryModel(id: 21, nameEng: "Superheroes", nameGeo: "სუპერ გმირები", data: superHeroesData, isUnlocked: currentSub != nil)
]
