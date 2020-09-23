//
//  Event.swift
//  Assignment_01
//
//  Created by seb on 2020-09-21.
//  Copyright © 2020 seb. All rights reserved.
//

import Foundation

// Step 2:
class Event {
    var title: String?
    var description: String?
    var date: Date?
    
    // init function (like a constructor) will set the optional variables
    // title and description
    init(title: String, description: String){
        self.title = title
        self.description = description
    }
    
    // conveience init (like a constructor) allows us to overload the init function
    convenience init(title: String, description: String, dateString: String){
        self.init(title: title, description: description)
        
        //calling our set date function to set the date
        setDate(formatedDateString: dateString)
    }
    
    //copied in set date function
    func setDate(formatedDateString: String){
        let formatting = DateFormatter()
        formatting.dateFormat = "yyyy/MM/dd HH:mm"
        self.date = formatting.date(from: formatedDateString)!
    }
    
    // getInfo function, no input parameters, returns formatted string with
    // date.description, descriptions, title
    func getInfo() -> String {
        var infoString: String = ""
        
        // Check if the title is set and add the title to info string
        if let title = self.title {
            infoString += "Title: \(title)"
        }
        
        // Check if the description is set and add to the info string
        if let description = self.description {
            infoString += " Description: \(description)"
        }
        
        // Check if the date is set and add to the info string
        if let date = self.date {
            infoString += " Date: \(date.description)"
        }
        
        // Return the info string or say no description
        if infoString.isEmpty {
            return "Error: No Values Set!"
        } else {
            return infoString
        }
    }
}
