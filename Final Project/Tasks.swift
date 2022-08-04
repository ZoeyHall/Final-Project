//
//  ItineraryTasks.swift
//  Final Project
//
//  Created by scholar on 8/4/22.
//

import UIKit

class Tasks {
    var name = ""
    var time = ""
    var date = ""
    var location = ""
    var important = false
    
    init(taskName : String, taskTime: String, taskDate : String, taskLocation : String, isImportant : Bool) {
      name = taskName
      time = taskTime
      date = taskDate
      location = taskLocation
      important = isImportant
          }
    
   
}
