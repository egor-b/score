//
//  IsMadeView.swift
//  scorecounter
//
//  Created by Egor Bryzgalov on 11/26/22.
//

import SwiftUI

struct IsMadeView: View {
    
    @ObservedObject var firebase: FirestoreDataManager

    var body: some View {
        VStack {
            Spacer()
            Button() {
                if firebase.viewSwitcher.actionType == .TWO_POINTS || firebase.viewSwitcher.actionType == .THREE_POINTS {
                    firebase.viewSwitcher.isMade.toggle()
                    firebase.viewSwitcher.isAsst.toggle()
                } else {
                    firebase.viewSwitcher.actionType = .NONE
                    firebase.viewSwitcher.isMade.toggle()
                }
                
            } label: {
                Text("Made")
                    .frame(width: UIScreen.main.bounds.width/2, height: 70)
                    .border(.black)
            }
            Spacer()
            Button() {
                firebase.addPoints(record: (.POINTS, "0"))
                firebase.viewSwitcher.actionType = .NONE
                firebase.viewSwitcher.isMade.toggle()
            } label: {
                Text("MISS")
                    .frame(width: UIScreen.main.bounds.width/2, height: 70)
                    .border(.black)
            }
            Spacer()
        }
    }
}

struct IsMadeView_Previews: PreviewProvider {
    static var previews: some View {
        IsMadeView(firebase: FirestoreDataManager())
    }
}
