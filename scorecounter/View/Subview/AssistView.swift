//
//  AssistView.swift
//  scorecounter
//
//  Created by Egor Bryzgalov on 11/26/22.
//

import SwiftUI

struct AssistView: View {
    @Binding var isAssistTeamActive: Bool
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
                    isAssistTeamActive.toggle()
                } label: {
                    Text("1")
                        .foregroundColor(.black)
                        .frame(width: 50, height: 50)
                        .padding()
                }.border(.black).padding(5)
                
                Button() {
                    firebase.addPoints(record: (GameHistoryEnum.ASSTPLAYER, "2"))
                    isAssistTeamActive.toggle()
                } label: {
                    Text("2")
                        .foregroundColor(.black)
                        .frame(width: 50, height: 50)
                        .padding()
                }.border(.black).padding(5)
                
                Button() {
                    firebase.addPoints(record: (GameHistoryEnum.ASSTPLAYER, "3"))
                    isAssistTeamActive.toggle()
                } label: {
                    Text("3")
                        .foregroundColor(.black)
                        .frame(width: 50, height: 50)
                        .padding()
                }.border(.black).padding(5)
                
                Button() {
                    firebase.addPoints(record: (GameHistoryEnum.ASSTPLAYER, "4"))
                    isAssistTeamActive.toggle()
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

                    isAssistTeamActive.toggle()
                } label: {
                    Text("5")
                        .foregroundColor(.black)
                        .frame(width: 50, height: 50)
                        .padding()
                }.border(.black).padding(5)
                
                Button() {
                    firebase.addPoints(record: (GameHistoryEnum.ASSTPLAYER, "6"))

                    isAssistTeamActive.toggle()
                } label: {
                    Text("6")
                        .foregroundColor(.black)
                        .frame(width: 50, height: 50)
                        .padding()
                }.border(.black).padding(5)
                
                Button() {
                    firebase.addPoints(record: (GameHistoryEnum.ASSTPLAYER, "7"))

                    isAssistTeamActive.toggle()
                } label: {
                    Text("7")
                        .foregroundColor(.black)
                        .frame(width: 50, height: 50)
                        .padding()
                }.border(.black).padding(5)
                
                Button() {
                    firebase.addPoints(record: (GameHistoryEnum.ASSTPLAYER, "8"))

                    isAssistTeamActive.toggle()
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

                    isAssistTeamActive.toggle()
                } label: {
                    Text("9")
                        .foregroundColor(.black)
                        .frame(width: 50, height: 50)
                        .padding()
                }.border(.black).padding(5)
                
                Button() {
                    firebase.addPoints(record: (GameHistoryEnum.ASSTPLAYER, "10"))

                    isAssistTeamActive.toggle()
                } label: {
                    Text("10")
                        .foregroundColor(.black)
                        .frame(width: 50, height: 50)
                        .padding()
                }.border(.black).padding(5)
                
                Button() {
                    firebase.addPoints(record: (GameHistoryEnum.ASSTPLAYER, "11"))

                    isAssistTeamActive.toggle()
                } label: {
                    Text("11")
                        .foregroundColor(.black)
                        .frame(width: 50, height: 50)
                        .padding()
                }.border(.black).padding(5)
                
                Button() {
                    firebase.addPoints(record: (GameHistoryEnum.ASSTPLAYER, "12"))

                    isAssistTeamActive.toggle()
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
        AssistView(isAssistTeamActive: .constant(true), firebase: FirestoreDataManager())
    }
}
