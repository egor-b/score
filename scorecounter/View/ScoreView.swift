//
//  ScoreView.swift
//  scorecounter
//
//  Created by Egor Bryzgalov on 11/11/22.
//

import SwiftUI

struct ScoreView: View {
    
    @ObservedObject var firebaseDataManager: FirestoreDataManager
    
    var body: some View {
        NavigationView {
            
            List {
                Section("Current game") {
//                    ScoreBoardView(period: 1, game: firebaseDataManager.game)
                }
                Section ("Past games") {
                    ForEach(0...5, id: \.self) { _ in
                        NavigationLink(destination: Text("Game description")) {
//                            ScoreBoardView()
                        }.buttonStyle(PlainButtonStyle())
                    }
                }
            }.navigationTitle(Text("Scoreboard"))
        }
    }
}

//struct ScoreView_Previews: PreviewProvider {
//    static var previews: some View {
//        ScoreView()
//    }
//}
