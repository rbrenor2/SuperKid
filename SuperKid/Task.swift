//
//  Task.swift
//  SuperKid
//
//  Created by Breno Ramos on 05/09/17.
//  Copyright © 2017 brenor2. All rights reserved.
//

import UIKit
import Firebase

class Task: NSObject {
    let taskAddedByUser: String
    var taskStatus: Bool
    let taskPoints: Int
    let taskDescription: String
    let ref : DatabaseReference?
    
    init(addedByUser: String, status: Bool, points: Int, description: String) {
        taskPoints = points
        taskDescription = description
        taskAddedByUser = addedByUser
        taskStatus = status
        ref = nil
    }
    
    init(snapshot: DataSnapshot) {
        let snapshotValue = snapshot.value as! [String: AnyObject]
        taskDescription = snapshotValue["description"] as! String
        taskAddedByUser = snapshotValue["addedByUser"] as! String
        taskStatus = snapshotValue["status"] as! Bool
        taskPoints = snapshotValue["points"] as! Int

        ref = snapshot.ref
    }
    
    

    
    func toAnyObject() -> Any {
        return [
            "addedByUser": taskAddedByUser,
            "status": taskStatus,
            "points": taskPoints,
            "description": taskDescription,
            
        ]
    }

}
