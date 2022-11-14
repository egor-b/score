//
//  ContentView.swift
//  scorecounter
//
//  Created by Egor Bryzgalov on 11/11/22.
//

import SwiftUI

struct GameView: View {
    
    @StateObject private var firebaseDataManager = FirestoreDataManager()
    @StateObject private var dataManager = DataManager()
    @State private var team = [Player]()
    @State private var isActive = false
    @State var player = ""
    
    var body: some View {
        ZStack {
            VStack {
                ScoreBoardView(period: 1, game: firebaseDataManager.game)
                    .background(
                        RoundedRectangle(cornerRadius: 25)
                            .fill(Color.white)
                            .shadow(color: .black.opacity(0.7), radius: 15)
                    ).padding(.horizontal)
                
                Text(dataManager.timer)
                    .font(.system(size: 60))
                    .bold()
                    .foregroundColor(.red)
                    .fixedSize(horizontal: false, vertical: true)
                    .lineLimit(1)
                    .multilineTextAlignment(.center)
                    .frame(maxWidth: .infinity, alignment: .center)
                    .padding()
                
                HStack {
                    Spacer()
                    Button() {
                        print("Start game")
                    } label: {
                        Text("Start")
                            .font(.system(size: 25))
                            .foregroundColor(.white)
                            .bold()
                    }
                    .frame(width: 200,height: 50)
                    .background(RoundedRectangle(cornerRadius: 20)
                        .fill(.red))
                    Spacer()
                    Button() {
                        print("End game")
                    } label: {
                        Text("End")
                            .font(.system(size: 25))
                            .foregroundColor(.white)
                    }
                    .frame(width: 200,height: 50)
                    .background(RoundedRectangle(cornerRadius: 20)
                        .fill(.black))
                    Spacer()
                }
                Spacer()
                HStack {
                    VStack {
                        
                        Button() {
                            team = firebaseDataManager.game.teamOne.players
                            isActive.toggle()
                            //                            firebaseDataManager.addScore(score: 2, team: 1, record: GameHistory())
                        } label: {
                            Text("2")
                                .foregroundColor(.white)
                                .font(.system(size: 30))
                                .bold()
                                .frame(width: 150, height: 150)
                        }
                        .frame(width: 150, height: 150)
                        .background(.yellow)
                        .sheet(isPresented: $isActive) {
                            TeamView(player: [Player(name: "Player", lastName: "1", age: 3), Player(name: "Player", lastName: "2", age: 3), Player(name: "Player", lastName: "3", age: 3), Player(name: "Player", lastName: "4", age: 3), Player(name: "Player", lastName: "5", age: 3)])
                        }
                        
                        HStack {
                            Button() {
                                team = firebaseDataManager.game.teamOne.players
                                //                                firebaseDataManager.addScore(score: 3, team: 1, record: GameHistory())
                            } label: {
                                Text("3")
                                    .foregroundColor(.white)
                                    .font(.system(size: 30))
                                    .bold()
                                    .frame(width: 75, height: 75)
                            }
                            .frame(width: 75, height: 75)
                            .background(.red)
                            
                            Button() {
                                team = firebaseDataManager.game.teamOne.players
                                //                                firebaseDataManager.addScore(score: 1, team: 1, record: GameHistory())
                            } label: {
                                Text("1")
                                    .foregroundColor(.white)
                                    .font(.system(size: 30))
                                    .bold()
                                    .frame(width: 75, height: 75)
                            }
                            .frame(width: 75, height: 75)
                            .background(.black)
                        }
                    }.padding()
                    Spacer()
                    VStack {
                        Button() {
                            team = firebaseDataManager.game.teamTwo.players
                            //                            firebaseDataManager.addScore(score: 2, team: 2, record: GameHistory())
                        } label: {
                            Text("2")
                                .foregroundColor(.white)
                                .font(.system(size: 30))
                                .bold()
                                .frame(width: 150, height: 150)
                        }
                        .frame(width: 150, height: 150)
                        .background(.yellow)
                        
                        HStack {
                            Button() {
                                team = firebaseDataManager.game.teamTwo.players
                                //                                firebaseDataManager.addScore(score: 1, team: 2, record: GameHistory())
                            } label: {
                                Text("1")
                                    .foregroundColor(.white)
                                    .font(.system(size: 30))
                                    .bold()
                                    .frame(width: 75, height: 75)
                            }
                            .frame(width: 75, height: 75)
                            .background(.black)
                            
                            Button() {
                                team = firebaseDataManager.game.teamTwo.players
                                //                                firebaseDataManager.addScore(score: 3, team: 2, record: GameHistory())
                            } label: {
                                Text("3")
                                    .foregroundColor(.white)
                                    .font(.system(size: 30))
                                    .bold()
                                    .frame(width: 75, height: 75)
                            }
                            .frame(width: 75, height: 75)
                            .background(.red)
                        }
                    }.padding()
                }
                Spacer()
            }
            .padding()
            
        }
    }
}

struct GameView_Previews: PreviewProvider {
    static var previews: some View {
        GameView()
    }
}
