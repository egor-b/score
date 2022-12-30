//
//  GameTeamInfoView.swift
//  scorecounter
//
//  Created by Egor Bryzgalov on 11/25/22.
//

import SwiftUI

struct GameTeamInfoView: View {
    
    @ObservedObject var firebase: FirestoreDataManager
    @State var team: HomeAway
    var body: some View {
        VStack {
            if team == .HOME {
                Text("HOME")
                    .padding(.bottom, 10)
            } else {
                Text("AWAY")
                    .padding(.bottom, 10)
            }
            
            if team == .HOME {
                Text("\(firebase.game.home.score)")
            }
            if team == .AWAY {
                Text("\(firebase.game.away.score)")
            }
            HStack {
                VStack(alignment: .leading) {
                    Text("")
                        .padding(.bottom, 10)
                    Text("T.O Left")
                        .font(.system(size: 10))
                        .padding(5)
                    Text("Team Fouls")
                        .font(.system(size: 10))
                        .padding(5)
                }
                .padding(.vertical, 5)
                VStack {
                    Text("30s")
                        .font(.system(size: 10))
                        .padding(.vertical, 5)
                    Text("0")
                        .font(.system(size: 10))
                        .padding(.vertical, 5)
                    Text("5")
                        .font(.system(size: 10))
                        .padding(.vertical, 5)
                    
                    
                }
                VStack {
                    Text("Full")
                        .font(.system(size: 10))
                        .padding(.vertical, 5)
                    Text("0")
                        .font(.system(size: 10))
                        .padding(.vertical, 5)
                    if team == .HOME {
                        Text("\(firebase.game.home.fouls)")
                            .font(.system(size: 10))
                            .padding(.vertical, 5)
                    }
                    if team == .AWAY {
                        Text("\(firebase.game.away.fouls)")
                            .font(.system(size: 10))
                            .padding(.vertical, 5)
                    }
                }
            }
        }
    }
}

struct GameTeamInfoView_Previews: PreviewProvider {
    static var previews: some View {
        GameTeamInfoView(firebase: FirestoreDataManager(), team: .HOME)
    }
}
