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
        myTextViewOutlet.text = "TextView text has been updated."
    }


}

