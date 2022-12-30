//
//  OppositeTeamPickerView.swift
//  scorecounter
//
//  Created by Egor Bryzgalov on 12/24/22.
//

import SwiftUI

struct OppositeTeamPickerView: View {
    
    @ObservedObject var firebase: FirestoreDataManager
    @State var title = ""

    var body: some View {
        VStack {
            Text(title)
                .padding(10)
                .frame(width: UIScreen.main.bounds.width/1.5)
                .background(.gray)
            HStack {
                Spacer()
                Button() {
                    if firebase.viewSwitcher.actionType == .STL {
                        firebase.madeSteal((.TURNOVERPLAYER, "1"))
                        firebase.viewSwitcher.actionType = .NONE
                        firebase.viewSwitcher.isPlayerTo.toggle()
                        
                    } else if firebase.viewSwitcher.actionType == .FOUL {
                        firebase.madeFoul((.FOULEDPLAYER, "1"))
                        firebase.viewSwitcher.actionType = .NONE
                        firebase.viewSwitcher.isFoul.toggle()
                    } 
                } label: {
                    Text("1")
                        .foregroundColor(.black)
                        .frame(width: 50, height: 50)
                        .padding()
                }.border(.black).padding(5)
                
                Button() {
                    if firebase.viewSwitcher.actionType == .STL {
                        firebase.madeSteal((.TURNOVERPLAYER, "2"))
                        firebase.viewSwitcher.actionType = .NONE
                        firebase.viewSwitcher.isPlayerTo.toggle()
                        
                    } else if firebase.viewSwitcher.actionType == .FOUL {
                        firebase.madeFoul((.FOULEDPLAYER, "2"))
                        firebase.viewSwitcher.actionType = .NONE
                        firebase.viewSwitcher.isFoul.toggle()
                    }
                } label: {
                    Text("2")
                        .foregroundColor(.black)
                        .frame(width: 50, height: 50)
                        .padding()
                }.border(.black).padding(5)
                
                Button() {
                    if firebase.viewSwitcher.actionType == .STL {
                        firebase.madeSteal((.TURNOVERPLAYER, "3"))
                        firebase.viewSwitcher.actionType = .NONE
                        firebase.viewSwitcher.isPlayerTo.toggle()
                        
                    } else if firebase.viewSwitcher.actionType == .FOUL {
                        firebase.madeFoul((.FOULEDPLAYER, "3"))
                        firebase.viewSwitcher.actionType = .NONE
                        firebase.viewSwitcher.isFoul.toggle()
                    } 
                } label: {
                    Text("3")
                        .foregroundColor(.black)
                        .frame(width: 50, height: 50)
                        .padding()
                }.border(.black).padding(5)
                Button() {
                    if firebase.viewSwitcher.actionType == .STL {
                        firebase.madeSteal((.TURNOVERPLAYER, "4"))
                        firebase.viewSwitcher.actionType = .NONE
                        firebase.viewSwitcher.isPlayerTo.toggle()
                        
                    } else if firebase.viewSwitcher.actionType == .FOUL {
                        firebase.madeFoul((.FOULEDPLAYER, "4"))
                        firebase.viewSwitcher.actionType = .NONE
                        firebase.viewSwitcher.isFoul.toggle()
                    }
                } label: {
                    Text("4")
                        .foregroundColor(.black)
                        .frame(width: 50, height: 50)
                        .padding()
                }.border(.black).padding(5)
                Spacer()
            }.padding(5)
            
            HStack {
                Spacer()
                Button() {
                    if firebase.viewSwitcher.actionType == .STL {
                        firebase.madeSteal((.TURNOVERPLAYER, "5"))
                        firebase.viewSwitcher.actionType = .NONE
                        firebase.viewSwitcher.isPlayerTo.toggle()
                        
                    } else if firebase.viewSwitcher.actionType == .FOUL {
                        firebase.madeFoul((.FOULEDPLAYER, "5"))
                        firebase.viewSwitcher.actionType = .NONE
                        firebase.viewSwitcher.isFoul.toggle()
                    }
                } label: {
                    Text("5")
                        .foregroundColor(.black)
                        .frame(width: 50, height: 50)
                        .padding()
                }.border(.black).padding(5)
                Button() {
                    if firebase.viewSwitcher.actionType == .STL {
                        firebase.madeSteal((.TURNOVERPLAYER, "6"))
                        firebase.viewSwitcher.actionType = .NONE
                        firebase.viewSwitcher.isPlayerTo.toggle()
                        
                    } else if firebase.viewSwitcher.actionType == .FOUL {
                        firebase.madeFoul((.FOULEDPLAYER, "6"))
                        firebase.viewSwitcher.actionType = .NONE
                        firebase.viewSwitcher.isFoul.toggle()
                    }
                } label: {
                    Text("6")
                        .foregroundColor(.black)
                        .frame(width: 50, height: 50)
                        .padding()
                }.border(.black).padding(5)
                Button() {
                    if firebase.viewSwitcher.actionType == .STL {
                        firebase.madeSteal((.TURNOVERPLAYER, "7"))
                        firebase.viewSwitcher.actionType = .NONE
                        firebase.viewSwitcher.isPlayerTo.toggle()
                        
                    } else if firebase.viewSwitcher.actionType == .FOUL {
                        firebase.madeFoul((.FOULEDPLAYER, "7"))
                        firebase.viewSwitcher.actionType = .NONE
                        firebase.viewSwitcher.isFoul.toggle()
                    }
                } label: {
                    Text("7")
                        .foregroundColor(.black)
                        .frame(width: 50, height: 50)
                        .padding()
                }.border(.black).padding(5)
                Button() {
                    if firebase.viewSwitcher.actionType == .STL {
                        firebase.madeSteal((.TURNOVERPLAYER, "8"))
                        firebase.viewSwitcher.actionType = .NONE
                        firebase.viewSwitcher.isPlayerTo.toggle()
                        
                    } else if firebase.viewSwitcher.actionType == .FOUL {
                        firebase.madeFoul((.FOULEDPLAYER, "8"))
                        firebase.viewSwitcher.actionType = .NONE
                        firebase.viewSwitcher.isFoul.toggle()
                    }
                } label: {
                    Text("8")
                        .foregroundColor(.black)
                        .frame(width: 50, height: 50)
                        .padding()
                }.border(.black).padding(5)
                Spacer()
            }.padding(5)
            
            HStack {
                Spacer()
                Button() {
                    if firebase.viewSwitcher.actionType == .STL {
                        firebase.madeSteal((.TURNOVERPLAYER, "9"))
                        firebase.viewSwitcher.actionType = .NONE
                        firebase.viewSwitcher.isPlayerTo.toggle()
                        
                    } else if firebase.viewSwitcher.actionType == .FOUL {
                        firebase.madeFoul((.FOULEDPLAYER, "9"))
                        firebase.viewSwitcher.actionType = .NONE
                        firebase.viewSwitcher.isFoul.toggle()
                    }
                } label: {
                    Text("9")
                        .foregroundColor(.black)
                        .frame(width: 50, height: 50)
                        .padding()
                }.border(.black).padding(5)
                Button() {
                    if firebase.viewSwitcher.actionType == .STL {
                        firebase.madeSteal((.TURNOVERPLAYER, "10"))
                        firebase.viewSwitcher.actionType = .NONE
                        firebase.viewSwitcher.isPlayerTo.toggle()
                        
                    } else if firebase.viewSwitcher.actionType == .FOUL {
                        firebase.madeFoul((.FOULEDPLAYER, "10"))
                        firebase.viewSwitcher.actionType = .NONE
                        firebase.viewSwitcher.isFoul.toggle()
                    }
                } label: {
                    Text("10")
                        .foregroundColor(.black)
                        .frame(width: 50, height: 50)
                        .padding()
                }.border(.black).padding(5)
                Button() {
                    if firebase.viewSwitcher.actionType == .STL {
                        firebase.madeSteal((.TURNOVERPLAYER, "11"))
                        firebase.viewSwitcher.actionType = .NONE
                        firebase.viewSwitcher.isPlayerTo.toggle()
                        
                    } else if firebase.viewSwitcher.actionType == .FOUL {
                        firebase.madeFoul((.FOULEDPLAYER, "11"))
                        firebase.viewSwitcher.actionType = .NONE
                        firebase.viewSwitcher.isFoul.toggle()
                    }
                } label: {
                    Text("11")
                        .foregroundColor(.black)
                        .frame(width: 50, height: 50)
                        .padding()
                }.border(.black).padding(5)
                Button() {
                    if firebase.viewSwitcher.actionType == .STL {
                        firebase.madeSteal((.TURNOVERPLAYER, "12"))
                        firebase.viewSwitcher.actionType = .NONE
                        firebase.viewSwitcher.isPlayerTo.toggle()
                        
                    } else if firebase.viewSwitcher.actionType == .FOUL {
                        firebase.madeFoul((.FOULEDPLAYER, "12"))
                        firebase.viewSwitcher.actionType = .NONE
                        firebase.viewSwitcher.isFoul.toggle()
                    }
                } label: {
                    Text("12")
                        .foregroundColor(.black)
                        .frame(width: 50, height: 50)
                        .padding()
                }.border(.black).padding(5)
                Spacer()
            }.padding(5)
            
        }
    }
}

struct OppositeTeamPickerView_Previews: PreviewProvider {
    static var previews: some View {
        OppositeTeamPickerView(firebase: FirestoreDataManager())
    }
}
