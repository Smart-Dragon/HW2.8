//
//  HelloViewController.swift
//  HW2.8
//
//  Created by Алексей Маслобоев on 22.02.2020.
//  Copyright © 2020 VIA. All rights reserved.
//

import UIKit

class HelloViewController: UIViewController {

    // MARK: - IBOutlets
    
    @IBOutlet weak var welcomeLabel: UILabel!
    @IBOutlet weak var userNameLabel: UILabel!
	
	var nameLabelText = ""
	var greeting = LanguagesDataManager.sharedGreetings
	var index = 0
	
    // MARK: - Lifecycle
    
    override func viewDidLoad() {
        super.viewDidLoad()
		
		userNameLabel.text = nameLabelText
		greeting.greetings.shuffle()
		changeGreeting()
    }

    // MARK: - IBActions
    
    @IBAction func changeWelcomeAction() {
		changeGreeting()
    }
	
	func changeGreeting() {
		if index == greeting.greetings.count {
			index = 0
		}
		
		welcomeLabel.text = greeting.greetings[index]
		index += 1
		
		setupAnimation()
	}
	
	func setupAnimation() {
		welcomeLabel.alpha = 0
		UILabel.animate(withDuration: 0.8, animations: {
			self.welcomeLabel.alpha = 1
		})
	}
}
