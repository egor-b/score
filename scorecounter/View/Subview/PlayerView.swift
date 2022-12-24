//
//  PlayerView.swift
//  scorecounter
//
//  Created by Egor Bryzgalov on 12/24/22.
//

import SwiftUI

struct PlayerView: View {
    
    @ObservedObject var firebase: FirestoreDataManager
    @State var player: String
    
    var body: some View {
        Button() {
            firebase.addPoints(record: (GameHistoryEnum.PLAYER, player))
            if firebase.viewSwitcher.actionType == .TO {
                firebase.viewSwitcher.actionType = .NONE
                firebase.viewSwitcher.isShowTeam.toggle()
            } else if firebase.viewSwitcher.actionType == .REB {
                firebase.viewSwitcher.isShowTeam.toggle()
                firebase.viewSwitcher.isFfDef.toggle()
            } else if firebase.viewSwitcher.actionType == .STL {
                firebase.viewSwitcher.isPlayerTo.toggle()
                print(firebase.viewSwitcher.isPlayerTo)
                firebase.viewSwitcher.isShowTeam.toggle()
                print(firebase.viewSwitcher.isShowTeam)
            } else if firebase.viewSwitcher.actionType == .FOUL {
                firebase.viewSwitcher.isFoul.toggle()
                firebase.viewSwitcher.isShowTeam.toggle()
            } else {
                firebase.viewSwitcher.isShowTeam.toggle()
                firebase.viewSwitcher.isMade.toggle()
            }
        } label: {
            Text(player)
                .foregroundColor(.black)
                .frame(width: 50, height: 50)
                .padding()
        }.border(.black).padding(5)
        
    }
}

struct PlayerView_Previews: PreviewProvider {
    static var previews: some View {
        PlayerView(firebase: FirestoreDataManager(), player: "4")
    }
}
