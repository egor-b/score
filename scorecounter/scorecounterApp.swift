//
//  scorecounterApp.swift
//  scorecounter
//
//  Created by Egor Bryzgalov on 11/11/22.
//

import SwiftUI

@main
struct scorecounterApp: App {
    @UIApplicationDelegateAdaptor(AppDelegate.self) var delegate
    var body: some Scene {
        WindowGroup {
            MainTabView()
        }
    }
}
