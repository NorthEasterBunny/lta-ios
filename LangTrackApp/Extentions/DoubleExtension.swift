//
//  DoubleExtension.swift
//  LangTrackApp
//
//  Created by Easter Bunny on 2021-03-14.
//  Copyright © 2021 Easter Bunny. All rights reserved.
//

import Foundation

extension Double {
    func round(to places: Int) -> Double {
        let divisor = pow(10.0, Double(places))
        return (self * divisor).rounded() / divisor
    }
}
