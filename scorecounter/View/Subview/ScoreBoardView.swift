//
//  ScoreBoard.swift
//  scorecounter
//
//  Created by Egor Bryzgalov on 11/11/22.
//

import SwiftUI

struct ScoreBoardView: View {
    
    var period = 1
    var game = Game()
    
    var body: some View {
        VStack {
            Text("Period \(period)")
                .bold()
                .underline()
            HStack {
                Spacer()
                Text(game.teamOne.name)
                    .font(.system(size: 25))
                    .italic().bold()
                    .lineLimit(1)
                                
                Spacer()
                Text("-")
                    .font(.system(size: 50))
                Spacer()
                
                Text(game.teamTwo.name)
                    .font(.system(size: 25))
                    .italic().bold()
                    .lineLimit(1)
                Spacer()

            }
            
            HStack{
                Spacer()
                Text(String(game.teamOne.score))
                    .bold()
                    .font(.system(size: 50))
                
                Text(":")
                    .bold()
                    .font(.system(size: 30))
                
                Text(String(game.teamTwo.score))
                    .bold()
                    .font(.system(size: 50))
                Spacer()
                
            }
            .padding(.bottom)
        }
        .background(.white)
        .padding()
    }
}

struct ScoreBoardView_Previews: PreviewProvider {
    static var previews: some View {
        ScoreBoardView(game: Game(teamOne: Team(name: "Pistons", score: 5, players: [Player(name: "name", lastName: "Last Name", age: 20, photo: nil)]), teamTwo: Team(name: "Raptors", score: 0, players: [Player(name: "name", lastName: "Last Name", age: 20, photo: nil)]), history: [GameHistory()], place: "Basketball field", referee: "Dr.Dre", isEnd: false))
    }
}
