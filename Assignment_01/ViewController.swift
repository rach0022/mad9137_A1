//
//  ViewController.swift
//  Assignment_01
//
//  Created by seb on 2020-09-17.
//  Copyright © 2020 seb. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var myTextViewOutlet: UITextView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        myTextViewOutlet.text = "TextView text has been updated.\n"
        
        //test out much schdule and event classes
        let schedule = Schedule()
        
        // Add the initial value fo the event count to the output text string
        myTextViewOutlet.text += "\nEvent Count(PRE): \(schedule.eventCount)\n"
        
        // create 3 test events that will populate the schdule.eventArray
        schedule.addNewEvent(title: "NEO IMPACT", description: "Near Earth Object has been sighted, run!", dateString: "2020/10/30 12:42")
        schedule.addNewEvent(title: "GODZILLA SPOTTED IN JAPAN!", description: "King of Kaijus has been sighted in Japan... What?!?", dateString: "2022/03/30 10:10")
        schedule.addNewEvent(title: "5 Year Anniversary of the 'Almost' Extinction", description: "5 Years later the planet still stands after the impact with a NEO back in 2020", dateString: "2025/10/30 12:00")
        
        // Update the text string with the new event count and the list of events
        myTextViewOutlet.text += "\nEvent Count(POST): \(schedule.eventCount)\n"
        myTextViewOutlet.text += "\nEvents: \n\(schedule.outputAllEvents())"
    }


}

