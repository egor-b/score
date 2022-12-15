//
//  IsMadeView.swift
//  scorecounter
//
//  Created by Egor Bryzgalov on 11/26/22.
//

import SwiftUI

struct IsMadeView: View {
    
    @Binding var isMadeActive: Bool
    @Binding var isAssistActive: Bool
    
    @ObservedObject var firebase: FirestoreDataManager

    var body: some View {
        VStack {
            Spacer()
            Button() {
                isMadeActive.toggle()
                isAssistActive.toggle()
            } label: {
                Text("Made")
                    .frame(width: UIScreen.main.bounds.width/2, height: 70)
                    .border(.black)
            }
            Spacer()
            Button() {
                firebase.addPoints(record: (.POINTS, "0"))
                isMadeActive.toggle()
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
        IsMadeView(isMadeActive: .constant(true), isAssistActive: .constant(false), firebase: FirestoreDataManager())
    }
}
