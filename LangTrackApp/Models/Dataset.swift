//
//  Dataset.swift
//  LangTrackApp
//
//  Created by Easter Bunny on 2020-03-11.
//  Copyright © 2020 Easter Bunny. All rights reserved.
//

import Foundation
class Dataset: Codable {
    
    var createdAt = ""
    var updatedAt = ""
    var answers = [Answer]()
}
