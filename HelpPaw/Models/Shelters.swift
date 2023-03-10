//
//  Shelters.swift
//  HelpPaw
//
//  Created by Roman Lantsov on 09.03.2023.
//

import Foundation


struct Shelter {
    let city: City
    let name: String
    let address: String
    
    let animals: [Animal]
    
    static func getShelters() -> [Shelter] {
        DataManager.shared.shelters
    }
}
struct Animal {
    let type: String
    let name: String
    let age: Int
    let description: String
}

enum City: String {
    case moscow = "Москва"
    case stPeterburg = "Санкт-петербург"
    case tumen = "Тюмень"
    case ekaterinburg = "Екатеринбург"
    case krasnodar = "Краснодар"
}



