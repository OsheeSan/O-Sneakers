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
    var fullName: String?
    var description: String?
    var photos = [String?]() 
    var sneakersIcon: String
    
    init(brand: String, model: String, price: String, fullName: String, description: String, photos: [String]) {
        self.brand = brand
        self.model = model
        self.price = price
        self.fullName = fullName
        self.description = description
        self.photos = photos
        sneakersIcon = nameToImage(brand: brand, model: model)
    }
    
    init(brand: String, model: String){
        self.brand = brand
        self.model = model
        price = "-"
        fullName = ""
        description = ""
        photos = ["mn-sneakers-no-image"]
        sneakersIcon = nameToImage(brand: brand, model: model)
    }
    
    init(brand: String, model: String, photos: [String]){
        self.brand = brand
        self.model = model
        price = "-"
        fullName = ""
        description = ""
        self.photos = photos
        sneakersIcon = nameToImage(brand: brand, model: model)
    }
}
