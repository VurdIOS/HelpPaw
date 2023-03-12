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
                position: "Team Lead",
                photo: "Роман"
            ),
            Developers(
                name: "Камаль",
                secondName: "Атавалиев",
                position: "Pre-junior developer",
                photo: "Камаль"
            ),
            Developers(
                name: "Виктория",
                secondName: "Страдзина",
                position: "Pre-junior developer",
                photo: "Виктория"
            ),
            Developers(
                name: "Богдан",
                secondName: "Радченко",
                position: "Pre-junior developer",
                photo: "Богдан"
            ),
            Developers(
                name: "Елена",
                secondName: "Петрова",
                position: "Pre-junior developer",
                photo: "Елена"
            )
        ]
    }
}
