//
//  HackerNewsAPI.swift
//  HNReader
//
//  Created by Chad Moyer on 7/25/17.
//  Copyright © 2017 Chad Moyer. All rights reserved.
//

import Foundation

enum Endpoint: String {
    case topStories = "/v0/topstories"
    case newStories = "/v0/newstories"
    case showHN = "/v0/showstories"
    case askHN = "/v0/askstories"
    case jobs = "/v0/jobstories"
    case item = "/v0/item/"
}

struct HackerNewsAPI {
    static let baseURLString = "https://hacker-news.firebaseio.com"
}
