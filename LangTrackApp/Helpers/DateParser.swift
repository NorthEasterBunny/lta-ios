//
//  DateParser.swift
//  LangTrackApp
//
//  Created by Easter Bunny on 2020-01-31.
//  Copyright © 2020 Easter Bunny. All rights reserved.
//

import Foundation


struct DateParser {
  static let dateFormatter: DateFormatter = {
    let formatter = DateFormatter()
    formatter.locale = Locale.init(identifier: "en")//Locale.current
    //formatter.timeZone = TimeZone(identifier: "UTC")
    return formatter
  }()
    
    //2019-12-29 12:42
    static func displayString(for date: Date) -> String {
        dateFormatter.dateFormat = "yyyy-MM-dd HH:mm"
        return dateFormatter.string(from: date)
    }
    
    static func getDateString(for date: Date) -> String {
        dateFormatter.dateFormat = "yyyy-MM-dd'T'HH:mm:ss.SSSZ"
        return dateFormatter.string(from: date)
    }
    
    static func getDate(dateString: String) -> Date? {
        dateFormatter.dateFormat = "yyyy-MM-dd'T'HH:mm:ss.SSSZ"
        return dateFormatter.date(from: dateString)
    }
    
    static func getLocalTime(date: Date) -> String{
        return DateFormatter.localizedString(from: date, dateStyle: .short, timeStyle: .short)
    }
}
