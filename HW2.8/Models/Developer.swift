//
//  Developer.swift
//  HW2.8
//
//  Created by Инна Лаптева on 23.02.2020.
//  Copyright © 2020 VIA. All rights reserved.
//

struct Developer {
    let name: String
    let surname: String
    let avatarImage: String
    let responsibility: String
    
    var fullname: String {
        "\(name) \(surname)"
    }
}

extension Developer {
    static func getDevelopers() -> [Developer] {
        
        var developers: [Developer] = [ Developer(name: "Инна", surname: "Лаптева", avatarImage: "inna.jpg", responsibility: "Разработчик раздела Разработчики"),
                                        Developer(name: "Валерия", surname: "Христинина", avatarImage: "valeria.jpg", responsibility: "Разработчик раздела Приветствие"),
                                        Developer(name: "Алексей", surname: "Маслобоев", avatarImage: "alexey.jpg", responsibility: "Разработчик раздела Квесты")]
        return developers
    }
}
