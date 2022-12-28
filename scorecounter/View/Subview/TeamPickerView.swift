//
//  TeamPickerView.swift
//  scorecounter
//
//  Created by Egor Bryzgalov on 11/25/22.
//

import SwiftUI

struct TeamPickerView: View {
    
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
                PlayerView(firebase: firebase, player: "1")
                PlayerView(firebase: firebase, player: "2")
                PlayerView(firebase: firebase, player: "3")
                PlayerView(firebase: firebase, player: "4")
                Spacer()
            }.padding(5)
            
            HStack {
                Spacer()
                PlayerView(firebase: firebase, player: "5")
                PlayerView(firebase: firebase, player: "6")
                PlayerView(firebase: firebase, player: "7")
                PlayerView(firebase: firebase, player: "8")
                Spacer()
            }.padding(5)
            
            HStack {
                Spacer()
                PlayerView(firebase: firebase, player: "9")
                PlayerView(firebase: firebase, player: "10")
                PlayerView(firebase: firebase, player: "11")
                PlayerView(firebase: firebase, player: "12")
                Spacer()
            }.padding(5)
            
        }
    }
}

struct TeamPickerView_Previews: PreviewProvider {
    static var previews: some View {
        TeamPickerView(firebase: FirestoreDataManager())
    }
}
