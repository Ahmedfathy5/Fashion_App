//
//  FashionModels.swift
//  FashionApp
//
//  Created by Ahmed Fathi on 04/10/2023.
//

import Foundation
struct type: Identifiable {
    var id : Int
    var rows: [row]
}
struct row : Identifiable{
    var id: Int
    var name: String
    var image: String
    var price: String
    
}
var sizes = ["S", "M","X","XL"]
var types = ["Dress", "Pants", "Blazers","Jackets"]
var datas = [
    type(id: 0, rows:[row(id: 0, name: "Fit and Flare", image: "1", price: "$199")]),
type(id: 1, rows: [row(id: 1, name: "Empire Dress", image: "2", price: "$135")]),
type(id: 2, rows: [row(id: 2, name: "Cristian Bill", image: "3", price: "$210")]),
type(id: 3, rows: [row(id: 3, name: "Empire Dress", image: "4", price: "$75")]),
type(id: 4, rows: [row(id: 4, name: "Empire Dress", image: "5", price: "$120")]),
type(id: 5, rows: [row(id: 5, name: "Empire Dress", image: "6", price: "$399")])
]
