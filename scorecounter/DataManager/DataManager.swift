//
//  DataManager.swift
//  scorecounter
//
//  Created by Egor Bryzgalov on 11/12/22.
//

import Foundation

class DataManager: ObservableObject {
    
    @Published private(set) var timer: String = "00:00"
    
    private func convertSecondsToTime(second: Int) -> String {
        let seconds = second % 60
        let minutes = (second / 60) % 60
        return String(format: "%02d:%02d", minutes, seconds)
    }
    
}
