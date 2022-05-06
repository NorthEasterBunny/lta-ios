//
//  MenuListener.swift
//  LangTrackApp
//
//  Created by Easter Bunny on 2020-03-24.
//  Copyright © 2020 Easter Bunny. All rights reserved.
//

import Foundation

protocol MenuListener{
    func logOutSelected()
    func setTestMode(to: Bool)
    func setStagingServer(to: Bool)
}
