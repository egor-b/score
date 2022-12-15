//
//  GamePickerView.swift
//  scorecounter
//
//  Created by Egor Bryzgalov on 11/15/22.
//

import SwiftUI

struct GamePickerView: View {
    
    @ObservedObject var dataManager: DataManager
    @Binding var isShowSchedule: Bool
    
    var body: some View {
        
        VStack {
            ForEach(0...3, id: \.self) { btn in
                Button() {
                    dataManager.startGame()
                    isShowSchedule.toggle()
                } label: {
                    HStack {
                        Spacer()
                        Text("Pistons - Raptors")
                            .font(.system(size: 20))
                            .foregroundColor(.black)
                        Text(" / ")
                            .font(.system(size: 20))
                            .foregroundColor(.black)
                        Text("10:00 PM")
                            .font(.system(size: 20))
                            .foregroundColor(.black)
                            .bold()
                        Spacer()
                    }.padding(5)
                }
            }
        }
        .background(.white)
        .padding()
        
        
    }
}

//struct GamePickerView_Previews: PreviewProvider {
//    static var previews: some View {
//        GamePickerView(isShowSchedule: t)
//    }
//}
