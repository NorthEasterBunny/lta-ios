//
//  TeamMember.swift
//  LangTrackApp
//
//  Created by Easter Bunny on 2022-04-01.
//  Copyright © 2022 Easter Bunny. All rights reserved.
//

import Foundation

class TeamMember{
    var description: [String:String]
    var name: [String:String]
    
    init(name:[String:String],description:[String:String]){
        self.name = name
        self.description = description
    }
}
