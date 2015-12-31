//
//  Door.swift
//  MontyHall
//
//  Created by Edward Loveall on 12/31/15.
//  Copyright © 2015 Edward Loveall. All rights reserved.
//

import Foundation

class Door: CustomDebugStringConvertible {
    var winner = false
    var firstPicked = false
    var finalPicked = false
    var revealed = false

    var debugDescription: String {
        // x - a loosing door, o - a winning door
        // 1 - first door picked
        // R - loosing door revealed
        // F - final door picked

        var text = ""
        text += winner ? "o" : "x"
        text += firstPicked ? "1" : " "
        text += revealed ? "R" : " "
        text += finalPicked ? "F" : " "

        return text
    }
}