//
//  Game.swift
//  scorecounter
//
//  Created by Egor Bryzgalov on 11/11/22.
//

import Foundation

struct Game {
    
    var teamOne: Team = Team(name: "team 1", score: 0, players: [Player(name: "name", lastName: "Last Name", age: 20, photo: nil),Player(name: "name", lastName: "Last Name", age: 20, photo: nil),Player(name: "name", lastName: "Last Name", age: 20, photo: nil),Player(name: "name", lastName: "Last Name", age: 20, photo: nil),Player(name: "name", lastName: "Last Name", age: 20, photo: nil)])
    var teamTwo: Team = Team(name: "team 2", score: 0, players: [Player(name: "name", lastName: "Last Name", age: 20, photo: nil)])
    var history = [GameHistory]()
    var place: String = "Sportcourt"
    var referee: String = "Person"
    var isEnd: Bool = false
    var isScheduled: Bool = true
    
}
