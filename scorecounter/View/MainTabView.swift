//
//  TabView.swift
//  scorecounter
//
//  Created by Egor Bryzgalov on 11/11/22.
//

import SwiftUI

struct MainTabView: View {
    
    @StateObject private var firestoreDataManager = FirestoreDataManager()
    
    var body: some View {
        TabView {
            GameView(firebaseDataManager: firestoreDataManager)
                .tabItem {
                    Label("Game", systemImage: "figure.basketball")
                }
//            ScoreView(firebaseDataManager: firestoreDataManager)
//                .tabItem {
//                    Label("Score", systemImage: "sportscourt")
//                }
            SettingsView()
                .tabItem {
                    Label("Settings", systemImage: "gear")
                }
        }
        .onAppear {
            let appearance = UITabBarAppearance()
            appearance.backgroundEffect = UIBlurEffect(style: .systemUltraThinMaterial)
            appearance.backgroundColor = UIColor(Color.clear)
            UITabBar.appearance().standardAppearance = appearance
            UITabBar.appearance().scrollEdgeAppearance = appearance
        }
        
    }
}

struct TabView_Previews: PreviewProvider {
    static var previews: some View {
        MainTabView()
    }
}
