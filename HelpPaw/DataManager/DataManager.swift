//
//  DataManager.swift
//  HelpPaw
//
//  Created by Roman Lantsov on 09.03.2023.
//

import Foundation


class DataManager {
    static let shared = DataManager()
    
    let shelters = [
        Shelter(
            city: .moscow,
            name: "Муркоша",
            adress: "Москва, ул. Осташковская, д. 14, стр. 2",
            animals: [
                Animal(
                    type: "Кошка",
                    name: "Энрике",
                    age: 3,
                    description: "Я кошка из Мексики и я готовлю кессадилью"
                ),
                Animal(
                    type: "Кошка",
                    name: "Энрике",
                    age: 3,
                    description: "Я кошка из Мексики и я готовлю кессадилью"
                ),
                Animal(
                    type: "Кошка",
                    name: "Энрике",
                    age: 3,
                    description: "Я кошка из Мексики и я готовлю кессадилью"
                ),
            ]
        )
    ]
   private init() {}
    
}
