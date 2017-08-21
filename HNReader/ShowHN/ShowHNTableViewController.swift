//
//  ShowHNTableViewController.swift
//  HNReader
//
//  Created by Chad Moyer on 8/8/17.
//  Copyright © 2017 Chad Moyer. All rights reserved.
//

import UIKit

class ShowHNTableViewController: UITableViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        tableView.rowHeight = UITableViewAutomaticDimension
        tableView.estimatedRowHeight = 100
    }
    
    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return 4
    }
    
    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "ShowHNCell", for: indexPath)
        
        return cell
    }
    
    override func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        
    }
}
