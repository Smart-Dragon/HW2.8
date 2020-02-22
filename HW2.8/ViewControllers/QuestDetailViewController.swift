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
    @IBOutlet weak var questLocationButton: UIButton!
    
    // MARK: - Public Properties
    
    var quest: Quest!
    
    // MARK: - Lifecycle
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        setupUI()
    }
    
    // MARK: - IBActions
    
    @IBAction func showLocationAction() {
        if (UIApplication.shared.canOpenURL(URL(string: "comgooglemaps://")!)) {
            UIApplication.shared.open(URL(
                string: "comgooglemaps://?q=\(quest.address)")!,
                options: [:],
                completionHandler: nil
            )
        }
        else{
            if (UIApplication.shared.canOpenURL(URL(string:"http://maps.apple.com")!)) {
                UIApplication.shared.open(URL(
                    string: "http://maps.apple.com/?q=\(quest.address)")!,
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
        questImageView.image = UIImage(named: quest.image)
        questPersonsLabel.text = String(quest.maxPersons)
        questTimeLabel.text = "\(quest.time) мин."
        questComplexityLabel.text = quest.complexity.rawValue
        questLocationButton.setTitle(quest.address, for: .normal)
    }

}
