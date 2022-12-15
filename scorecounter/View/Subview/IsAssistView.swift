//
//  IsAssistView.swift
//  scorecounter
//
//  Created by Egor Bryzgalov on 11/26/22.
//

import SwiftUI

struct IsAssistView: View {
    
    @Binding var isAssistActive: Bool
    @Binding var isAssistTeamActive: Bool
    @ObservedObject var firebase: FirestoreDataManager

    var body: some View {
        VStack {
            Spacer()
            Button() {
                isAssistActive.toggle()
                isAssistTeamActive.toggle()
            } label: {
                Text("ASST")
                    .frame(width: UIScreen.main.bounds.width/2, height: 70)
                    .border(.black)
            }
            Spacer()
            Button() {
                firebase.addPoints(record: (GameHistoryEnum.ASSTPLAYER, ""))
                isAssistActive.toggle()
            } label: {
                Text("NO ASST")
                    .frame(width: UIScreen.main.bounds.width/2, height: 70)
                    .border(.black)
            }
            Spacer()
        }
    }
}

struct IsAssistView_Previews: PreviewProvider {
    static var previews: some View {
        IsAssistView(isAssistActive: .constant(true), isAssistTeamActive: .constant(false), firebase: FirestoreDataManager())
    }
}
