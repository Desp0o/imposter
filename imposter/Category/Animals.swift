//
//  Animals.swift
//  imposter
//
//  Created by Tornike Despotashvili on 8/30/25.
//

import Foundation

let animalsData: [WordModel] = [
    // ძალიან მარტივი მინიშნებები
    WordModel(eng: "Dog", geo: "ძაღლი", engHint: "loyal", geoHint: "ერთგული"),
    WordModel(eng: "Pig", geo: "ღორი", engHint: "oink", geoHint: "ტალახი"),
    WordModel(eng: "Fish", geo: "თევზი", engHint: "water", geoHint: "წყალი"),
    WordModel(eng: "Bird", geo: "ჩიტი", engHint: "fly", geoHint: "ფრენა"),
    WordModel(eng: "Snake", geo: "გველი", engHint: "slither", geoHint: "ცოცვა"),
    WordModel(eng: "Tiger", geo: "ვეფხვი", engHint: "stripes", geoHint: "ზოლები"),
    WordModel(eng: "Giraffe", geo: "ჟირაფი", engHint: "tall", geoHint: "მაღალი"),
    
    WordModel(eng: "Rabbit", geo: "კურდღელი", engHint: "burrow", geoHint: "სორო"),
    WordModel(eng: "Squirrel", geo: "ციყვი", engHint: "acorn", geoHint: "მუხა"),
    
    WordModel(eng: "Panda", geo: "პანდა", engHint: "bamboo", geoHint: "ბამბუკი"),
    WordModel(eng: "Kangaroo", geo: "კენგურუ", engHint: "pouch", geoHint: "ჩანთა"),
    WordModel(eng: "Koala", geo: "კოალა", engHint: "eucalyptus", geoHint: "ევკალიპტი"),
    WordModel(eng: "Penguin", geo: "პინგვინი", engHint: "waddle", geoHint: "სამეფო"),
    WordModel(eng: "Dolphin", geo: "დელფინი", engHint: "intelligent", geoHint: "ინტელიგენტი"),
    WordModel(eng: "Whale", geo: "ვეშაპი", engHint: "mammal", geoHint: "ძუძუმწოვარი"),
    WordModel(eng: "Shark", geo: "ზვიგენი", engHint: "predator", geoHint: "მტაცებელი"),

    WordModel(eng: "Octopus", geo: "რვაფეხა", engHint: "tentacles", geoHint: "საცეცები"),
    WordModel(eng: "Jellyfish", geo: "მედუზა", engHint: "transparent", geoHint: "გამჭვირვალე"),
    WordModel(eng: "Crocodile", geo: "ნიანგი", engHint: "jaws", geoHint: "ყბა"),
    WordModel(eng: "Turtle", geo: "კუ", engHint: "shell", geoHint: "ბაკანი"),
    WordModel(eng: "Frog", geo: "ბაყაყი", engHint: "amphibian", geoHint: "ამფიბია"),
    WordModel(eng: "Owl", geo: "ბუ", engHint: "nocturnal", geoHint: "ღამის"),
    WordModel(eng: "Eagle", geo: "არწივი", engHint: "vision", geoHint: "ხედვა"),
    WordModel(eng: "Parrot", geo: "თუთიყუში", engHint: "mimic", geoHint: "მიმბაძველი"),
    WordModel(eng: "Peacock", geo: "ფარშევანგი", engHint: "display", geoHint: "გამოფენა"),
    WordModel(eng: "Swan", geo: "გედი", engHint: "elegant", geoHint: "ელეგანტური"),

    
    WordModel(eng: "Goose", geo: "ბატი", engHint: "honk", geoHint: "ყიყინი"),
    WordModel(eng: "Turkey", geo: "ინდაური", engHint: "gobble", geoHint: "ამერიკა"),
    WordModel(eng: "Rooster", geo: "მამალი", engHint: "crow", geoHint: "დილა"),
    WordModel(eng: "Pigeon", geo: "მტრედი", engHint: "coo", geoHint: "ღუღუნი"),
    WordModel(eng: "Sparrow", geo: "ბეღურა", engHint: "small", geoHint: "პატარა"),
    WordModel(eng: "Robin", geo: "ჟოლო", engHint: "red-breast", geoHint: "წითელი"),
    WordModel(eng: "Woodpecker", geo: "კოდალა", engHint: "drum", geoHint: "კაკუნი"),
    
    WordModel(eng: "Bat", geo: "ღამურა", engHint: "echolocation", geoHint: "ექოლოკაცია"),

    WordModel(eng: "Lizard", geo: "ხვლიკი", engHint: "bask", geoHint: "მცოცავი"),
    WordModel(eng: "Chameleon", geo: "ქამელეონი", engHint: "color-change", geoHint: "ფერი"),
    WordModel(eng: "Gecko", geo: "გეკო", engHint: "climb", geoHint: "ცოცვა"),
    WordModel(eng: "Salamander", geo: "სალამანდრა", engHint: "amphibian", geoHint: "ამფიბია"),
    WordModel(eng: "Newt", geo: "ტრიტონი", engHint: "aquatic", geoHint: "წყლის"),
    WordModel(eng: "Toad", geo: "გომბეშო", engHint: "warty", geoHint: "მეჭეჭებიანი"),
    WordModel(eng: "Snail", geo: "ლოკოკინა", engHint: "slime", geoHint: "ლორწო"),
    
    WordModel(eng: "Worm", geo: "ჭია", engHint: "soil", geoHint: "ნიადაგი"),
    WordModel(eng: "Butterfly", geo: "პეპელა", engHint: "nectar", geoHint: "ფარფატი"),

    WordModel(eng: "Bee", geo: "ფუტკარი", engHint: "honeycomb", geoHint: "მშრომელი"),
    WordModel(eng: "Ant", geo: "ჭიანჭველა", engHint: "colony", geoHint: "კოლონია"),
    WordModel(eng: "Spider", geo: "ობობა", engHint: "web", geoHint: "ქსელი"),
    WordModel(eng: "Scorpion", geo: "მორიელი", engHint: "stinger", geoHint: "ნაკბენი"),
    WordModel(eng: "Ladybug", geo: "ჭიამაია", engHint: "spots", geoHint: "კოპლები"),
    WordModel(eng: "Dragonfly", geo: "ჭრიჭინა", engHint: "wings", geoHint: "ფრთები"),
    WordModel(eng: "Grasshopper", geo: "კალია", engHint: "jump", geoHint: "ხტუნვა"),

    WordModel(eng: "Mosquito", geo: "კოღო", engHint: "bite", geoHint: "ნაკბენი"),
    WordModel(eng: "Fly", geo: "ბუზი", engHint: "buzz", geoHint: "ზუზუნი"),

    WordModel(eng: "Wasp", geo: "კრაზანა", engHint: "nest", geoHint: "ბუდე"),
    
    WordModel(eng: "Centipede", geo: "ასფეხა", engHint: "legs", geoHint: "ფეხები"),
    WordModel(eng: "Crab", geo: "კიბორჩხალა", engHint: "claws", geoHint: "კლანჭები"),
    WordModel(eng: "Shrimp", geo: "კრევეტი", engHint: "shellfish", geoHint: "ზღვის პროდუქტი"),
    
    WordModel(eng: "Starfish", geo: "ზღვის ვარსკვლავი", engHint: "arms", geoHint: "კიდურები"),
    WordModel(eng: "Seahorse", geo: "ზღვის ცხენი", engHint: "tail", geoHint: "კუდი"),
    WordModel(eng: "Seal", geo: "სელაპი", engHint: "blubber", geoHint: "ცხიმი"),

    
    
    WordModel(eng: "Polar Bear", geo: "პოლარული დათვი", engHint: "arctic", geoHint: "არქტიკა"),
    WordModel(eng: "Reindeer", geo: "ჩრდილოეთის ირემი", engHint: "sleigh", geoHint: "მარხილი"),
    WordModel(eng: "Camel", geo: "აქლემი", engHint: "hump", geoHint: "კუზი"),
    WordModel(eng: "Llama", geo: "ლამა", engHint: "spit", geoHint: "პანამა"),
    
    WordModel(eng: "Gorilla", geo: "გორილა", engHint: "primate", geoHint: "პრიმატი"),
    WordModel(eng: "Chimpanzee", geo: "შიმპანზე", engHint: "tool-use", geoHint: "ჭკვიანი")
]
