//
//  TeamPickerView.swift
//  scorecounter
//
//  Created by Egor Bryzgalov on 11/25/22.
//

import SwiftUI

struct TeamPickerView: View {
    
    @Binding var isTeamActive: Bool
    @Binding var isMadeActive: Bool
    @ObservedObject var firebase: FirestoreDataManager
    @State var team: HomeAway

    var body: some View {
        VStack {
            Text("Team Players")
                .padding(10)
                .frame(width: UIScreen.main.bounds.width/1.5)
                .background(.gray)
            HStack {
                Spacer()
                Button() {
                    firebase.addPoints(record: (GameHistoryEnum.PLAYER, "1"))
                    isTeamActive.toggle()
                    isMadeActive.toggle()
                } label: {
                    Text("1")
                        .foregroundColor(.black)
                        .frame(width: 50, height: 50)
                        .padding()
                }.border(.black).padding(5)
                
                Button() {
                    firebase.addPoints(record: (GameHistoryEnum.PLAYER, "2"))
                    isTeamActive.toggle()
                    isMadeActive.toggle()
                } label: {
                    Text("2")
                        .foregroundColor(.black)
                        .frame(width: 50, height: 50)
                        .padding()
                }.border(.black).padding(5)
                
                Button() {
                    firebase.addPoints(record: (GameHistoryEnum.PLAYER, "3"))
                    isTeamActive.toggle()
                    isMadeActive.toggle()
                } label: {
                    Text("3")
                        .foregroundColor(.black)
                        .frame(width: 50, height: 50)
                        .padding()
                }.border(.black).padding(5)
                
                Button() {
                    firebase.addPoints(record: (GameHistoryEnum.PLAYER, "4"))
                    isTeamActive.toggle()
                    isMadeActive.toggle()
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
                    firebase.addPoints(record: (GameHistoryEnum.PLAYER, "5"))
                    isTeamActive.toggle()
                    isMadeActive.toggle()
                } label: {
                    Text("5")
                        .foregroundColor(.black)
                        .frame(width: 50, height: 50)
                        .padding()
                }.border(.black).padding(5)
                
                Button() {
                    firebase.addPoints(record: (GameHistoryEnum.PLAYER, "6"))
                    isTeamActive.toggle()
                    isMadeActive.toggle()
                } label: {
                    Text("6")
                        .foregroundColor(.black)
                        .frame(width: 50, height: 50)
                        .padding()
                }.border(.black).padding(5)
                
                Button() {
                    firebase.addPoints(record: (GameHistoryEnum.PLAYER, "7"))
                    isTeamActive.toggle()
                    isMadeActive.toggle()
                } label: {
                    Text("7")
                        .foregroundColor(.black)
                        .frame(width: 50, height: 50)
                        .padding()
                }.border(.black).padding(5)
                
                Button() {
                    firebase.addPoints(record: (GameHistoryEnum.PLAYER, "8"))
                    isTeamActive.toggle()
                    isMadeActive.toggle()
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
                    firebase.addPoints(record: (GameHistoryEnum.PLAYER, "9"))
                    isTeamActive.toggle()
                    isMadeActive.toggle()
                } label: {
                    Text("9")
                        .foregroundColor(.black)
                        .frame(width: 50, height: 50)
                        .padding()
                }.border(.black).padding(5)
                
                Button() {
                    firebase.addPoints(record: (GameHistoryEnum.PLAYER, "10"))
                    isTeamActive.toggle()
                    isMadeActive.toggle()
                } label: {
                    Text("10")
                        .foregroundColor(.black)
                        .frame(width: 50, height: 50)
                        .padding()
                }.border(.black).padding(5)
                
                Button() {
                    firebase.addPoints(record: (GameHistoryEnum.PLAYER, "11"))
                    isTeamActive.toggle()
                    isMadeActive.toggle()
                } label: {
                    Text("11")
                        .foregroundColor(.black)
                        .frame(width: 50, height: 50)
                        .padding()
                }.border(.black).padding(5)
                
                Button() {
                    firebase.addPoints(record: (GameHistoryEnum.PLAYER, "12"))
                    isTeamActive.toggle()
                    isMadeActive.toggle()
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

struct TeamPickerView_Previews: PreviewProvider {
    static var previews: some View {
        TeamPickerView(isTeamActive: .constant(true), isMadeActive: .constant(false), firebase: FirestoreDataManager(), team: .HOME)
    }
}
