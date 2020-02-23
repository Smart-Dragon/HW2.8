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
	
    // MARK: - Lifecycle
    
    override func viewDidLoad() {
        super.viewDidLoad()
		  
		userNameLabel.text = nameLabelText
		welcomeLabel.text = greeting.greetings.first
    }

    // MARK: - IBActions
    
    @IBAction func changeWelcomeAction() {
		welcomeLabel.text = greeting.greetings.randomElement()
    }
}
