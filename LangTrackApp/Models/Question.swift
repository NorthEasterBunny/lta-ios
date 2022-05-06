//
//  Question.swift
//  LangTrackApp
//
//  Created by Easter Bunny on 2020-01-31.
//  Copyright © 2020 Easter Bunny. All rights reserved.
//

import Foundation

class Question : Codable {
    var type: String = Type.header.rawValue
    var id: String = ""
    var previous: Int? = 0
    var index: Int = 0
    var next: Int? = 0
    var title: String = ""
    var text: String = ""
    var description: String = ""
    var likertMax: String = ""
    var likertMin: String = ""
    var fillBlanksChoises: [String]? = nil
    var multipleChoisesAnswers: [String]? = nil
    var singleMultipleAnswers: [String]? = nil
    var skip: SkipLogic? = nil
    var includeIf: IncludeIf? = nil
}
