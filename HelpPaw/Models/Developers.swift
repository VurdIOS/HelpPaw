//
//  Developers.swift
//  HelpPaw
//
//  Created by Камаль Атавалиев on 10.03.2023.
//

struct Developers {
    
    let name: String
    let secondName: String
    let position: String
    let photo: String
    var fullName: String {
        "\(name) \(secondName)"
    }
    static func getDevelopersInfo() -> [Developers] {
        [
            Developers(
                name: "Роман",
                secondName: "Ланцов",
                position: "Тим Лид",
                photo: "Роман"
            ),Developers(
                name: "Камаль",
                secondName: "Атавалиев",
                position: "Просто Красавчик",
                photo: "Камаль"
            ),Developers(
                name: "Виктория",
                secondName: "Страдзина",
                position: "Просто Красавица",
                photo: "Виктория"
            ),Developers(
                name: "Богдан",
                secondName: "Радченко",
                position: "Просто Красавчик",
                photo: "Богдан"
            ),Developers(
                name: "Елена",
                secondName: "Петрова",
                position: "Просто Красавица",
                photo: "Елена"
            )
        ]
    }
}
