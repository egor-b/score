//
//  Team.swift
//  scorecounter
//
//  Created by Egor Bryzgalov on 11/11/22.
//

import Foundation

struct Team: Codable {
    
    var name: String
    var score: Int
    var players: [Player]
    
    init(name: String, score: Int, players: [Player]) {
        self.name = name
        self.score = score
        self.players = players
    }
    
    enum CodingKeys: String, CodingKey {
        case name, score, players
    }
    
    init(from decoder: Decoder) throws {
        let values = try decoder.container(keyedBy: CodingKeys.self)
        name = try values.decode(String.self, forKey: .name)
        score = try values.decode(Int.self, forKey: .score)
        players = try values.decode([Player].self, forKey: .players)
    }
    
    func encode(to encoder: Encoder) throws {
        var container = encoder.container(keyedBy: CodingKeys.self)
        try container.encode(name, forKey: .name)
        try container.encode(score, forKey: .score)
        try container.encode(players, forKey: .players)
    }
    
}
