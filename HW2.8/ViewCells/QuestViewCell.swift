//
//  QuestViewCell.swift
//  HW2.8
//
//  Created by Алексей Маслобоев on 22.02.2020.
//  Copyright © 2020 VIA. All rights reserved.
//

import UIKit

class QuestViewCell: UITableViewCell {
    
    // MARK: - IBOutlets
    
    @IBOutlet weak var questImageView: UIImageView!
    @IBOutlet weak var questNameLabel: UILabel!
    @IBOutlet weak var questComplexityLabel: UILabel!
    @IBOutlet weak var infoView: UIView!
    
    // MARK: - Lifecycle
    
    override func awakeFromNib() {
        addGradient()
    }
    
    // MARK: - Public Methods
    
    func configureCell(quest: Quest) {
        questImageView.image = UIImage(named: quest.image)!
        questNameLabel.text = quest.name
        questComplexityLabel.text = quest.complexity.rawValue
    }
    
    // MARK: - Private Methods
    
    private func addGradient() {
        let gradientLayer = CAGradientLayer()
        gradientLayer.frame = infoView.bounds
        gradientLayer.colors = [
            UIColor(red: 0, green: 0, blue: 0, alpha: 0).cgColor,
            UIColor(red: 0, green: 0, blue: 0, alpha: 0.8).cgColor
        ]
     
        infoView.layer.addSublayer(gradientLayer)
    }
    
}
