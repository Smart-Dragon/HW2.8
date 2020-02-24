//
//  ViewController.swift
//  HW2.8
//
//  Created by Алексей Маслобоев on 22.02.2020.
//  Copyright © 2020 VIA. All rights reserved.
//

import UIKit

class StartViewController: UIViewController {
	
	// MARK: - IBOutlets
	
	@IBOutlet weak var userNameTextField: UITextField!
	
    // MARK: - Private Properties
    
    private let segueShowNext = "ShowNext"

	// MARK: - IBActions
	
	@IBAction func nextAction() {
		if let textName = userNameTextField.text {
			let lenghtName = textName.count
			if textName == "" {
				showAlert(with: "Ошибка!", and: "Введите ваше имя")
			} else if lenghtName < 2 {
				showAlert(with: "Внимание!", and: "В имени должно быть больше одного символа")
			} else {
				performSegue(withIdentifier: segueShowNext, sender: self)
			}
		}
	}
    
    // MARK: - Navigation
    
	override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
		if segue.identifier == segueShowNext {
			let navigationVC = segue.destination as! UINavigationController
			let barVC = navigationVC.viewControllers.first as! BarViewController
			let helloVC = barVC.viewControllers?.first as! HelloViewController
			helloVC.nameLabelText = "\(userNameTextField.text ?? "Noname")!"
		}
	}
}

extension StartViewController {
	private func showAlert(with title: String, and message: String) {
		let alert = UIAlertController(title: title, message: message, preferredStyle: .alert)
		let okAction = UIAlertAction(title: "OK", style: .default)
		alert.addAction(okAction)
		present(alert, animated: true)
	}
}

