//
//  ShowHNTableViewCell.swift
//  HNReader
//
//  Created by Chad Moyer on 8/22/17.
//  Copyright © 2017 Chad Moyer. All rights reserved.
//

import UIKit

protocol ShowHNTableViewCellDelegate: class {
    func showHNTableViewCellDidTouchComment(cell: ShowHNTableViewCell, sender: AnyObject)
}

class ShowHNTableViewCell: UITableViewCell {

    @IBOutlet weak var titleLabel: UILabel!
    @IBOutlet weak var timeLabel: UILabel!
    @IBOutlet weak var sourceLabel: UILabel!
    @IBOutlet weak var upvoteButton: UIButton!
    @IBOutlet weak var commentButton: UIButton!
    weak var delegate: ShowHNTableViewCellDelegate?
    
    @IBAction func commentButtonTouched(sender: AnyObject) {
//        print("comment button touched!")
        delegate?.showHNTableViewCellDidTouchComment(cell: self, sender: sender)
    }

}
