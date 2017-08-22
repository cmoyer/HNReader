//
//  HelperFunctions.swift
//  HNReader
//
//  Created by Chad Moyer on 8/22/17.
//  Copyright © 2017 Chad Moyer. All rights reserved.
//

import Foundation

func timeAgoSinceDate(date:Date, numericDates:Bool) -> String {
    let calendar = NSCalendar.current
    let unitFlags: NSCalendar.Unit = [.second, .minute, .hour, .day, .weekOfYear, .month, .year]
    let now = NSDate()
    let components = (calendar as NSCalendar).components(unitFlags, from: date, to: now as Date, options: [])
    
    if (components.year! >= 2) {
        return "\(components.year!)" + "y"
    } else if (components.year! >= 1){
        if (numericDates){
            return "1y"
        } else {
            return "Last year"
        }
    } else if (components.month! >= 2) {
        return "\(components.month!)" + "m"
    } else if (components.month! >= 1){
        if (numericDates){
            return "1m"
        } else {
            return "Last month"
        }
    } else if (components.weekOfYear! >= 2) {
        return "\(components.weekOfYear!)" + "w"
    } else if (components.weekOfYear! >= 1){
        if (numericDates){
            return "1w"
        } else {
            return "Last week"
        }
    } else if (components.day! >= 2) {
        return "\(components.day!)" + "d"
    } else if (components.day! >= 1){
        if (numericDates){
            return "1d"
        } else {
            return "Yesterday"
        }
    } else if (components.hour! >= 2) {
        return "\(components.hour!)" + "h"
    } else if (components.hour! >= 1){
        if (numericDates){
            return "1h"
        } else {
            return "An hour ago"
        }
    } else if (components.minute! >= 2) {
        return "\(components.minute!)" + "m"
    } else if (components.minute! >= 1){
        if (numericDates){
            return "1m"
        } else {
            return "A minute ago"
        }
    } else if (components.second! >= 3) {
        return "\(components.second!)" + "s"
    } else {
        return "now"
    }
}
