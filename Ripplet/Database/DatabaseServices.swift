//
//  DatabaseServices.swift
//  Ripplet
//
//  Created by Fabio Quintanilha on 1/9/18.
//  Copyright © 2018 Ripplet. All rights reserved.
//

import Foundation
import FirebaseFirestore

class DatabaseServices {
    
    static let shared = DatabaseServices()

    private var messageListener : ListenerRegistration?
    
    
    private func reference(to collectionReference: DataCollectionReference ) -> CollectionReference {
        return Firestore.firestore().collection(collectionReference.rawValue)
    }
    
    //Function creates a user on the Firestore
    func create(user: User, to collectionReference: DataCollectionReference){
        reference(to: collectionReference).document(user.userID!).setData(user.dictionary)
    }
    
}

