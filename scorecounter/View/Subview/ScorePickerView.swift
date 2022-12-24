//
//  TeamView.swift
//  scorecounter
//
//  Created by Egor Bryzgalov on 11/13/22.
//

import SwiftUI

struct ScorePickerView: View {
    
    @Binding var isActive: Bool
    @ObservedObject var firebase: FirestoreDataManager
    @State var team: HomeAway

    var body: some View {
        VStack {
            if team == HomeAway.HOME {
                Text("HOME TEAM: \(firebase.game.home.name)")
                    .padding(5)
                    .frame(width: UIScreen.main.bounds.width/1.5)
                    .background(.gray)
            } else {
                Text("AWAY TEAM: \(firebase.game.away.name)")
                    .padding(5)
                    .frame(width: UIScreen.main.bounds.width/1.5)
                    .background(.gray)
            }
            HStack {
                Spacer()
                VStack {
                    HStack {
                        Button() {
                            firebase.activeTeam = team
                            firebase.addPoints(record: (GameHistoryEnum.POINTS, "2"))
                            firebase.viewSwitcher.actionType = .TWO_POINTS
                            firebase.viewSwitcher.isShowTeam.toggle()
                        } label: {
                            Text("2P")
                                .foregroundColor(.black)
                                .frame(width: 40, height: 40)
                                .padding()
                        }
                        .overlay(
                            RoundedRectangle(cornerRadius: 40)
                                .stroke(Color.black, lineWidth: 1)
                        )
                        .disabled(!firebase.isTimerOn)
                        .padding(.horizontal, 5)
                        
                        Button() {
                            firebase.activeTeam = team
                            firebase.addPoints(record: (GameHistoryEnum.POINTS, "3"))
                            firebase.viewSwitcher.actionType = .THREE_POINTS
                            firebase.viewSwitcher.isShowTeam.toggle()
                        } label: {
                            Text("3P")
                                .foregroundColor(.black)
                                .frame(width: 40, height: 40)
                                .padding()
                        }.overlay(
                            RoundedRectangle(cornerRadius: 40)
                                .stroke(Color.black, lineWidth: 1)
                        )
                        .disabled(!firebase.isTimerOn)
                        .padding(.horizontal, 5)
                        
                        Button() {
                            firebase.activeTeam = team
                            firebase.addPoints(record: (GameHistoryEnum.POINTS, "1"))
                            firebase.viewSwitcher.actionType = .FT
                            firebase.viewSwitcher.isShowTeam.toggle()
                        } label: {
                            Text("FT")
                                .foregroundColor(.black)
                                .frame(width: 40, height: 40)
                                .padding()
                        }.overlay(
                            RoundedRectangle(cornerRadius: 40)
                                .stroke(Color.black, lineWidth: 1)
                        )
                        .disabled(!firebase.isTimerOn)
                        .padding(.horizontal, 5)
                    }
                    
                    HStack {
                        Button() {
                            firebase.activeTeam = team
                            firebase.viewSwitcher.actionType = .REB
                            firebase.viewSwitcher.isShowTeam.toggle()
                        } label: {
                            Text("REB")
                                .foregroundColor(.black)
                                .frame(width: 40, height: 40)
                                .padding()
                        }.overlay(
                            RoundedRectangle(cornerRadius: 40)
                                .stroke(Color.black, lineWidth: 1)
                        )
                        .disabled(!firebase.isTimerOn)
                        .padding(.horizontal, 5)
                        
                        Button() {
                            firebase.activeTeam = team
                            firebase.viewSwitcher.actionType = .TO
                            firebase.viewSwitcher.isShowTeam.toggle()
                        } label: {
                            Text("TO")
                                .foregroundColor(.black)
                                .frame(width: 40, height: 40)
                                .padding()
                        }.overlay(
                            RoundedRectangle(cornerRadius: 40)
                                .stroke(Color.black, lineWidth: 1)
                        )
                        .disabled(!firebase.isTimerOn)
                        .padding(.horizontal, 5)
                        
                        Button() {
                            firebase.activeTeam = team
                            firebase.viewSwitcher.actionType = .STL
                            firebase.viewSwitcher.isShowTeam.toggle()
                        } label: {
                            Text("STL")
                                .foregroundColor(.black)
                                .frame(width: 40, height: 40)
                                .padding()
                        }.overlay(
                            RoundedRectangle(cornerRadius: 40)
                                .stroke(Color.black, lineWidth: 1)
                        )
                        .disabled(!firebase.isTimerOn)
                        .padding(.horizontal, 5)
                    }
                }.padding(.horizontal)
                Button() {
                    firebase.activeTeam = team
                    firebase.viewSwitcher.actionType = .FOUL

                    firebase.viewSwitcher.isShowTeam.toggle()
                } label: {
                    Text("FOUL")
                        .rotationEffect(.degrees(-90))
                        .foregroundColor(.black)
                        .fixedSize()
                        .frame(width: 20, height: 120)
                        .padding()
                }.overlay(
                    RoundedRectangle(cornerRadius: 10)
                        .stroke(Color.black, lineWidth: 1)
                )
                .disabled(!firebase.isTimerOn)
                .padding(5)
                Spacer()
            }.padding(.vertical)
        }
    }
}

struct ScorePickerView_Previews: PreviewProvider {
    static var previews: some View {
        ScorePickerView(isActive: .constant(true), firebase: FirestoreDataManager(), team: HomeAway.HOME)
    }
}
