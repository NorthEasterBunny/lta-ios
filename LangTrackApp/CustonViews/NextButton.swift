//
//  NextButton.swift
//  LangTrackApp
//
//  Created by Easter Bunny on 2020-03-22.
//  Copyright © 2020 Easter Bunny. All rights reserved.
//

import Foundation
import UIKit

class NextButton: UIButton {
    
    func setEnabled(enabled: Bool){
        self.isEnabled = enabled
        if enabled{
            self.backgroundColor = UIColor(named: "lta_blue")
        }else{
            self.backgroundColor = .lightGray
        }
    }
}
