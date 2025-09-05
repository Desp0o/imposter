//
//  StarWars.swift
//  imposter
//
//  Created by Tornike Despotashvili on 8/30/25.
//

import Foundation

let starWarsData: [WordModel] = [
    WordModel(eng: "Lightsaber", geo: "სინათლის მახვილი", engHint: "weapon", geoHint: "იარაღი"),
    WordModel(eng: "Jedi", geo: "ჯედაი", engHint: "knight", geoHint: "რაინდი"),
    WordModel(eng: "Sith", geo: "სითი", engHint: "darkness", geoHint: "სიბნელე"),
    WordModel(eng: "Force", geo: "ძალა", engHint: "energy", geoHint: "ენერგია"),
    WordModel(eng: "Droid", geo: "დროიდი", engHint: "robot", geoHint: "რობოტი"),
    WordModel(eng: "Blaster", geo: "ბლასტერი", engHint: "laser", geoHint: "ლაზერი"),
    WordModel(eng: "Millennium Falcon", geo: "ათასწლიანი შევარდენი", engHint: "ship", geoHint: "ხომალდი"),
    WordModel(eng: "Death Star", geo: "სიკვდილის ვარსკვლავი", engHint: "station", geoHint: "სადგური"),
    WordModel(eng: "Rebel", geo: "ამბოხებული", engHint: "alliance", geoHint: "ალიანსი"),
    WordModel(eng: "Empire", geo: "იმპერია", engHint: "galactic", geoHint: "გალაქტიკური"),
    WordModel(eng: "Wookiee", geo: "ვუკი", engHint: "furry", geoHint: "ბეწვიანი"),
    WordModel(eng: "Tatooine", geo: "ტატუინი", engHint: "desert", geoHint: "უდაბნო"),
    WordModel(eng: "Yoda", geo: "იოდა", engHint: "master", geoHint: "ოსტატი"),
    WordModel(eng: "Stormtrooper", geo: "შტორმტრუპერი", engHint: "white", geoHint: "თეთრი"),
    WordModel(eng: "X-wing", geo: "იქს-ფრთა", engHint: "fighter", geoHint: "გამანადგურებელი"),
    WordModel(eng: "Vader", geo: "ვეიდერი", engHint: "helmet", geoHint: "მუზარადი"),
    WordModel(eng: "Skywalker", geo: "სკაიუოკერი", engHint: "hero", geoHint: "გმირი"),
    WordModel(eng: "Princess Leia", geo: "პრინცესა ლეია", engHint: "royal", geoHint: "სამეფო"),
    WordModel(eng: "Han Solo", geo: "ჰან სოლო", engHint: "smuggler", geoHint: "კონტრაბანდისტი"),
    WordModel(eng: "Chewbacca", geo: "ჩუბაკა", engHint: "loyal", geoHint: "ერთგული"),
    WordModel(eng: "Palpatine", geo: "პალპატინი", engHint: "emperor", geoHint: "იმპერატორი"),
    WordModel(eng: "Hoth", geo: "ჰოთი", engHint: "ice", geoHint: "ყინული"),
    WordModel(eng: "Endor", geo: "ენდორი", engHint: "forest", geoHint: "ტყე"),
    WordModel(eng: "Ewok", geo: "ივოკი", engHint: "small", geoHint: "პატარა"),
    WordModel(eng: "Falcon", geo: "შევარდენი", engHint: "fast", geoHint: "სწრაფი"),
    WordModel(eng: "Star Destroyer", geo: "ვარსკვლავური გამანადგურებელი", engHint: "cruiser", geoHint: "კრეისერი"),
    WordModel(eng: "Coruscant", geo: "კორუსანტი", engHint: "city", geoHint: "ქალაქი"),
    WordModel(eng: "Clone", geo: "კლონი", engHint: "trooper", geoHint: "ჯარისკაცი"),
    WordModel(eng: "Gungan", geo: "განგანი", engHint: "amphibian", geoHint: "ამფიბია"),
    WordModel(eng: "Naboo", geo: "ნაბუ", engHint: "green", geoHint: "მწვანე"),
    WordModel(eng: "Podrace", geo: "პოდრბოლა", engHint: "race", geoHint: "რბოლა"),
    WordModel(eng: "Mandalorian", geo: "მანდალორიელი", engHint: "bounty", geoHint: "ჯილდო"),
    WordModel(eng: "Grogu", geo: "გროგუ", engHint: "baby", geoHint: "პატარა"),
    WordModel(eng: "Boba Fett", geo: "ბობა ფეტი", engHint: "hunter", geoHint: "მონადირე"),
    WordModel(eng: "Sarlacc", geo: "სარლაკი", engHint: "pit", geoHint: "ორმო"),
    WordModel(eng: "Jabba", geo: "ჯაბა", engHint: "slug", geoHint: "ლოკოკინა"),
    WordModel(eng: "Hyperdrive", geo: "ჰიპერდრაივი", engHint: "warp", geoHint: "გადახტომა"),
    WordModel(eng: "Alderaan", geo: "ალდერაანი", engHint: "planet", geoHint: "პლანეტა"),
    WordModel(eng: "Womp Rat", geo: "უომპ ვირთხა", engHint: "creature", geoHint: "არსება"),
    WordModel(eng: "Speeder", geo: "სპიდერი", engHint: "hover", geoHint: "მოტორი"),
    WordModel(eng: "TIE Fighter", geo: "ტაი გამანადგურებელი", engHint: "twin", geoHint: "ტყუპი"),
    WordModel(eng: "Anakin", geo: "ანაკინი", engHint: "chosen", geoHint: "რჩეული"),
    WordModel(eng: "Obi-Wan", geo: "ობი-ვანი", engHint: "mentor", geoHint: "მენტორი"),
    WordModel(eng: "Kashyyyk", geo: "კაშიიიკი", engHint: "home", geoHint: "სახლი"),
    WordModel(eng: "Geonosis", geo: "ჯეონოზისი", engHint: "arena", geoHint: "არენა"),
    WordModel(eng: "Dooku", geo: "დუკუ", engHint: "count", geoHint: "გრაფი"),
    WordModel(eng: "Grievous", geo: "გრიივუსი", engHint: "droid", geoHint: "დროიდი"),
    WordModel(eng: "Kylo Ren", geo: "კაილო რენი", engHint: "mask", geoHint: "ნიღაბი")
]
