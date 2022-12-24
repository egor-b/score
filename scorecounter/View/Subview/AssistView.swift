//
//  AssistView.swift
//  scorecounter
//
//  Created by Egor Bryzgalov on 11/26/22.
//

import SwiftUI

struct AssistView: View {

    @ObservedObject var firebase: FirestoreDataManager

    var body: some View {
        VStack {
            Text("Team Players")
                .padding(10)
                .frame(width: UIScreen.main.bounds.width/1.5)
                .background(.gray)
            HStack {
                Spacer()
                Button() {
                    firebase.addPoints(record: (GameHistoryEnum.ASSTPLAYER, "1"))
                    firebase.viewSwitcher.actionType = .NONE
                    firebase.viewSwitcher.isAsstPlayer.toggle()
                } label: {
                    Text("1")
                        .foregroundColor(.black)
                        .frame(width: 50, height: 50)
                        .padding()
                }.border(.black).padding(5)
                
                Button() {
                    firebase.addPoints(record: (GameHistoryEnum.ASSTPLAYER, "2"))
                    firebase.viewSwitcher.actionType = .NONE
                    firebase.viewSwitcher.isAsstPlayer.toggle()
                } label: {
                    Text("2")
                        .foregroundColor(.black)
                        .frame(width: 50, height: 50)
                        .padding()
                }.border(.black).padding(5)
                
                Button() {
                    firebase.addPoints(record: (GameHistoryEnum.ASSTPLAYER, "3"))
                    firebase.viewSwitcher.actionType = .NONE
                    firebase.viewSwitcher.isAsstPlayer.toggle()
                } label: {
                    Text("3")
                        .foregroundColor(.black)
                        .frame(width: 50, height: 50)
                        .padding()
                }.border(.black).padding(5)
                
                Button() {
                    firebase.addPoints(record: (GameHistoryEnum.ASSTPLAYER, "4"))
                    firebase.viewSwitcher.actionType = .NONE
                    firebase.viewSwitcher.isAsstPlayer.toggle()
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
                    firebase.addPoints(record: (GameHistoryEnum.ASSTPLAYER, "5"))
                    firebase.viewSwitcher.actionType = .NONE
                    firebase.viewSwitcher.isAsstPlayer.toggle()
                } label: {
                    Text("5")
                        .foregroundColor(.black)
                        .frame(width: 50, height: 50)
                        .padding()
                }.border(.black).padding(5)
                
                Button() {
                    firebase.addPoints(record: (GameHistoryEnum.ASSTPLAYER, "6"))
                    firebase.viewSwitcher.actionType = .NONE
                    firebase.viewSwitcher.isAsstPlayer.toggle()
                } label: {
                    Text("6")
                        .foregroundColor(.black)
                        .frame(width: 50, height: 50)
                        .padding()
                }.border(.black).padding(5)
                
                Button() {
                    firebase.addPoints(record: (GameHistoryEnum.ASSTPLAYER, "7"))
                    firebase.viewSwitcher.actionType = .NONE
                    firebase.viewSwitcher.isAsstPlayer.toggle()
                } label: {
                    Text("7")
                        .foregroundColor(.black)
                        .frame(width: 50, height: 50)
                        .padding()
                }.border(.black).padding(5)
                
                Button() {
                    firebase.addPoints(record: (GameHistoryEnum.ASSTPLAYER, "8"))
                    firebase.viewSwitcher.actionType = .NONE
                    firebase.viewSwitcher.isAsstPlayer.toggle()
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
                    firebase.addPoints(record: (GameHistoryEnum.ASSTPLAYER, "9"))
                    firebase.viewSwitcher.actionType = .NONE
                    firebase.viewSwitcher.isAsstPlayer.toggle()
                } label: {
                    Text("9")
                        .foregroundColor(.black)
                        .frame(width: 50, height: 50)
                        .padding()
                }.border(.black).padding(5)
                
                Button() {
                    firebase.addPoints(record: (GameHistoryEnum.ASSTPLAYER, "10"))
                    firebase.viewSwitcher.actionType = .NONE
                    firebase.viewSwitcher.isAsstPlayer.toggle()
                } label: {
                    Text("10")
                        .foregroundColor(.black)
                        .frame(width: 50, height: 50)
                        .padding()
                }.border(.black).padding(5)
                
                Button() {
                    firebase.addPoints(record: (GameHistoryEnum.ASSTPLAYER, "11"))
                    firebase.viewSwitcher.actionType = .NONE
                    firebase.viewSwitcher.isAsstPlayer.toggle()
                } label: {
                    Text("11")
                        .foregroundColor(.black)
                        .frame(width: 50, height: 50)
                        .padding()
                }.border(.black).padding(5)
                
                Button() {
                    firebase.addPoints(record: (GameHistoryEnum.ASSTPLAYER, "12"))
                    firebase.viewSwitcher.actionType = .NONE
                    firebase.viewSwitcher.isAsstPlayer.toggle()
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

struct AssistView_Previews: PreviewProvider {
    static var previews: some View {
        AssistView(firebase: FirestoreDataManager())
    }
}
