//
//  OppositeTeamPickerView.swift
//  scorecounter
//
//  Created by Egor Bryzgalov on 12/24/22.
//

import SwiftUI

struct OppositeTeamPickerView: View {
    
    @ObservedObject var firebase: FirestoreDataManager

    var body: some View {
        VStack {
            Text("Opposite Team Players")
                .padding(10)
                .frame(width: UIScreen.main.bounds.width/1.5)
                .background(.gray)
            HStack {
                Spacer()
                Button() {
                    if firebase.viewSwitcher.actionType == .STL {
                        firebase.viewSwitcher.actionType = .NONE
                        firebase.viewSwitcher.isPlayerTo.toggle()
                        
                    } else if firebase.viewSwitcher.actionType == .FOUL {
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
                        firebase.viewSwitcher.actionType = .NONE
                        firebase.viewSwitcher.isPlayerTo.toggle()
                        
                    } else if firebase.viewSwitcher.actionType == .FOUL {
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
                        firebase.viewSwitcher.actionType = .NONE
                        firebase.viewSwitcher.isPlayerTo.toggle()
                        
                    } else if firebase.viewSwitcher.actionType == .FOUL {
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
                        firebase.viewSwitcher.actionType = .NONE
                        firebase.viewSwitcher.isPlayerTo.toggle()
                        
                    } else if firebase.viewSwitcher.actionType == .FOUL {
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
                        firebase.viewSwitcher.actionType = .NONE
                        firebase.viewSwitcher.isPlayerTo.toggle()
                        
                    } else if firebase.viewSwitcher.actionType == .FOUL {
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
                        firebase.viewSwitcher.actionType = .NONE
                        firebase.viewSwitcher.isPlayerTo.toggle()
                        
                    } else if firebase.viewSwitcher.actionType == .FOUL {
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
                        firebase.viewSwitcher.actionType = .NONE
                        firebase.viewSwitcher.isPlayerTo.toggle()
                        
                    } else if firebase.viewSwitcher.actionType == .FOUL {
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
                        firebase.viewSwitcher.actionType = .NONE
                        firebase.viewSwitcher.isPlayerTo.toggle()
                        
                    } else if firebase.viewSwitcher.actionType == .FOUL {
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
                        firebase.viewSwitcher.actionType = .NONE
                        firebase.viewSwitcher.isPlayerTo.toggle()
                        
                    } else if firebase.viewSwitcher.actionType == .FOUL {
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
                        firebase.viewSwitcher.actionType = .NONE
                        firebase.viewSwitcher.isPlayerTo.toggle()
                        
                    } else if firebase.viewSwitcher.actionType == .FOUL {
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
                        firebase.viewSwitcher.actionType = .NONE
                        firebase.viewSwitcher.isPlayerTo.toggle()
                        
                    } else if firebase.viewSwitcher.actionType == .FOUL {
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
                        firebase.viewSwitcher.actionType = .NONE
                        firebase.viewSwitcher.isPlayerTo.toggle()
                        
                    } else if firebase.viewSwitcher.actionType == .FOUL {
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
