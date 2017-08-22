//
//  ShowHNTableViewController.swift
//  HNReader
//
//  Created by Chad Moyer on 8/8/17.
//  Copyright © 2017 Chad Moyer. All rights reserved.
//

import UIKit

class ShowHNTableViewController: UITableViewController, ShowHNTableViewCellDelegate {

    override func viewDidLoad() {
        super.viewDidLoad()
        tableView.estimatedRowHeight = 100
        tableView.rowHeight = UITableViewAutomaticDimension
    }
    
    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return showData.count
    }
    
    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "ShowHNCell", for: indexPath) as! ShowHNTableViewCell
        
        let story = showData[indexPath.row]
        let title = story["title"] as? String
        let source = story["url"] as? String
        let time = story["time"] as? Int
        let timeSince = timeAgoSinceDate(date: Date(timeIntervalSince1970: TimeInterval(time!)), numericDates: true)
        let score = story["score"] as? Int
        let comments = story["descendants"] as? Int
        
        cell.titleLabel.text = title
        cell.timeLabel.text =  timeSince
        cell.sourceLabel.text = source
        cell.upvoteButton.setTitle(String(describing: score!), for: .normal)
        cell.commentButton.setTitle(String(describing: comments!), for: .normal)
        
        cell.delegate = self
        
        return cell
    }
    
    override func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        
    }
    
    // MARK: ShowHNTableViewCellDelegate
    
    func showHNTableViewCellDidTouchComment(cell: ShowHNTableViewCell, sender: AnyObject) {
        // performSegueWithIdentifier("CommentsSegue", sender: self)
    }
}
