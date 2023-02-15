//
//  Data.swift
//  BrandsTester
//
//  Created by admin on 11.02.2023.
//

import Foundation

class Data {
    var brands: [Brand] = [Brand(name: "Adidas", goods: [Sneakers(brand: "Adidas", model: "Superstar", photos: ["adidas-superstar", "adidas-supercourt","adidas-supercourt","adidas-supercourt","adidas-supercourt"]),
                                                         Sneakers(brand: "Adidas", model: "Supercourt"),
                                                         Sneakers(brand: "Adidas", model: "Ozweego"),
                                                         Sneakers(brand: "Adidas", model: "Nite Jogger"),
                                                         Sneakers(brand: "Adidas", model: "Nite Ball")]),
                           Brand(name: "Nike", goods: [Sneakers(brand: "Nike", model: "Air Jordan"),
                                                       Sneakers(brand: "Nike", model: "Air Zoom"),
                                                       Sneakers(brand: "Nike", model: "Air Huarache"),
                                                       Sneakers(brand: "Nike", model: "React Element 55"),
                                                       Sneakers(brand: "Nike", model: "React Element 87"),
                                                       Sneakers(brand: "Nike", model: "Air Max 270"),
                                                       Sneakers(brand: "Nike", model: "Air Max 720")]),
                           Brand(name: "Asics", goods: [Sneakers(brand: "Asics", model: "Gel Kayano"),
                                                        Sneakers(brand: "Asics", model: "Gel Lyte"),
                                                        Sneakers(brand: "Asics", model: "Gel Gel Nandi"),
                                                        Sneakers(brand: "Asics", model: "Gel Lyte MT"),
                                                        Sneakers(brand: "Asics", model: "Gel Preleus")]),
                           Brand(name: "New Balance", goods: [Sneakers(brand: "New Balance", model: "990"),
                                                              Sneakers(brand: "New Balance", model: "2002-R"),
                                                              Sneakers(brand: "New Balance", model: "530"),
                                                              Sneakers(brand: "New Balance", model: "550"),
                                                              Sneakers(brand: "New Balance", model: "997")])
                           
    ]
}
