//
//  main.swift
//  MontyHall
//
//  Created by Edward Loveall on 12/31/15.
//  Copyright © 2015 Edward Loveall. All rights reserved.
//

import Foundation

var contests = [Contest]()

for n in 0..<1000 {
    let contest = Contest()
    contest.createWinningDoor()
    contest.selectFirstDoor()
    contest.revealBadDoor()
    contest.selectFinalDoor()

    contests.append(contest)

    print("\(contest.doors) - \(contest.result())")
}

let lostCount = contests.reduce(0, combine: { $0.0 + ($0.1.isWon() ? 0 : 1) })
let wonCount = contests.reduce(0, combine: { $0.0 + ($0.1.isWon() ? 1 : 0) })

print("Won: \(wonCount)")
print("Lost: \(lostCount)")