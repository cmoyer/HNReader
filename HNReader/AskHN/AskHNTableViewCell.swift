//
//  AskHNTableViewCell.swift
//  HNReader
//
//  Created by Chad Moyer on 8/24/17.
//  Copyright © 2017 Chad Moyer. All rights reserved.
//

import UIKit

protocol AskHNTableViewCellDelegate: class {
    func askHNTableViewCellDidTouchComment(cell: AskHNTableViewCell, sender: AnyObject)
}

class AskHNTableViewCell: UITableViewCell {

    @IBOutlet weak var titleLabel: UILabel!
    @IBOutlet weak var timeLabel: UILabel!
    @IBOutlet weak var sourceLabel: UILabel!
    @IBOutlet weak var upvoteButton: UIButton!
    @IBOutlet weak var commentButton: UIButton!
    weak var delegate: AskHNTableViewCellDelegate?
    
    @IBAction func commentButtonTouched(sender: AnyObject) {
        delegate?.askHNTableViewCellDidTouchComment(cell: self, sender: sender)
    }
    
    func configureWithStory(story: AnyObject) {
        let title = story["title"] as? String
        let source = story["url"] as? String
        let time = story["time"] as? Int
        let timeSince = timeAgoSinceDate(date: Date(timeIntervalSince1970: TimeInterval(time!)), numericDates: true)
        let score = story["score"] as? Int
        let comments = story["descendants"] as? Int
        
        titleLabel.text = title
        timeLabel.text = timeSince
        sourceLabel.text = source
        upvoteButton.setTitle(String(describing: score!), for: .normal)
        commentButton.setTitle(String(describing: comments!), for: .normal)
    }

}
