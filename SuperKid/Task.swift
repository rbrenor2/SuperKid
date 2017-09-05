//
//  Task.swift
//  SuperKid
//
//  Created by Breno Ramos on 05/09/17.
//  Copyright © 2017 brenor2. All rights reserved.
//

import UIKit

class Task: NSObject {
    
    var taskPoints: Int
    var taskDescription: String
    
    
    init(points: Int, description: String) {
        taskPoints = points
        taskDescription = description
    }

}
