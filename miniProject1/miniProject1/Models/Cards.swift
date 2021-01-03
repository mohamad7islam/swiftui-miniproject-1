//
//  Cards.swift
//  miniProject1
//
//  Created by mohamad on 1/2/21.
//

import Foundation

struct Cards : Hashable , Identifiable {
    var title : String
    var price : Double
    var image : String
    var region : String
    var id = UUID()
}

let iTunesUS = Cards(title: "iTunes US", price: 0.33 , image: "iTunesUS" , region: "$")
let iTunesUK = Cards(title: "iTunes UK", price: 0.42 , image: "iTunesUK" , region: "£")
let PSUS = Cards(title: "Playstaion US", price: 0.33 , image: "PSUS" , region: "$")
let PSUK = Cards(title: "Playstaion UK", price: 0.42 , image: "PSUK" , region: "£")
let PSKW = Cards(title: "Playstaion KW", price: 1 , image: "PSKW" , region: "KWD")
let OoredooKW = Cards(title: "Ooredoo KW", price: 1 , image: "OoredooKW" , region: "KWD")
let ZainKW = Cards(title: "Zain KW", price: 1 , image: "ZainKW" , region: "KWD")
let VivaKW = Cards(title: "Viva Kw", price: 1 , image: "VivaKW" , region: "KWD")

let cardsArr =  [iTunesUS , iTunesUK , PSUS , PSUK , PSKW , OoredooKW , ZainKW ,VivaKW]
