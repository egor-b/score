//
//  Game.swift
//  scorecounter
//
//  Created by Egor Bryzgalov on 11/11/22.
//

import Foundation

struct Game {
    
    var home: Team = Team(name: "Pistons", score: 0, players: [Player(name: "Cade", lastName: "Cunningham", age: 20, photo: nil),Player(name: "Jaden", lastName: "Ivey", age: 20, photo: nil),Player(name: "Saddiq", lastName: "Bey", age: 20, photo: nil),Player(name: "Bojan", lastName: "Bogdanovic", age: 20, photo: nil),Player(name: "Isaiah", lastName: "Stewart", age: 20, photo: nil)])
    var away: Team = Team(name: "Raptors", score: 0, players: [Player(name: "Fred ", lastName: "VanVleet ", age: 20, photo: nil),Player(name: "Malachi", lastName: "Flynn", age: 20, photo: nil),Player(name: "Jeff", lastName: "Dowtin", age: 20, photo: nil),Player(name: "Gary", lastName: "Trent Jr.", age: 20, photo: nil),Player(name: "Dalano ", lastName: "Banton", age: 20, photo: nil)])
    var place: String = "Sportcourt"
    var date: String = ""
    var time: String = ""
    var referee: String = "Person"
    var isEnd: Bool = false
    var isScheduled: Bool = true
    
}
