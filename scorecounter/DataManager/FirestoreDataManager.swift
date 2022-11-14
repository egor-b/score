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
    
    let db = Firestore.firestore()
    
    func addScore(score: Int, team: Int, record: GameHistory) {
        
        if team == 1 {
            game.teamOne.score += score
        }
        
        if team == 2 {
            game.teamTwo.score += score
        }
        
        game.history.append(record)
        addScore(game: game, date: "11-12-2022", time: "1000PM")
        
    }
    
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
    
    private func buildTeam(team: Team) -> [String : Any] {
        return [
            "name" : team.name,
            "score" : team.score,
            "players" : buildPlayer(players: team.players)
        ]
    }
    
    private func buildGame(game: Game) -> [String : Any] {
        return [
            "teamOne" : buildTeam(team: game.teamOne),
            "teamTwo" : buildTeam(team: game.teamTwo),
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
}
