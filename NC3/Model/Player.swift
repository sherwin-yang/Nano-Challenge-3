//
//  Player.swift
//  
//
//  Created by Sherwin Yang on 15/06/20.
//

import Foundation
import Firebase

struct Player {
    
    let name: String
    let avatar: String
    
    let db = Firestore.firestore()
    
    func registerNewUser(name: String!, avatar: String!) {
        db.collection(Constant.FStore.Player.playerCollectionName).addDocument(data: [Constant.FStore.Player.name: name!, Constant.FStore.Player.avatar: avatar!]) { (error) in
            if let e = error {
                print("There was an issue saving data to firestore \(e)")
            }
            else {
                print("Successfully saved data.")
            }
        }
    }
}
