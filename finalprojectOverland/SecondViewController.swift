//
//  SecondViewController.swift
//  finalprojectOverland
//
//  Created by Student on 6/2/15.
//  Copyright (c) 2015 DePaul University. All rights reserved.
//

import UIKit

class SecondViewController: UIViewController {

    @IBOutlet weak var secondLinePreivewlbl: UILabel!
    @IBOutlet weak var firstlinePreivewlbl: UILabel!
    
    @IBOutlet weak var previewViewItem: PreviewView!
    
    //@IBOutlet weak var imageViewItem: UIImageView!
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        
        let timer = NSTimer.scheduledTimerWithTimeInterval(60/60, target: self, selector: "update:", userInfo: nil, repeats: true)
        
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

    
    func update(timer: NSTimer){
        //indexlbl.text = listOfCrap[selectedIndex]
        
        //update errthang!
        let rect = CGRect(x: 50, y: previewViewItem.bounds.height/2 - (previewViewItem.bounds.width - 100)/2, width: previewViewItem.bounds.width - 100, height: previewViewItem.bounds.width - 100)
        
        
        if lineOne != ""{
            firstlinePreivewlbl.text = lineOne
            secondLinePreivewlbl.text = lineTwo
        }
        
        
        previewViewItem.setNeedsDisplay()
        if useImage && backgroundImage != nil{
            previewViewItem.backgroundColor = UIColor(patternImage: backgroundImage!)
            //imageViewItem.image = backgroundImage
        } else {
            previewViewItem.backgroundColor = UIColor.darkGrayColor()
        }
        
        
    }
    


}

