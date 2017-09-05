//
//  JobsTableViewController.swift
//  HNReader
//
//  Created by Chad Moyer on 9/5/17.
//  Copyright © 2017 Chad Moyer. All rights reserved.
//

import UIKit

class JobsTableViewController: UITableViewController, JobsTableViewCellDelegate {

    override func viewDidLoad() {
        super.viewDidLoad()
        tableView.estimatedRowHeight = 70
        tableView.rowHeight = UITableViewAutomaticDimension
    }
    
    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return jobsData.count
    }
    
    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "JobsCell", for: indexPath) as! JobsTableViewCell
        let story = jobsData[indexPath.row]
        
        cell.configureWithStory(story: story as AnyObject)
        cell.delegate = self
        
        return cell
    }
    
    // MARK: JobsTableViewCellDelegate
    
    func jobsTableViewCellDidTouchCell(cell: JobsTableViewCell, sender: AnyObject) {
        // performSegueWithIdentifier("CommentsSegue", sender: self)
    }
    

}
