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
    
    var fullname: String {
        "\(name) \(surname)"
    }
}

extension Developer {
    static func getDevelopers() -> [Developer] {
        
        var developers: [Developer] = []
        
        for index in 0..<DeveloperDataManager.shared.names.count {
            
            let developer = Developer(name: DeveloperDataManager.shared.names[index],
                                      surname: DeveloperDataManager.shared.surnames[index],
                                      avatarImage: DeveloperDataManager.shared.avatarImage[index])
            developers.append(developer)
        }
        return developers
    }
}
