//
//  LanguagesDataManager.swift
//  HW2.8
//
//  Created by Valeria Khristinina on 22/02/2020.
//  Copyright © 2020 VIA. All rights reserved.
//

import Foundation


class LanguagesDataManager {
	static let sharedGreetings = LanguagesDataManager()
	
	var greetings = ["Hi", "Hola", "Chao", "Aloha", "Hallo", "Shalom", "Buenas dias",
					 "Guten Tag", "Dzien dobry", "Ola", "Здраво", "Dobry den",
					 "Привіт", "Bonjour", "Namaste", "Saluton", "Konnichi wa"]
}
