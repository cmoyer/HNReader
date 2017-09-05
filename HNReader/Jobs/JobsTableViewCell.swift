//
//  JobsTableViewCell.swift
//  HNReader
//
//  Created by Chad Moyer on 9/5/17.
//  Copyright © 2017 Chad Moyer. All rights reserved.
//

import UIKit

protocol JobsTableViewCellDelegate: class {
    func jobsTableViewCellDidTouchCell(cell: JobsTableViewCell, sender: AnyObject)
}

class JobsTableViewCell: UITableViewCell {
    @IBOutlet weak var titleLabel: UILabel!
    @IBOutlet weak var timeLabel: UILabel!
    @IBOutlet weak var sourceLabel: UILabel!
    weak var delegate: JobsTableViewCellDelegate?
    
    @IBAction func commentButtonTouched(sender: AnyObject) {
        delegate?.jobsTableViewCellDidTouchCell(cell: self, sender: sender)
    }
    
    func configureWithStory(story: AnyObject) {
        let title = story["title"] as? String
        let source = story["url"] as? String
        let time = story["time"] as? Int
        let timeSince = timeAgoSinceDate(date: Date(timeIntervalSince1970: TimeInterval(time!)), numericDates: true)
        
        titleLabel.text = title
        timeLabel.text = timeSince
        sourceLabel.text = source
    }
   
}
