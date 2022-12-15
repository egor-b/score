//
//  ScoreMiddleView.swift
//  scorecounter
//
//  Created by Egor Bryzgalov on 11/25/22.
//

import SwiftUI

struct ScoreMiddleView: View {
    
    @ObservedObject var firebase: FirestoreDataManager

    var body: some View {
        VStack {
            Text(firebase.time)
                .padding(.bottom, 20)
            HStack {
                VStack(alignment: .trailing) {
                    Button() {
                        firebase.startGame()
                    } label: {
                        Text("Start")
                            .font(.system(size: 10))
                            .frame(width: UIScreen.main.bounds.width/10)
                    }
                    .padding(.vertical)
                    .border(.black)
                    Button() {
                        
                    } label: {
                        Text("Sub")
                            .font(.system(size: 10))
                            .frame(width: UIScreen.main.bounds.width/10)
                    }
                    .padding(.vertical)
                    .border(.black)
                }
//                .padding(.trailing)
                VStack(alignment: .leading) {
                    Button() {
                        firebase.stopGame()
                    } label: {
                        Text("Stop")
                            .font(.system(size: 10))
                            .frame(width: UIScreen.main.bounds.width/10)
                    }
                    .padding(.vertical)
                    .border(.black)
                    Button() {
                        
                    } label: {
                        Text("Sub Horn")
                            .font(.system(size: 10))
                            .frame(width: UIScreen.main.bounds.width/10)
                    }
                    .padding(.vertical,10)
                    .border(.black)
                }
//                .padding(.leading)
            }
        }
    }
}

struct ScoreMiddleView_Previews: PreviewProvider {
    static var previews: some View {
        ScoreMiddleView(firebase: FirestoreDataManager())
    }
}
