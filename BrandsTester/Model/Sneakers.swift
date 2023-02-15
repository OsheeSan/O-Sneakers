//
//  Sneakers.swift
//  BrandsTester
//
//  Created by admin on 12.02.2023.
//

import Foundation

struct Sneakers {
    var brand: String
    var model: String
    var price: String?
    var id: String?
    var description: String?
    var photos = [String?]()
    
    init(brand: String, model: String, price: String, id: String, description: String, photos: [String]) {
        self.brand = brand
        self.model = model
        self.price = price
        self.id = id
        self.description = description
        self.photos = photos
    }
    
    init(brand: String, model: String){
        self.brand = brand
        self.model = model
        price = "-"
        id = ""
        description = ""
        photos = ["mn-sneakers-no-image"]
    }
    
    init(brand: String, model: String, photos: [String]){
        self.brand = brand
        self.model = model
        price = "-"
        id = ""
        description = ""
        self.photos = photos
    }
}
