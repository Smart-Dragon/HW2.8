//
//  QuestsViewController.swift
//  HW2.8
//
//  Created by Алексей Маслобоев on 22.02.2020.
//  Copyright © 2020 VIA. All rights reserved.
//

import UIKit

class QuestsViewController: UITableViewController {
    
    // MARK: - Private Properties
    
    private let quests = Quest.all
    private let segueDetail = "DetailQuest"
    
    // MARK: - Table view data source

    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        quests.count
    }

    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "questCell", for: indexPath) as! QuestViewCell
        cell.configureCell(quest: quests[indexPath.row])
        return cell
    }
    
    override func tableView(_ tableView: UITableView, heightForRowAt indexPath: IndexPath) -> CGFloat {
        150
    }
    
    // MARK: - Navigation
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        if segue.identifier == segueDetail {
            let detailVC = segue.destination as! QuestDetailViewController
            if let row = tableView.indexPathForSelectedRow?.row {
                detailVC.quest = quests[row]
            }
        }
    }
    
}
