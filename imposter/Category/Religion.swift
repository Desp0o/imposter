//
//  Religion.swift
//  imposter
//
//  Created by Tornike Despotashvili on 8/30/25.
//

import Foundation

let religionObjectsData: [WordModel] = [
    WordModel(eng: "Prayer", geo: "ლოცვა", engHint: "whispers", geoHint: "ჩურჩული"),
    WordModel(eng: "Temple", geo: "ტაძარი", engHint: "sanctuary", geoHint: "სალოცავი"),
    WordModel(eng: "Bible", geo: "ბიბლია", engHint: "scripture", geoHint: "წმინდა"),
    WordModel(eng: "Faith", geo: "რწმენა", engHint: "conviction", geoHint: "დარწმუნება"),
    WordModel(eng: "Priest", geo: "მღვდელი", engHint: "cleric", geoHint: "მოძღვარი"),
    WordModel(eng: "Altar", geo: "საკურთხეველი", engHint: "offering", geoHint: "შესაწირი"),
    WordModel(eng: "Pilgrim", geo: "მომლოცველი", engHint: "journey", geoHint: "მოგზაური"),
    WordModel(eng: "Sermon", geo: "ქადაგება", engHint: "address", geoHint: "მიმართვა"),
    WordModel(eng: "Hymn", geo: "გალობა", engHint: "melody", geoHint: "მელოდია"),
    WordModel(eng: "Rosary", geo: "კრიალოსანი", engHint: "beads", geoHint: "მძივები"),
    WordModel(eng: "Gospel", geo: "სახარება", engHint: "teachings", geoHint: "მოძღვრება"),
    WordModel(eng: "Chapel", geo: "სამლოცველო", engHint: "small", geoHint: "პატარა"),
    WordModel(eng: "Incense", geo: "საკმეველი", engHint: "fragrance", geoHint: "სურნელი"),
    WordModel(eng: "Sacrament", geo: "საიდუმლო", engHint: "rite", geoHint: "წესი"),
    WordModel(eng: "Monk", geo: "ბერი", engHint: "ascetic", geoHint: "განმარტოებული"),
    WordModel(eng: "Nun", geo: "მონაზონი", engHint: "sister", geoHint: "და"),
    WordModel(eng: "Heaven", geo: "სამოთხე", engHint: "paradise", geoHint: "ნეტარება"),
    WordModel(eng: "Angel", geo: "ანგელოზი", engHint: "messenger", geoHint: "მაცნე"),
    WordModel(eng: "Devil", geo: "ეშმაკი", engHint: "adversary", geoHint: "მოწინააღმდეგე"),
    WordModel(eng: "Demon", geo: "დემონი", engHint: "spirit", geoHint: "სული"),
    WordModel(eng: "Sin", geo: "ცოდვა", engHint: "transgression", geoHint: "დარღვევა"),
    WordModel(eng: "Redemption", geo: "გამოსყიდვა", engHint: "salvation", geoHint: "ხსნა"),
    WordModel(eng: "Grace", geo: "მადლი", engHint: "favor", geoHint: "წყალობა"),
    WordModel(eng: "Messiah", geo: "მესია", engHint: "savior", geoHint: "მხსნელი"),
    WordModel(eng: "Disciple", geo: "მოწაფე", engHint: "follower", geoHint: "მიმდევარი"),
    WordModel(eng: "Martyr", geo: "მოწამე", engHint: "witness", geoHint: "დამოწმება"),
    WordModel(eng: "Prophet", geo: "წინასწარმეტყველი", engHint: "visionary", geoHint: "მჭვრეტელი"),
    WordModel(eng: "Miracle", geo: "სასწაული", engHint: "wonder", geoHint: "საოცრება"),
    WordModel(eng: "Blessing", geo: "კურთხევა", engHint: "benediction", geoHint: "კეთილგანწყობა"),
    WordModel(eng: "Curse", geo: "წყევლა", engHint: "damnation", geoHint: "დაგმობა"),
    WordModel(eng: "Sacrifice", geo: "მსხვერპლი", engHint: "offering", geoHint: "გაცემა"),
    WordModel(eng: "Penance", geo: "მონანიება", engHint: "atonement", geoHint: "სინანული"),
    WordModel(eng: "Repentance", geo: "სინანული", engHint: "contrition", geoHint: "დამწუხრება"),
    WordModel(eng: "Charity", geo: "მოწყალება", engHint: "benevolence", geoHint: "კეთილშობილება"),
    WordModel(eng: "Compassion", geo: "თანაგრძნობა", engHint: "empathy", geoHint: "თანაგრძნობა"),
    WordModel(eng: "Devotion", geo: "ერთგულება", engHint: "dedication", geoHint: "თავდადება"),
    WordModel(eng: "Worship", geo: "თაყვანისცემა", engHint: "adoration", geoHint: "აღფრთოვანება"),
    WordModel(eng: "Atheist", geo: "ათეისტი", engHint: "non-believer", geoHint: "ურწმუნო"),
    WordModel(eng: "Agnostic", geo: "აგნოსტიკოსი", engHint: "skeptic", geoHint: "ეჭვიანი"),
    WordModel(eng: "Sect", geo: "სექტა", engHint: "group", geoHint: "ჯგუფი"),
    WordModel(eng: "Cult", geo: "კულტი", engHint: "devoted", geoHint: "მიძღვნილი"),
    WordModel(eng: "Ritual", geo: "რიტუალი", engHint: "ceremony", geoHint: "ცერემონია"),
    WordModel(eng: "Doctrine", geo: "დოქტრინა", engHint: "creed", geoHint: "სარწმუნოება"),
    WordModel(eng: "Myth", geo: "მითი", engHint: "legend", geoHint: "ლეგენდა"),
    WordModel(eng: "Legend", geo: "ლეგენდა", engHint: "story", geoHint: "ამბავი"),
    WordModel(eng: "Symbol", geo: "სიმბოლო", engHint: "representation", geoHint: "ნიშანი"),
    WordModel(eng: "Meditation", geo: "მედიტაცია", engHint: "reflection", geoHint: "განსჯა"),
    WordModel(eng: "Enlightenment", geo: "განმანათლებლობა", engHint: "understanding", geoHint: "გაგება"),
    WordModel(eng: "Spirit", geo: "სული", engHint: "essence", geoHint: "არსი"),
    WordModel(eng: "Soul", geo: "სული", engHint: "being", geoHint: "არსება")
]
