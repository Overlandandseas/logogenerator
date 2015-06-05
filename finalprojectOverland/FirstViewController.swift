//
//  FirstViewController.swift
//  finalprojectOverland
//
//  Created by Student on 6/2/15.
//  Copyright (c) 2015 DePaul University. All rights reserved.
//

import UIKit

var lineOne: String = ""
var lineTwo: String = ""

class FirstViewController: UIViewController {

    @IBOutlet weak var secondLinetxt: UITextField!
    @IBOutlet weak var firstLinetxt: UITextField!
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    @IBAction func updateGlobalVar(sender: AnyObject) {
        lineOne = firstLinetxt.text
        lineTwo = secondLinetxt.text
        
    }


}

