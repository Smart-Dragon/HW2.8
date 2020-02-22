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
    
    // MARK: - Private Methods
    
    private func setupUI() {
        questImageView.image = UIImage(named: quest.image)
        questPersonsLabel.text = String(quest.maxPersons)
        questTimeLabel.text = "\(quest.time) мин."
        questComplexityLabel.text = quest.complexity.rawValue
        questLocationButton.setTitle(quest.address, for: .normal)
    }

}
