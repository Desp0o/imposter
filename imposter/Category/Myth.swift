//
//  Myth.swift
//  imposter
//
//  Created by Tornike Despotashvili on 8/30/25.
//

import Foundation

let mythologyData: [WordModel] = [
    WordModel(eng: "Zeus", geo: "ზევსი", engHint: "Thunder", geoHint: "ჭექა-ქუხილი"),
    WordModel(eng: "Hera", geo: "ჰერა", engHint: "Marriage", geoHint: "ქორწინება"),
    WordModel(eng: "Poseidon", geo: "პოსეიდონი", engHint: "Ocean", geoHint: "ოკეანე"),
    WordModel(eng: "Hades", geo: "ჰადესი", engHint: "Underworld", geoHint: "ქვესკნელი"),
    WordModel(eng: "Athena", geo: "ათენა", engHint: "Wisdom", geoHint: "სიბრძნე"),
    WordModel(eng: "Apollo", geo: "აპოლონი", engHint: "Sun", geoHint: "მზე"),
    WordModel(eng: "Artemis", geo: "არტემიდა", engHint: "Hunt", geoHint: "ნადირობა"),
    WordModel(eng: "Aphrodite", geo: "აფროდიტე", engHint: "Beauty", geoHint: "სილამაზე"),
    WordModel(eng: "Hermes", geo: "ჰერმესი", engHint: "Messenger", geoHint: "მაცნე"),
    WordModel(eng: "Ares", geo: "არესი", engHint: "War", geoHint: "ომი"),
    WordModel(eng: "Hephaestus", geo: "ჰეფესტო", engHint: "Forge", geoHint: "სამჭედლო"),
    WordModel(eng: "Dionysus", geo: "დიონისე", engHint: "Wine", geoHint: "ღვინო"),
    WordModel(eng: "Demeter", geo: "დემეტრე", engHint: "Harvest", geoHint: "მოსავალი"),
    WordModel(eng: "Persephone", geo: "პერსეფონე", engHint: "Spring", geoHint: "გაზაფხული"),
    WordModel(eng: "Prometheus", geo: "პრომეთე", engHint: "Fire", geoHint: "ცეცხლი"),
    WordModel(eng: "Pandora", geo: "პანდორა", engHint: "Box", geoHint: "ყუთი"),
    WordModel(eng: "Hercules", geo: "ჰერაკლე", engHint: "Strength", geoHint: "ძალა"),
    WordModel(eng: "Achilles", geo: "აქილევსი", engHint: "Heel", geoHint: "ქუსლი"),
    WordModel(eng: "Odysseus", geo: "ოდისევსი", engHint: "Journey", geoHint: "მოგზაურობა"),
    WordModel(eng: "Cyclops", geo: "ციკლოპი", engHint: "Eye", geoHint: "თვალი"),
    WordModel(eng: "Medusa", geo: "მედუზა", engHint: "Gaze", geoHint: "მზერა"),
    WordModel(eng: "Minotaur", geo: "მინოტავრი", engHint: "Labyrinth", geoHint: "ლაბირინთი"),
    WordModel(eng: "Cerberus", geo: "კერბეროსი", engHint: "Guardian", geoHint: "მცველი"),
    WordModel(eng: "Phoenix", geo: "ფენიქსი", engHint: "Rebirth", geoHint: "აღორძინება"),
    WordModel(eng: "Griffin", geo: "გრიფინი", engHint: "Eagle", geoHint: "არწივი"),
    WordModel(eng: "Sphinx", geo: "სფინქსი", engHint: "Riddle", geoHint: "გამოცანა"),
    WordModel(eng: "Centaur", geo: "კენტავრი", engHint: "Horseman", geoHint: "კაცცხენი"),
    WordModel(eng: "Siren", geo: "სირენა", engHint: "Song", geoHint: "სიმღერა"),
    WordModel(eng: "Pegasus", geo: "პეგასი", engHint: "Wings", geoHint: "ფრთები"),
    WordModel(eng: "Hydra", geo: "ჰიდრა", engHint: "Heads", geoHint: "თავები"),
    WordModel(eng: "Thor", geo: "თორი", engHint: "Hammer", geoHint: "ჩაქუჩი"),
    WordModel(eng: "Odin", geo: "ოდინი", engHint: "Allfather", geoHint: "ყველა მამა"),
    WordModel(eng: "Loki", geo: "ლოკი", engHint: "Trickster", geoHint: "ცბიერი"),
    WordModel(eng: "Freyja", geo: "ფრეია", engHint: "Love", geoHint: "სიყვარული"),
    WordModel(eng: "Valhalla", geo: "ვალჰალა", engHint: "Hall", geoHint: "დარბაზი"),
    WordModel(eng: "Ragnarok", geo: "რაგნაროკი", engHint: "Twilight", geoHint: "ბინდი"),
    WordModel(eng: "Mjölnir", geo: "მიოლნირი", engHint: "Weapon", geoHint: "იარაღი"),
    WordModel(eng: "Valkyrie", geo: "ვალკირია", engHint: "Chooser", geoHint: "ამომრჩევი"),
    WordModel(eng: "Dragons", geo: "დრაკონები", engHint: "Scales", geoHint: "ქერცლი"),
    WordModel(eng: "Unicorn", geo: "უნიკორნი", engHint: "Horn", geoHint: "რქა"),
    WordModel(eng: "Mermaid", geo: "ქალთევზა", engHint: "Tail", geoHint: "კუდი"),
    WordModel(eng: "Gnomes", geo: "გნომები", engHint: "Garden", geoHint: "ბაღი"),
    WordModel(eng: "Elves", geo: "ელფები", engHint: "Forest", geoHint: "ტყე"),
    WordModel(eng: "Fairies", geo: "ფერიები", engHint: "Magic", geoHint: "მაგია"),
    WordModel(eng: "Goblins", geo: "გობლინები", engHint: "Cave", geoHint: "გამოქვაბული"),
    WordModel(eng: "Werewolf", geo: "მაქცია", engHint: "Moon", geoHint: "მთვარე"),
    WordModel(eng: "Vampire", geo: "ვამპირი", engHint: "Blood", geoHint: "სისხლი"),
    WordModel(eng: "Mummy", geo: "მუმია", engHint: "Ancient", geoHint: "ძველი"),
    WordModel(eng: "Zombie", geo: "ზომბი", engHint: "Undead", geoHint: "უკვდავი"),
    WordModel(eng: "Ghost", geo: "მოჩვენება", engHint: "Spirit", geoHint: "სული")
]
