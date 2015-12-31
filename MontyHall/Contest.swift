//
//  Contest.swift
//  MontyHall
//
//  Created by Edward Loveall on 12/31/15.
//  Copyright © 2015 Edward Loveall. All rights reserved.
//

import Foundation

class Contest {
    var doors: [Door]
    let doorCount = 3

    init() {
        doors = [Door]()

        for _ in 0..<doorCount {
            doors.append(Door())
        }
    }

    func createWinningDoor() {
        let winningDoor = doors[randomDoorIndex()]
        winningDoor.winner = true
    }

    func selectFirstDoor() {
        let door = doors[randomDoorIndex()]
        door.firstPicked = true
    }

    func randomDoorIndex() -> Int {
        return Int.random(doorCount)
    }

    func revealBadDoor() {
        let badDoors = remainingLoosingDoors()
        let revealed = badDoors[Int.random(badDoors.count)]
        revealed.revealed = true
    }

    func selectFinalDoor() {
        let finalDoors = doors.filter({
            $0.revealed == false &&
                $0.firstPicked == false
        })
        for door in finalDoors {
            door.finalPicked = true
        }
    }

    func remainingLoosingDoors() -> [Door] {
        return doors.filter({
            $0.winner == false &&
                $0.firstPicked == false
        })
    }

    func isWon() -> Bool {
        let finalWinningDoors = doors.filter({ $0.winner && $0.finalPicked })
        return !finalWinningDoors.isEmpty
    }

    func result() -> String {
        return isWon() ? "Won!" : "Lose"
    }
}