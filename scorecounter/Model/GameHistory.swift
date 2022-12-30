//
//  GameHistory.swift
//  scorecounter
//
//  Created by Egor Bryzgalov on 11/12/22.
//

import Foundation

struct GameHistory: Codable {
    
    var player: String = ""
    var asstPlayer: String = ""
    var time: String = ""
    var points: Int = 0
    var period: Int = 0
    var off = false
    var deff = false
    var turnover = false
    var fouledPlaeyr = ""
    var turnoverPlayer = ""
    
}
