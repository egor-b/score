//
//  IsAssistView.swift
//  scorecounter
//
//  Created by Egor Bryzgalov on 11/26/22.
//

import SwiftUI

struct IsAssistView: View {
    
    @ObservedObject var firebase: FirestoreDataManager

    var body: some View {
        VStack {
            Spacer()
            Button() {
                firebase.viewSwitcher.isAsst.toggle()
                firebase.viewSwitcher.isAsstPlayer.toggle()
            } label: {
                Text("ASST")
                    .frame(width: UIScreen.main.bounds.width/2, height: 70)
                    .border(.black)
            }
            Spacer()
            Button() {
                firebase.addPoints(record: (GameHistoryEnum.ASSTPLAYER, ""))
                firebase.viewSwitcher.actionType = .NONE
                firebase.viewSwitcher.isAsst.toggle()
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
        IsAssistView(firebase: FirestoreDataManager())
    }
}
