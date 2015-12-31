//
//  Int.swift
//  MontyHall
//
//  Created by Edward Loveall on 12/31/15.
//  Copyright © 2015 Edward Loveall. All rights reserved.
//

import Foundation

extension Int {
    public static func random(upper: Int = 100) -> Int {
        return Int(arc4random_uniform(UInt32(upper)))
    }
}