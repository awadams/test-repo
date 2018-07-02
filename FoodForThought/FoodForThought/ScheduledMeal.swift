//
//  ScheduledMeal.swift
//  FoodForThought
//
//  Created by Andy Adams on 6/29/18.
//  Copyright © 2018 Jordan Ehrenholz. All rights reserved.
//

import UIKit

class ScheduledMeal{

    //MARK: Properties
    var mealName: String
    var startTime: Int
    var duration: Int
 
    init?(mealName: String, startTime: Int, duration: Int) {
        
        // Initialization should fail if there is no name or values are negative
        if mealName.isEmpty || startTime < 0 || duration < 0  {
            return nil
        }
        
        self.mealName = mealName
        self.startTime = startTime
        self.duration = duration
    }
    

}
