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
        ),
        Shelter(
            city: .moscow,
            name: "Друг для друга",
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
        ),
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
        ),
        Shelter(
            city: .stPeterburg,
            name: "Потеряшка",
            adress: "Санкт-Петербург, Лиговский проспект, д. 291",
            animals: [
                Animal(
                    type: "Собака",
                    name: "Мишута",
                    age: 1,
                    description: "Отдается маленький и пушистый комочек счастья! Очень милая и ласковая девочка."),
                Animal(
                    type: "Собака",
                    name: "Пашка",
                    age: 1,
                    description: "Красивых триколорный щенок ищет новую семью."),
                Animal(
                    type: "Кошка",
                    name: "Пушок-Рыжик",
                    age: 7,
                    description: "Пушок остался совсем один после смерти своей старенькой хозяйки, родственники его тоже не смогли взять и таким образом он попал к нам."),
            ]
        ),
        Shelter(
            city: .stPeterburg,
            name: "Верность",
            adress: "Санкт-Петербург, ул. Мира, д. 5",
            animals: [
                Animal(
                    type: "Собака",
                    name: "Рокки",
                    age: 1,
                    description: "Рокки, метис, кастрирован, чипирован."),
                Animal(
                    type: "Собака",
                    name: "Гром",
                    age: 6,
                    description: "Ищет дом Гром, метис. Может ладить с другими собаками, любит детей"),
                Animal(
                    type: "Собака",
                    name: "Бонита",
                    age: 5,
                    description: "Кавказская овчарка, КО Кастрирована, чипирована, привита"),
            ]
        ),
        Shelter(
            city: .stPeterburg,
            name: "Ржевка",
            adress: "Санкт-Петербург, Ржевка, ​ул. Поселковая, д. 9",
            animals: [
                Animal(
                    type: "Кошка",
                    name: "Дарси",
                    age: 3,
                    description: "Ласковый мальчик, выглядит как подросток."),
                Animal(
                    type: "Кошка",
                    name: "Хэйли",
                    age: 10,
                    description: "Привита, стерильная, ходит в лоток с древесным наполнителем, дружит с другими кошками."),
                Animal(
                    type: "Кошка",
                    name: "Дюка",
                    age: 5,
                    description: "Ходит в лоток с древесным наполнителем. Кастрирована, привита.")
            ]
        )
    ]
   private init() {}
    
}
