//
//  Item.swift
//  HNReader
//
//  Created by Chad Moyer on 7/25/17.
//  Copyright © 2017 Chad Moyer. All rights reserved.
//

import UIKit

/*
 id: The item's unique id
 deleted: true if the item is deleted
 type: The type of item. One of "job", "story", "comment", "poll", or "pollopt"
 by: The username of the item's author
 time: Creation date of the item, in Unix Time
 text: The comment, story, or poll text. HTML.
 dead: true if the item is dead
 parent: The comment's parent: either another comment or the relevant story
 kids: The ids of the item's comments, in ranked display order
 url: The URL of the story
 score: The story's score, or the votes for a pollopt
 title: The title of the story, poll, or job.
 descendants: In the case of stories or polls, the total comment count
 */

class Item: NSObject {
    var id: Int
    var deleted: Bool?
    var type: String?
    var by: String?
    var time: Double?
    var dead: Bool?
    var parent: String?
    var kids: [Int]?
    var url: String?
    var score: Int?
    var title: String?
    var descendants: Int?
    
    init(id: Int, deleted: Bool?, type: String?, by: String?, time: Double?, dead: Bool?, parent: String?, kids: [Int]?, url: String?, score: Int?, title: String?, descendants: Int?) {
        self.id = id
        self.deleted = deleted
        self.type = type
        self.by = by
        self.time = time
        self.dead = dead
        self.parent = parent
        self.kids = kids
        self.url = url
        self.score = score
        self.title = title
        self.descendants = descendants
        
        super.init()
    }
    
}
