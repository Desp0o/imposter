//
//  LOTR.swift
//  imposter
//
//  Created by Tornike Despotashvili on 8/30/25.
//

import Foundation

let lordOfTheRingsData: [WordModel] = [
    WordModel(eng: "Frodo", geo: "ფროდო", engHint: "Ringbearer", geoHint: "ბეჭდისმტვირთველი"),
    WordModel(eng: "Gandalf", geo: "განდალფი", engHint: "Wizard", geoHint: "ჯადოქარი"),
    WordModel(eng: "Aragorn", geo: "არაგორნი", engHint: "King", geoHint: "მეფე"),
    WordModel(eng: "Legolas", geo: "ლეგოლასი", engHint: "Archer", geoHint: "მშვილდოსანი"),
    WordModel(eng: "Gimli", geo: "გიმლი", engHint: "Axe", geoHint: "ცული"),
    WordModel(eng: "Sauron", geo: "საურონი", engHint: "Eye", geoHint: "თვალი"),
    WordModel(eng: "Hobbit", geo: "ჰობიტი", engHint: "Shire", geoHint: "შირში"),
    WordModel(eng: "Elf", geo: "ელფი", engHint: "Immortal", geoHint: "უკვდავი"),
    WordModel(eng: "Dwarf", geo: "ჯუჯა", engHint: "Mine", geoHint: "მაღარო"),
    WordModel(eng: "Orc", geo: "ორკი", engHint: "Mordor", geoHint: "მორდორი"),
    WordModel(eng: "Gollum", geo: "გოლუმი", engHint: "Precious", geoHint: "ძვირფასი"),
    WordModel(eng: "Rivendell", geo: "რივენდელი", engHint: "Refuge", geoHint: "თავშესაფარი"),
    WordModel(eng: "Lothlórien", geo: "ლოტლორიენი", engHint: "Forest", geoHint: "ტყე"),
    WordModel(eng: "Rohan", geo: "როჰანი", engHint: "Horsemen", geoHint: "მხედრები"),
    WordModel(eng: "Gondor", geo: "გონდორი", engHint: "Minas", geoHint: "მინასი"),
    WordModel(eng: "Moria", geo: "მორია", engHint: "Drums", geoHint: "დასარტყამები"),
    WordModel(eng: "Balrog", geo: "ბალროგი", engHint: "Flame", geoHint: "ალი"),
    WordModel(eng: "Saruman", geo: "სარუმანი", engHint: "White", geoHint: "თეთრი"),
    WordModel(eng: "Isengard", geo: "იზენგარდი", engHint: "Tower", geoHint: "კოშკი"),
    WordModel(eng: "Ent", geo: "ენტ", engHint: "Trees", geoHint: "ხეები"),
    WordModel(eng: "Mirkwood", geo: "ბნელტყე", engHint: "Spiders", geoHint: "ობობები"),
    WordModel(eng: "Smaug", geo: "სმაუგი", engHint: "Dragon", geoHint: "დრაკონი"),
    WordModel(eng: "Bilbo", geo: "ბილბო", engHint: "Burglar", geoHint: "გამტეხი"),
    WordModel(eng: "Samwise", geo: "სემვაიზ", engHint: "Loyal", geoHint: "ერთგული"),
    WordModel(eng: "Pippin", geo: "პიპინი", engHint: "Fool", geoHint: "სულელი"),
    WordModel(eng: "Merry", geo: "მერი", engHint: "Bree", geoHint: "ბრი"),
    WordModel(eng: "Boromir", geo: "ბორომირი", engHint: "Horn", geoHint: "რქა"),
    WordModel(eng: "Denethor", geo: "დენეთორი", engHint: "Steward", geoHint: "მმართველი"),
    WordModel(eng: "Galadriel", geo: "გალადრიელი", engHint: "Lady", geoHint: "ქალბატონი"),
    WordModel(eng: "Elrond", geo: "ელრონდი", engHint: "Council", geoHint: "საბჭო"),
    WordModel(eng: "Arwen", geo: "არვენი", engHint: "Evenstar", geoHint: "საღამოსვარსკვლავი"),
    WordModel(eng: "Sting", geo: "ნესტარი", engHint: "Sword", geoHint: "ხმალი"),
    WordModel(eng: "Glamdring", geo: "გლამდრინგი", engHint: "Foe-hammer", geoHint: "მტრისჩაქუჩი"),
    WordModel(eng: "Orcrist", geo: "ორკრისტი", engHint: "Goblin-cleaver", geoHint: "გობლინისმკვეთი"),
    WordModel(eng: "Palantír", geo: "პალანტირი", engHint: "Seeing", geoHint: "მხედველი"),
    WordModel(eng: "Mithril", geo: "მითრილი", engHint: "Armor", geoHint: "აბჯარი"),
    WordModel(eng: "Silmaril", geo: "სილმარილი", engHint: "Jewel", geoHint: "ძვირფასეულობა"),
    WordModel(eng: "Eowyn", geo: "ეოვინი", engHint: "Shieldmaiden", geoHint: "ფარიანი"),
    WordModel(eng: "Theoden", geo: "თეოდენი", engHint: "King", geoHint: "მეფე"),
    WordModel(eng: "Grima", geo: "გრიმა", engHint: "Wormtongue", geoHint: "ენაგველი"),
    WordModel(eng: "Uruk-hai", geo: "ურუკ-ჰაი", engHint: "Berserker", geoHint: "ბერსერკერი"),
    WordModel(eng: "Shelob", geo: "შელობი", engHint: "Spider", geoHint: "ობობა"),
    WordModel(eng: "Fellbeast", geo: "ფელბისტი", engHint: "Winged", geoHint: "ფრთიანი"),
    WordModel(eng: "Nazgûl", geo: "ნაზგული", engHint: "Wraith", geoHint: "აჩრდილი"),
    WordModel(eng: "Andúril", geo: "ანდურილი", engHint: "Flame", geoHint: "ალი"),
    WordModel(eng: "Glamdring", geo: "გლამდრინგი", engHint: "Sword", geoHint: "ხმალი"),
    WordModel(eng: "Morgul", geo: "მორგული", engHint: "Blade", geoHint: "პირი"),
    WordModel(eng: "Witch-king", geo: "ჯადოქარი-მეფე", engHint: "Lord", geoHint: "უფალი"),
    WordModel(eng: "Glaurung", geo: "გლაურუნგი", engHint: "Dragon", geoHint: "დრაკონი"),
    WordModel(eng: "Ungoliant", geo: "უნგოლიანტი", engHint: "Shadow", geoHint: "ჩრდილი")
]
