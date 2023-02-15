//
//  Data.swift
//  BrandsTester
//
//  Created by admin on 11.02.2023.
//

import Foundation

class Data {
    var brands: [Brand] = [Brand(name: "Adidas", goods: [Sneakers(brand: "Adidas", model: "Superstar"),
                                                         Sneakers(brand: "Adidas", model: "Supercourt"),
                                                         Sneakers(brand: "Adidas", model: "Ozweego",price: "68.20", fullName: "Adidas Ozweego Black Gray Coral EF4289",description: "What's there not to love about the adidas Ozweego Black Coral? One of the most iconic Three Stripes silhouettes ever made, it's been revived more the modern era, and we honestly think that it's better than the original. A classic chunky sneaker that's been infused with contemporary elements, this is a must cop for any sneaker collector.\n\nWith a unique upper that's made of a charcoal ripstop base, suede accents make their way across the lacing system, while the mudguards are also decorated with the buttery smooth material. Signal Coral highlights provide a striking pop of contrast that is sure to turn heads, while piping runs around the shoe forming the heel tab, just like the '90s OG. Moving downwards, you'll find an aggressively styled midsole that's clean and pristine. Infused with adiPRENE tech, it quite literally takes comfort levels to new heights. To round it all off, a black rubber outsole sits underfoot, finalising the one-of-a-kind aesthetic.\n\nWhether you're an Oz collector or you're looking for your first pair, the adidas Ozweego Core Black Grey Six Signal Coral is a must cop, so stop what you're doing and add a pair to your personal collection as soon as you can!", photos: ["mn-adidas-ozweego-1","mn-adidas-ozweego-2","mn-adidas-ozweego-3","mn-adidas-ozweego-4","mn-adidas-ozweego-6","mn-adidas-ozweego-7","mn-adidas-ozweego-8"]),
                                                         Sneakers(brand: "Adidas", model: "Nite Jogger"),
                                                         Sneakers(brand: "Adidas", model: "Nite Ball")]),
                           Brand(name: "Nike", goods: [Sneakers(brand: "Nike", model: "Air Jordan",price: "180", fullName: "Air Jordan 1 Retro High", description: "Make your stride iconic with the Air Jordan 1. Classic leather pairs with pony hair detailing throughout, while crafted details like the metallic Wings logo hardware add a premium boost to any 'fit. The finishing touch? Air cushioning underfoot lets you keep pace in comfort, so nothing holds you back from showing off your legendary look.",photos: ["mn-nike-air-jordan-1-1","mn-nike-air-jordan-1-2","mn-nike-air-jordan-1-3","mn-nike-air-jordan-1-4","mn-nike-air-jordan-1-5","mn-nike-air-jordan-1-6","mn-nike-air-jordan-1-7"]),
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
