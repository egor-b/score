//
//  TeamView.swift
//  scorecounter
//
//  Created by Egor Bryzgalov on 11/13/22.
//

import SwiftUI

struct TeamView: View {
    
    @Environment (\.presentationMode) var presentationMode
    
    var player: [Player]
    
    var body: some View {
        VStack {
            HStack {
                Button() {
                    presentationMode.wrappedValue.dismiss()
                } label: {
                    VStack {
                        Image(systemName: "person.circle.fill")
                            .font(.system(size: 80))
                            .foregroundColor(.gray)
                        Text("\(player[0].name) \n \(player[0].lastName)")
                            .foregroundColor(.black)
                    }
                }
                Spacer()
                
                Button() {
                    
                } label: {
                    VStack {
                        Image(systemName: "person.circle.fill")
                            .font(.system(size: 80))
                            .foregroundColor(.gray)
                        Text("\(player[1].name) \n \(player[1].lastName)")
                            .foregroundColor(.black)
                    }
                }
                Spacer()
                
                Button() {
                    
                } label: {
                    VStack {
                        Image(systemName: "person.circle.fill")
                            .font(.system(size: 80))
                            .foregroundColor(.gray)
                        Text("\(player[2].name) \n \(player[2].lastName)")
                            .foregroundColor(.black)
                    }
                }
                Spacer()
            }.padding()
            
            HStack {
                Spacer()
                Button() {
                    
                } label: {
                    VStack {
                        Image(systemName: "person.circle.fill")
                            .font(.system(size: 80))
                            .foregroundColor(.gray)
                        Text("\(player[3].name) \n \(player[3].lastName)")
                            .foregroundColor(.black)
                    }
                }
                Spacer()
                Button() {
                    
                } label: {
                    VStack {
                        Image(systemName: "person.circle.fill")
                            .font(.system(size: 80))
                            .foregroundColor(.gray)
                        Text("\(player[4].name) \n \(player[4].lastName)")
                            .foregroundColor(.black)
                    }
                }
                Spacer()
                
            }.padding()
            
        }.background(.white)
            .cornerRadius(20)
            .padding()
    }
}

struct TeamView_Previews: PreviewProvider {
    static var previews: some View {
        TeamView(player: [Player(name: "Player", lastName: "1", age: 3), Player(name: "Player", lastName: "2", age: 3), Player(name: "Player", lastName: "3", age: 3), Player(name: "Player", lastName: "4", age: 3), Player(name: "Player", lastName: "5", age: 3)])
    }
}
