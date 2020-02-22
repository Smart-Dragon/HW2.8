//
//  Quest.swift
//  HW2.8
//
//  Created by Алексей Маслобоев on 22.02.2020.
//  Copyright © 2020 VIA. All rights reserved.
//

struct Quest {
    let name: String
    let description: String
    let complexity: Complexity
    let maxPersons: Int
    let image: String
}

enum Complexity: Int {
    case elementary = 1
    case easy = 2
    case medium = 3
    case hard = 4
    case chaos = 5
}
