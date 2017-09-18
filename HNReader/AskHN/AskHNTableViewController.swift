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
    
    // MARK: Misc
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        if segue.identifier == "CommentsSegue" {
            let toView = segue.destination as! AskHNCommentsTableViewController
            let indexPath = tableView.indexPath(for: sender as! UITableViewCell)!
            toView.story = askData[indexPath.row] as [String : AnyObject]
        }
    }
    
    // MARK: AskHNTableViewCellDelegate
    
    func askHNTableViewCellDidTouchComment(cell: AskHNTableViewCell, sender: AnyObject) {
        performSegue(withIdentifier: "CommentsSegue", sender: cell)
    }

}
