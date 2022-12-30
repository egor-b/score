//
//  Game.swift
//  scorecounter
//
//  Created by Egor Bryzgalov on 11/11/22.
//

import Foundation

struct Game {
    
    var home: Team = Team(name: "Pistons", score: 0)
    var away: Team = Team(name: "Raptors", score: 0)
    var place: String = "Sportcourt"
    var date: String = ""
    var time: String = ""
    var referee: String = "Person"
    var isEnd: Bool = false
    var isScheduled: Bool = true
    
}
