//
//  Team.swift
//  scorecounter
//
//  Created by Egor Bryzgalov on 11/11/22.
//

import Foundation

struct Team: Codable {
    
    var name: String = ""
    var score: Int = 0
    var fouls = 0
//    var players = [Player]()
    var history = [GameHistory]()
//
}
