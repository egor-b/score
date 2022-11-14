//
//  SettingsView.swift
//  scorecounter
//
//  Created by Egor Bryzgalov on 11/12/22.
//

import SwiftUI

struct SettingsView: View {
    var body: some View {
        NavigationView {
            List {
                Section(header: Text("Account")) {
                    NavigationLink(destination: Text("info")) {
                        Text("User info")
                    }
                }
                Section(header: Text("Game")) {
                    NavigationLink(destination: Text("Schedule")) {
                        Text("Schedule game")
                    }
                    NavigationLink(destination: Text("modify")) {
                        Text("Modify scheduled game")
                    }
                    NavigationLink(destination: Text("games")) {
                        Text("Show games")
                    }
                }
                Section(header: Text("Team")) {
                    NavigationLink(destination: Text("add")) {
                        Text("Add team")
                    }
                    NavigationLink(destination: Text("modify team")) {
                        Text("Modify team")
                    }
                    NavigationLink(destination: Text("Show teams")) {
                        Text("Show teams")
                    }
                }
                
            }
            .navigationTitle("Settings")
        }
        
    }
}

struct SettingsView_Previews: PreviewProvider {
    static var previews: some View {
        SettingsView()
    }
}
