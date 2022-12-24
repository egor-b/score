//
//  ReboundView.swift
//  scorecounter
//
//  Created by Egor Bryzgalov on 12/24/22.
//

import SwiftUI

struct ReboundView: View {
    
    @ObservedObject var firebase: FirestoreDataManager

    var body: some View {
        VStack {
            Spacer()
            Button() {
                firebase.viewSwitcher.actionType = .NONE
                firebase.viewSwitcher.isFfDef.toggle()
                
            } label: {
                Text("OFF")
                    .frame(width: UIScreen.main.bounds.width/2, height: 70)
                    .border(.black)
            }
            Spacer()
            Button() {
                firebase.viewSwitcher.actionType = .NONE
                firebase.viewSwitcher.isFfDef.toggle()
            } label: {
                Text("DEFF")
                    .frame(width: UIScreen.main.bounds.width/2, height: 70)
                    .border(.black)
            }
            Spacer()
        }
    }
}

struct ReboundView_Previews: PreviewProvider {
    static var previews: some View {
        ReboundView(firebase: FirestoreDataManager())
    }
}
