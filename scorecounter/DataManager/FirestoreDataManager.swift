//
//  FirestoreDataManager.swift
//  scorecounter
//
//  Created by Egor Bryzgalov on 11/11/22.
//

import Foundation
import FirebaseFirestore

class FirestoreDataManager: ObservableObject {
    
    @Published private(set) var game = Game()
    @Published var activeTeam = HomeAway.HOME
    @Published private(set) var time: String = "12:00"
    @Published private(set) var period = 1
    @Published private(set) var isTimerOn = false
    @Published private(set) var actionType = ""
    @Published var viewSwitcher = ViewSwitcher()

    private var dataManager = DataManager()
    private let db = Firestore.firestore()
    
    private var ghRec = GameHistory()

    private var timer = Timer()
    private var counter = 720
    
    func addPoints(record: (GameHistoryEnum, String)) {
                
        if activeTeam == .HOME {
            handlePoints(.HOME, (record))
        }
        
        if activeTeam == .AWAY {
            handlePoints(.AWAY, (record))
        }
        
    }
    
    private func handlePoints(_ team: HomeAway, _ record: (GameHistoryEnum, String)) {
        if ghRec.time.isEmpty {
            ghRec = GameHistory(time: self.time, period: period)
        }
        
        if record.0 == GameHistoryEnum.PLAYER {
            ghRec.player = record.1
        }
        if record.0 == GameHistoryEnum.ASSTPLAYER {
            if !record.1.isEmpty {
                ghRec.asstPlayer = record.1
            } else {
                ghRec.asstPlayer = "-"
            }
            commitScore()
        }
        if record.0 == GameHistoryEnum.POINTS {
            if record.1 != "0" {
                ghRec.points = Int(record.1) ?? 0
            } else {
                ghRec.points = 0
                if team == .HOME {
                    game.home.history.append(ghRec)
                }
                if team == .AWAY {
                    game.away.history.append(ghRec)
                }
                ghRec = GameHistory()
            }
        }
        print(game.home.history)
    }
    
    func commitScore() {
        if activeTeam == .HOME {
            game.home.history.append(ghRec)
            game.home.score += ghRec.points
        }
        if activeTeam == .AWAY {
            game.away.history.append(ghRec)
            game.away.score += ghRec.points
        }
        ghRec = GameHistory()
    }
    
    func madeRebound(record: GameHistoryEnum) {
        if record == GameHistoryEnum.OFF {
            ghRec.off = true
        }
        if record == GameHistoryEnum.DEFF {
            ghRec.deff = true
        }
        commitScore()
        print(game.home.history)
        ghRec = GameHistory()
    }
    
    func madeTurnover() {
        ghRec.turnover = true
        commitScore()
        print(game.home.history)
        ghRec = GameHistory()
    }
    
    
    
//    func getScore(team: HomeAway) -> 
    func addTeam(team: Team) {
        
        let data = buildTeam(team: team)
        db.collection("team").document(team.name).setData(data)
        
    }
    
    private func addScore(game: Game, date: String, time: String) {
        let data = buildGame(game: game)
        db.collection("game").document(date).collection(game.referee).document(time).setData(data)
    }
    
    func startGame(game: Game, date: String, time: String) {
        db.collection("schedule").document(date).collection(game.referee).document(time).getDocument { (document, error) in
            if let document = document, document.exists {
                if let data = document.data() {
                    let dataDescription = data as [String : Any]
                    print("Document data: \(dataDescription)")
                    self.db.collection("schedule").document(date).collection(game.referee).document(time).delete() { error in
                        if let error = error {
                            print(error)
                        } else {
                            self.db.collection("game").document(date).collection(game.referee).document(time).setData(dataDescription)
                        }
                    }
                }
                
            } else {
                print("Document does not exist")
            }
        }
    }
    
    func scheduleGame(game: Game, date: String, time: String) {
        let data = buildGame(game: game)
        db.collection("schedule").document(date).collection(game.referee).document(time).updateData(data)
    }
    
    func archiveGame(game: Game, date: String) {
        
//        db.collection("archive").document(date).setData(data)
        
    }
    
    func createTeam(team: Team) {
        let data = buildTeam(team: team)
        db.collection("team").document(team.name).setData(data)
    }
    
    private func getRealtimeScore() {
//        db.collection("game").document("11-12-2022").collection("Person").document("1000PM").setData(dataDescription)
//            .addSnapshotListener { documentSnapshot, error in
//              guard let document = documentSnapshot else {
//                print("Error fetching document: \(error!)")
//                return
//              }
//              guard let data = document.data() else {
//                print("Document data was empty.")
//                return
//              }
//              print("Current data: \(data)")
//            }
    }
    
    private func buildTeam(team: Team) -> [String : Any] {
        return [
            "name" : team.name,
            "score" : team.score,
            "players" : buildPlayer(players: team.players)
        ]
    }
    
    private func buildGame(game: Game) -> [String : Any] {
        return [
            "home" : buildTeam(team: game.home),
            "away" : buildTeam(team: game.away),
//            "gameRecords" : buildHistoryRecord(records: game.history),
            "place" : game.place,
            "referee" : game.referee,
            "isScheduled" : game.isScheduled,
            "isEnd" : game.isEnd
        ]
    }
    
    private func buildPlayer(players: [Player]) -> [[String : Any]] {
        var playersDict = [[String : Any]]()
        for player in players {
            let t = ["name" : player.name,
                     "lastName" : player.lastName,
                     "age": player.age,
                     "photo": player.photo ?? ""] as [String : Any]
            playersDict.append(t)
        }
        return playersDict
    }
    
    private func buildHistoryRecord(records: [GameHistory]) -> [[String : Any]] {
        var history = [[String : Any]]()
        for record in records {
            let t = [
                "player" : record.player,
                "time" : record.time,
                "points" : record.points,
                "period" : record.period
            ] as [String : Any]
            history.append(t)
        }
        return history
    }
    
    
    
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
            isTimerOn = timer.isValid
        }
    }
    
    func stopGame() {
        timer.invalidate()
        isTimerOn = timer.isValid
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
