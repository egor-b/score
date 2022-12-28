//
//  ContentView.swift
//  scorecounter
//
//  Created by Egor Bryzgalov on 11/11/22.
//

import SwiftUI

struct GameView: View {
    
    @ObservedObject var firebaseDataManager: FirestoreDataManager
    
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
           
            
            
            if firebaseDataManager.viewSwitcher.actionType == .TWO_POINTS || firebaseDataManager.viewSwitcher.actionType == .THREE_POINTS {
                if firebaseDataManager.viewSwitcher.isShowTeam {
                    TeamPickerView(firebase: firebaseDataManager, title: "Team Players")
                } else if firebaseDataManager.viewSwitcher.isMade {
                    IsMadeView(firebase: firebaseDataManager)
                } else if firebaseDataManager.viewSwitcher.isAsst {
                    IsAssistView(firebase: firebaseDataManager)
                } else if firebaseDataManager.viewSwitcher.isAsstPlayer {
                    AssistView(firebase: firebaseDataManager)
                }
            } else if firebaseDataManager.viewSwitcher.actionType == .FT {
                if firebaseDataManager.viewSwitcher.isShowTeam {
                    TeamPickerView(firebase: firebaseDataManager, title: "Team Players")
                } else if firebaseDataManager.viewSwitcher.isMade {
                    IsMadeView(firebase: firebaseDataManager)
                }
            } else if firebaseDataManager.viewSwitcher.actionType == .REB {
                if firebaseDataManager.viewSwitcher.isShowTeam {
                    TeamPickerView(firebase: firebaseDataManager, title: "Who made Rebound")
                } else if firebaseDataManager.viewSwitcher.isFfDef {
                    ReboundView(firebase: firebaseDataManager)
                }
            } else if firebaseDataManager.viewSwitcher.actionType == .TO {
                if firebaseDataManager.viewSwitcher.isShowTeam {
                    TeamPickerView(firebase: firebaseDataManager, title: "Wha made Turnover")
                }
            } else if firebaseDataManager.viewSwitcher.actionType == .STL {
                if firebaseDataManager.viewSwitcher.isShowTeam {
                    TeamPickerView(firebase: firebaseDataManager)
                } else if firebaseDataManager.viewSwitcher.isPlayerTo {
                    OppositeTeamPickerView(firebase: firebaseDataManager)
                }
            } else if firebaseDataManager.viewSwitcher.actionType == .FOUL {
                if firebaseDataManager.viewSwitcher.isShowTeam {
                    TeamPickerView(firebase: firebaseDataManager, title: "Wha made steal")
                } else if firebaseDataManager.viewSwitcher.isFoul {
                    OppositeTeamPickerView(firebase: firebaseDataManager)
                }
            }
            else {
                ScorePickerView(isActive: $firebaseDataManager.viewSwitcher.isShowTeam, firebase: firebaseDataManager, team: .HOME)
                Spacer()
                ScorePickerView(isActive: $firebaseDataManager.viewSwitcher.isShowTeam, firebase: firebaseDataManager, team: .AWAY)
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
