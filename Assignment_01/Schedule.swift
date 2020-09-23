//
//  Schedule.swift
//  Assignment_01
//
//  Created by seb on 2020-09-21.
//  Copyright © 2020 seb. All rights reserved.
//

import Foundation

class Schedule {
    // properties for the class
    var eventArray: [Event] = []
    
    // Get only property for the count of events
    var eventCount: Int {
        //using a guard statement to check whether the event array has any items
        guard !self.eventArray.isEmpty else {
            return 0
        }
        
        return self.eventArray.count
    }
    
    // Create a new Event Object and push it to the eventArray
    func addNewEvent(title: String, description: String, dateString: String){
        self.eventArray.append(Event(title: title, description: description, dateString: dateString))
    }
    
    // output all events stored within the EventArray
    func outputAllEvents() -> String {
        
        // use a guard statement to check if the event array is empty
        guard !self.eventArray.isEmpty else {
            return "Error: There are no events to output!"
        }
        
        // if the event array is not empty then create an output string
        // that gets concatenated with the string values of each event it contains
        var outputString: String = ""
        
        //loop through each event from 0 to the length using counter = c
        for c in 0 ..< self.eventArray.count {
            outputString += "Event \(c): \(self.eventArray[c].getInfo())\n"
        }
        
        return outputString
    }
}
