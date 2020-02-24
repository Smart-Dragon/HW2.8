//
//  DevelopersViewController.swift
//  HW2.8
//
//  Created by Алексей Маслобоев on 22.02.2020.
//  Copyright © 2020 VIA. All rights reserved.
//

import UIKit

class DevelopersViewController: UITableViewController {
    
    // MARK: - Private Properties
    
    private let developers = Developer.getDevelopers()
    
    // MARK: - Lifecycle
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        tableView.tableFooterView = UIView()
        tableView.separatorStyle = .none
    }
    
    // MARK: - Table view data source
    
    override func numberOfSections(in tableView: UITableView) -> Int {
        return developers.count
    }
    
    override func tableView(_ tableView: UITableView, viewForHeaderInSection section: Int) -> UIView? {
        
        let headerView = UIView()
        let label = UILabel(frame: CGRect(x: 20, y: 3, width: 300, height: 20))
        label.text = developers[section].fullname
        label.textColor = .yellow
        
        headerView.addSubview(label)
        return headerView
    }
    
    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        1
    }
    
    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let developer = developers[indexPath.section]
        
        let cell = tableView.dequeueReusableCell(withIdentifier: "developerCell", for: indexPath)
        cell.textLabel?.text = developer.responsibility
        cell.textLabel?.numberOfLines = 0
        cell.imageView?.image = UIImage(named: developer.avatarImage)
        
        return cell
    }
    
    override func tableView(_ tableView: UITableView, heightForRowAt indexPath: IndexPath) -> CGFloat {
        80
    }
    
}
