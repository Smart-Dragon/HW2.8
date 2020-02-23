//
//  DevelopersViewController.swift
//  HW2.8
//
//  Created by Алексей Маслобоев on 22.02.2020.
//  Copyright © 2020 VIA. All rights reserved.
//

import UIKit

class DevelopersViewController: UITableViewController {
    
    let developers = Developer.getDevelopers()

    override func viewDidLoad() {
        super.viewDidLoad()

        tableView.tableFooterView = UIView()
        tableView.separatorStyle = .none
        title = "Разработчики"
    }

    // MARK: - Table view data source

    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        developers.count
    }
    
    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
           let cell = tableView.dequeueReusableCell(withIdentifier: "developerCell", for: indexPath)

           let developer = developers[indexPath.row]
        cell.textLabel?.text = developer.fullname
        cell.imageView?.image = UIImage(named: developer.avatarImage)

           return cell
       }
    
    override func tableView(_ tableView: UITableView, heightForRowAt indexPath: IndexPath) -> CGFloat {
        80
    }
    

}
