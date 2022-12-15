//
//  DataManager.swift
//  scorecounter
//
//  Created by Egor Bryzgalov on 11/12/22.
//

import Foundation

class DataManager: ObservableObject {
    
    @Published private(set) var time: String = "12:00"
    @Published private(set) var period = 1

    private var timer = Timer()
    private var counter = 720
    
    private func convertSecondsToTime(second: Int) -> String {
        let seconds = second % 60
        let minutes = (second / 60) % 60
        return String(format: "%02d:%02d", minutes, seconds)
    }
    
    func isTimerValid() -> Bool {
        return timer.isValid
    }
    
    
    func startGame() {
        if !timer.isValid {
            timer = Timer.scheduledTimer(timeInterval: 1, target: self, selector: #selector(timerAction), userInfo: nil, repeats: true)
        }
    }
    
    func stopGame() {
        timer.invalidate()
    }
    
    @objc func timerAction() {
        counter -= 1
        time = convertSecondsToTime(second: counter)
        if counter == 0 {
            timer.invalidate()
            counter = 720
            if period != 4 {
                period += 1
            } else {
                period = 1
            }
        }
    }
    
}
