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
	
	// MARK: - Lifecycle
	
	override func viewDidLoad() {
		super.viewDidLoad()
		
	}
	
	
	// MARK: - IBActions
	
	@IBAction func nextAction() {
		let lenghtName = userNameTextField.text?.count as! Int
		if userNameTextField.text != "" && lenghtName >= 2 {
			performSegue(withIdentifier: "ShowNext", sender: self)
		} else if userNameTextField.text == "" {
			showAlert(with: "Ошибка!", and: "Введите ваше имя")
			clearTextFields()
		} else if lenghtName <= 2 {
			showAlert(with: "Внимание!", and: "В имени должно быть больше одного символа")
			clearTextFields()
		}
	}
	
	
	override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
		let navigationVC = segue.destination as! UINavigationController
		let barVC = navigationVC.viewControllers.first as! BarViewController
		let helloVC = barVC.viewControllers?.first as! HelloViewController
		helloVC.nameLabelText = "\(userNameTextField.text ?? "Noname")!"
	}

	func clearTextFields() {
		userNameTextField.text = ""
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

