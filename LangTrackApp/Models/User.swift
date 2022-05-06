//
//  User.swift
//  LangTrackApp
//
//  Created by Easter Bunny on 2020-02-04.
//  Copyright © 2020 Easter Bunny. All rights reserved.
//

import Foundation

struct User: Codable {
    var id = ""
    var userName = ""
    var userEmail = ""
    
    init(userName: String, mail: String) {
        self.userName = userName
        self.userEmail = mail
    }
}
