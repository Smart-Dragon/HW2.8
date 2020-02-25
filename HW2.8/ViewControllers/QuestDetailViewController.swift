//
//  QuestDetailViewController.swift
//  HW2.8
//
//  Created by Алексей Маслобоев on 22.02.2020.
//  Copyright © 2020 VIA. All rights reserved.
//

import UIKit

class QuestDetailViewController: UIViewController {

    // MARK: - IBOutlets
    
    @IBOutlet weak var questImageView: UIImageView!
    @IBOutlet weak var questPersonsLabel: UILabel!
    @IBOutlet weak var questTimeLabel: UILabel!
    @IBOutlet weak var questComplexityLabel: UILabel!
    @IBOutlet weak var questdescriptionTextView: UITextView!
    @IBOutlet weak var questLocationButton: UIButton!
    
    // MARK: - Public Properties
    
    var quest: Quest!
    
    // MARK: - Lifecycle
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        setupUI()
        showInfo()
    }
    
    // MARK: - IBActions
    
    @IBAction func showLocationAction() {
        let address = quest.address.addingPercentEncoding(withAllowedCharacters: .urlQueryAllowed) ?? ""
        if (canLocationGoogle()) {
            showLocationGoogle(address: address)
        } else {
            if (canLocationApple()) {
                showLocationApple(address: address)
            } else {
                showError("Не найдены карты на устройстве")
            }
        }
    }
    
    
    // MARK: - Private Methods
    
    private func setupUI() {
        questLocationButton.titleLabel?.numberOfLines = 0
    }
    
    private func showInfo() {
        title = quest.name
        questImageView.image = UIImage(named: quest.image)
        questPersonsLabel.text = String(quest.maxPersons)
        questTimeLabel.text = "\(quest.time) мин."
        questComplexityLabel.text = quest.complexity.rawValue
        questdescriptionTextView.text = quest.description
        questLocationButton.setTitle(quest.address, for: .normal)
    }
    
    private func canLocationGoogle() -> Bool {
        if let url = URL(string: "comgooglemaps://") {
            return UIApplication.shared.canOpenURL(url)
        }
        return false
    }
    
    private func canLocationApple() -> Bool {
        if let url = URL(string:"http://maps.apple.com") {
            return UIApplication.shared.canOpenURL(url)
        }
        return false
    }
    
    private func showLocationGoogle(address: String) {
        if let url = URL(string: "comgooglemaps://?q=\(address)") {
            UIApplication.shared.open( url, options: [:])
        }
    }
    
    private func showLocationApple(address: String) {
        if let url = URL(string: "http://maps.apple.com/?q=\(address)") {
            UIApplication.shared.open( url, options: [:])
        }
    }
    
    private func showError(_ message: String) {
        let alert = UIAlertController(title: "Ошибка", message: message, preferredStyle: .alert)
        alert.addAction(UIAlertAction(title: "Ok", style: .default))
    }
}
