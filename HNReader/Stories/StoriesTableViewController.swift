//
//  StoriesTableViewController.swift
//  HNReader
//
//  Created by Chad Moyer on 9/6/17.
//  Copyright © 2017 Chad Moyer. All rights reserved.
//

import UIKit

class StoriesTableViewController: UITableViewController, StoriesTableViewCellDelegate {
    
    override func viewDidLoad() {
        super.viewDidLoad()
        tableView.estimatedRowHeight = 100
        tableView.rowHeight = UITableViewAutomaticDimension
    }
    
    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        // TODO: Implement logic to determine if we are using Top Stories or New Stories
        return storiesData.count
    }
    
    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "StoriesCell", for: indexPath) as! StoriesTableViewCell
        
        // TODO: Implement logic to determine if we are using Top Stories or New Stories
        let story = storiesData[indexPath.row]
        
        cell.configureWithStory(story: story as AnyObject)
        cell.delegate = self
        
        return cell
    }
    
    override func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        
    }
    
    // MARK: StoriesTableViewCellDelegate
    
    func storiesTableViewCellDidTouchComment(cell: StoriesTableViewCell, sender: AnyObject) {
        // performSegueWithIdentifier("CommentsSegue", sender: self)
    }
}
