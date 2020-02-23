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
}

extension Developer {
    static var getDevelopers: [Developer] {
        return [Developer(name: "Inna", surname: "Lapteva", avatarImage: "123")]
    }
}
