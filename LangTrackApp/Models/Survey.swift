//
//  Survey.swift
//  LangTrackApp
//
//  Created by Easter Bunny on 2020-01-31.
//  Copyright © 2020 Easter Bunny. All rights reserved.
//

import Foundation

struct Survey : Codable{
    var id: String = ""//TODO: remove
    var name: String = ""
    var title: String = ""
    var questions = [Question]()
    var respondeddate: String = ""
    var published: String = ""
    var expiry: String = ""
    var answer = [Int:Answer]()
    var updatedAt = ""
    var createdAt = ""
}
