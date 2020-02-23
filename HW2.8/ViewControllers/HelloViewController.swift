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
    
    // MARK: - Lifecycle
    
    override func viewDidLoad() {
        super.viewDidLoad()
  
		userNameLabel.text = nameLabelText
    }

    // MARK: - IBActions
    
    @IBAction func changeWelcomeAction() {
        
    }
    
}
