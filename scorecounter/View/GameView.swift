//
//  ContentView.swift
//  scorecounter
//
//  Created by Egor Bryzgalov on 11/11/22.
//

import SwiftUI

struct GameView: View {
    
    @ObservedObject var firebaseDataManager: FirestoreDataManager
    @State private var isTeamPickerActive = false
    @State private var isMade = false
    @State private var isAssistActive = false
    @State private var isAssistTeamActive = false
    @State private var isShow = false
//    @State private var isShowSchedule = false
//    @State private var score = 0
    
    var body: some View {
        VStack {
            HStack {
                GameTeamInfoView(firebase: firebaseDataManager, team: .HOME)
                    .padding(.vertical, 5)
                Spacer()
                ScoreMiddleView(firebase: firebaseDataManager)
                Spacer()
                GameTeamInfoView(firebase: firebaseDataManager, team: .AWAY)
                    .padding(.trailing, 5)
            }.overlay(
                RoundedRectangle(cornerRadius: 15)
                    .stroke(Color.black, lineWidth: 1)
            )
            .padding(10)
            Spacer()
            if isTeamPickerActive {
                TeamPickerView(isTeamActive: $isTeamPickerActive, isMadeActive: $isMade, firebase: firebaseDataManager, team: .HOME)
            } else if isMade {
                IsMadeView(isMadeActive: $isMade, isAssistActive: $isAssistActive, firebase: firebaseDataManager)
            } else if isAssistActive {
                IsAssistView(isAssistActive: $isAssistActive, isAssistTeamActive: $isAssistTeamActive, firebase: firebaseDataManager)
            } else if isAssistTeamActive {
                AssistView(isAssistTeamActive: $isAssistTeamActive, firebase: firebaseDataManager)
            } else {
                ScorePickerView(isActive: $isTeamPickerActive, firebase: firebaseDataManager, team: .HOME)
                Spacer()
                ScorePickerView(isActive: $isTeamPickerActive, firebase: firebaseDataManager, team: .AWAY)
            }
            
            
            if firebaseDataManager.actionType == "2P" || firebaseDataManager.actionType == "3P" {
                
            }
            
            Spacer()
        }
        
    }
}

struct GameView_Previews: PreviewProvider {
    static var previews: some View {
        GameView(firebaseDataManager: FirestoreDataManager())
    }
}
