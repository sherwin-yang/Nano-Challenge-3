//
//  Room.swift
//  
//
//  Created by Sherwin Yang on 15/06/20.
//

import Foundation
import Firebase

struct Room {
    let code: String
    let category: String
    let maxPlayers: Int
    
    let db = Firestore.firestore()
    
    func registerNewRoom(code: String!, category: String!, maxPlayer: Int) {
        db.collection(Constant.FStore.Room.roomCollectionName).addDocument(data: [Constant.FStore.Room.code: code!, Constant.FStore.Room.category: category!, Constant.FStore.Room.maxPlayer: maxPlayer]) { (error) in
            if let e = error {
                print("There was an issue saving data to firestore \(e)")
            }
            else {
                print("Successfully saved data.")
            }
        }
    }
}
