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
        if (UIApplication.shared.canOpenURL(URL(string: "comgooglemaps://")!)) {
            UIApplication.shared.open(
                URL(string: "comgooglemaps://?q=\(address)")!,
                options: [:],
                completionHandler: nil
            )
        }
        else{
            if (UIApplication.shared.canOpenURL(URL(string:"http://maps.apple.com")!)) {
                UIApplication.shared.open(
                    URL(string: "http://maps.apple.com/?q=\(address)")!,
                    options: [:],
                    completionHandler: nil
                )
            } else {
                NSLog("Can't use Apple Maps");
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

}
