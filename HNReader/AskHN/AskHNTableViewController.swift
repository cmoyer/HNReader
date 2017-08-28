//
//  AskHNTableViewController.swift
//  HNReader
//
//  Created by Chad Moyer on 8/24/17.
//  Copyright © 2017 Chad Moyer. All rights reserved.
//

import UIKit

class AskHNTableViewController: UITableViewController, AskHNTableViewCellDelegate {

    override func viewDidLoad() {
        super.viewDidLoad()
        tableView.estimatedRowHeight = 100
        tableView.rowHeight = UITableViewAutomaticDimension
    }
    
    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return askData.count
    }
    
    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "AskHNCell", for: indexPath) as! AskHNTableViewCell
        let story = askData[indexPath.row]
        
        cell.configureWithStory(story: story as AnyObject)
        cell.delegate = self
        
        return cell
    }
    
    override func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        
    }
    
    // Mark: AskHNTableViewCellDelegate
    
    func askHNTableViewCellDidTouchComment(cell: AskHNTableViewCell, sender: AnyObject) {
        // performSegueWithIdentifier("CommentsSegue", sender: self)
    }

}
