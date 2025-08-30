//
//  sport.swift
//  imposter
//
//  Created by Tornike Despotashvili on 8/30/25.
//

import Foundation

let sportObjectsData: [WordModel] = [
    WordModel(eng: "Football", geo: "ფეხბურთი", engHint: "pitch", geoHint: "მოედანი"),
    WordModel(eng: "Basketball", geo: "კალათბურთი", engHint: "hoop", geoHint: "ფარი"),
    WordModel(eng: "Tennis", geo: "ჩოგბურთი", engHint: "racket", geoHint: "რაკეტკა"),
    WordModel(eng: "Swimming", geo: "ცურვა", engHint: "pool", geoHint: "აუზი"),
    WordModel(eng: "Cycling", geo: "ველოსპორტი", engHint: "pedal", geoHint: "პედალი"),
    WordModel(eng: "Volleyball", geo: "ფრენბურთი", engHint: "net", geoHint: "ბადე"),
    WordModel(eng: "Boxing", geo: "კრივი", engHint: "glove", geoHint: "ხელთათმანი"),
    WordModel(eng: "Athletics", geo: "მძლეოსნობა", engHint: "track", geoHint: "სარბენი"),
    WordModel(eng: "Gymnastics", geo: "ტანვარჯიში", engHint: "vault", geoHint: "ხტომა"),
    WordModel(eng: "Judo", geo: "ძიუდო", engHint: "mat", geoHint: "ტატამი"),
    WordModel(eng: "Wrestling", geo: "ჭიდაობა", engHint: "grip", geoHint: "მოჭიდება"),
    WordModel(eng: "Skiing", geo: "თხილამურები", engHint: "slope", geoHint: "ფერდობი"),
    WordModel(eng: "Snowboarding", geo: "სნოუბორდი", engHint: "board", geoHint: "დაფა"),
    WordModel(eng: "Golf", geo: "გოლფი", engHint: "club", geoHint: "ჯოხი"),
    WordModel(eng: "Rugby", geo: "რაგბი", engHint: "scrum", geoHint: "რაქი"),
    WordModel(eng: "Table Tennis", geo: "მაგიდის ჩოგბურთი", engHint: "paddle", geoHint: "ჩოგანი"),
    WordModel(eng: "Badminton", geo: "ბადმინტონი", engHint: "shuttlecock", geoHint: "ბურთი"),
    WordModel(eng: "Fencing", geo: "ფარიკაობა", engHint: "foil", geoHint: "რაპირა"),
    WordModel(eng: "Archery", geo: "მშვილდოსნობა", engHint: "target", geoHint: "სამიზნე"),
    WordModel(eng: "Weightlifting", geo: "ძალოსნობა", engHint: "barbell", geoHint: "შტანგა"),
    WordModel(eng: "Rowing", geo: "ნიჩბოსნობა", engHint: "oar", geoHint: "ნიჩაბი"),
    WordModel(eng: "Canoeing", geo: "კანოე", engHint: "kayak", geoHint: "ნავი"),
    WordModel(eng: "Surfing", geo: "სერფინგი", engHint: "wave", geoHint: "ტალღა"),
    WordModel(eng: "Skateboarding", geo: "სკეიტბორდინგი", engHint: "ramp", geoHint: "პანდუსი"),
    WordModel(eng: "Climbing", geo: "ცოცვა", engHint: "rock", geoHint: "კლდე"),
    WordModel(eng: "Hockey", geo: "ჰოკეი", engHint: "stick", geoHint: "ჯოხი"),
    WordModel(eng: "Polo", geo: "პოლო", engHint: "horse", geoHint: "ცხენი"),
    WordModel(eng: "Diving", geo: "დაივინგი", engHint: "springboard", geoHint: "ტრამპლინი"),
    WordModel(eng: "Snooker", geo: "სნუკერი", engHint: "cue", geoHint: "კიი"),
    WordModel(eng: "Bowling", geo: "ბოულინგი", engHint: "pins", geoHint: "ქინძისთავები"),
    WordModel(eng: "Lacrosse", geo: "ლაკროსი", engHint: "cradle", geoHint: "ბადე"),
    WordModel(eng: "Triathlon", geo: "ტრიატლონი", engHint: "endurance", geoHint: "ამტანობა"),
    WordModel(eng: "Marathon", geo: "მარათონი", engHint: "distance", geoHint: "მანძილი"),
    WordModel(eng: "Futsal", geo: "ფუტსალი", engHint: "indoor", geoHint: "დარბაზი"),
    WordModel(eng: "Handball", geo: "ხელბურთი", engHint: "goalie", geoHint: "მეკარე"),
    WordModel(eng: "Squash", geo: "სქუაში", engHint: "wall", geoHint: "კედელი"),
    WordModel(eng: "Cricket", geo: "კრიკეტი", engHint: "wicket", geoHint: "ღობე"),
    WordModel(eng: "Baseball", geo: "ბეისბოლი", engHint: "bat", geoHint: "ბიტა"),
    WordModel(eng: "Kickboxing", geo: "კიკბოქსინგი", engHint: "shin", geoHint: "წვივი"),
    WordModel(eng: "Taekwondo", geo: "ტაეკვონდო", engHint: "kick", geoHint: "კარი"),
    WordModel(eng: "Karate", geo: "კარატე", engHint: "stance", geoHint: "პოზა"),
    WordModel(eng: "Javelin", geo: "შუბის სროლა", engHint: "throw", geoHint: "სროლა"),
    WordModel(eng: "Discus", geo: "ბადროს სროლა", engHint: "circle", geoHint: "წრე"),
    WordModel(eng: "Shot Put", geo: "ბირთვის კვრა", engHint: "strength", geoHint: "ძალა"),
    WordModel(eng: "Curling", geo: "კერლინგი", engHint: "ice", geoHint: "ყინული"),
    WordModel(eng: "Bobsleigh", geo: "ბობსლეი", engHint: "sled", geoHint: "მარხილა"),
    WordModel(eng: "Luge", geo: "სრიალი", engHint: "track", geoHint: "ტრასა"),
    WordModel(eng: "Skeleton", geo: "სკელეტონი", engHint: "headfirst", geoHint: "თავით"),
    WordModel(eng: "Biathlon", geo: "ბიატლონი", engHint: "rifle", geoHint: "თოფი"),
    WordModel(eng: "Equestrian", geo: "საცხენოსნო", engHint: "saddle", geoHint: "უნაგირი")
]
