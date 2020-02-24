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
	
    // MARK: - Public Properties
    
	var nameLabelText = ""
    
    // MARK: - Private Properties
    
	private var languageManager = LanguagesDataManager.shared
	private var index = 0
	
    // MARK: - Lifecycle
    
    override func viewDidLoad() {
        super.viewDidLoad()
		
		userNameLabel.text = nameLabelText
		languageManager.greetings.shuffle()
		changeGreeting()
    }

    // MARK: - IBActions
    
    @IBAction func changeWelcomeAction() {
		changeGreeting()
    }
	
    // MARK: - Private Methods
    
	private func changeGreeting() {
		if index == languageManager.greetings.count {
			index = 0
		}
		
		welcomeLabel.text = languageManager.greetings[index]
		index += 1
		
		setupAnimation()
	}
	
	private func setupAnimation() {
		welcomeLabel.alpha = 0
		UILabel.animate(withDuration: 0.8, animations: {
			self.welcomeLabel.alpha = 1
		})
	}
}
