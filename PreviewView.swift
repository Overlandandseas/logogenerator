//
//  PreviewView.swift
//  finalprojectOverland
//
//  Created by Student on 6/2/15.
//  Copyright (c) 2015 DePaul University. All rights reserved.
//

import UIKit

class PreviewView: UIView {

    /*
    // Only override drawRect: if you perform custom drawing.
    // An empty implementation adversely affects performance during animation.
    override func drawRect(rect: CGRect) {
        // Drawing code
    }
    */
    
    
    override func drawRect(rect: CGRect) {
        //yeah
        let bw = bounds.width
        let bh = bounds.height
        
        
        //SQUARE
        let rect = CGRect(x: 50, y: bounds.height/2 - (bounds.width - 100)/2, width: bounds.width - 100, height: bounds.width - 100)
        let context = UIGraphicsGetCurrentContext()

        //color and width
        CGContextSetLineWidth(context, 2)
        CGContextSetStrokeColorWithColor(context, UIColor.whiteColor().CGColor)
        
        if selectedIndex == 0{
            
            //SQUARE
            CGContextStrokeRect(context, rect)
        } else if selectedIndex == 1 {
            
            //DIMOND
            CGContextMoveToPoint(context, bounds.width/2, bounds.height/2 - 150)
            CGContextAddLineToPoint(context, bounds.width-50, bounds.height/2)
            CGContextAddLineToPoint(context, bounds.width/2, bounds.height/2 + 150)
            CGContextAddLineToPoint(context, 50, bounds.height/2)
            CGContextClosePath(context)
            CGContextStrokePath(context)
        } else if selectedIndex == 2 {
            
            //CIRCLE
            CGContextStrokeEllipseInRect(context, rect)
        } else if selectedIndex == 3 {
            
            //UNDERLINE
            //let underline = UIGraphicsGetCurrentContext()
            CGContextSetLineWidth(context, 1)
            CGContextMoveToPoint(context, 100, bounds.height/2 + 20)
            CGContextAddLineToPoint(context, bounds.width - 100, bounds.height/2 + 20)
            CGContextStrokePath(context)
        } else if selectedIndex == 4 {
            let idh = (bh/2 - (bw - 100)/2) + 15
            var idw: CGFloat = 50
            //X SHAPE
            CGContextSetLineWidth(context, 1)
            
            CGContextMoveToPoint(context, idw, idh)
            CGContextAddLineToPoint(context, (idw + (bw - 100)/4), (idh + (bw - 100)/4))
            
            CGContextMoveToPoint(context, idw, idh + (bw - 100))
            CGContextAddLineToPoint(context, idw + (bw - 100)/4, idh + 3*(bw - 100)/4)
            
            CGContextMoveToPoint(context, idw + bw - 100, idh)
            CGContextAddLineToPoint(context, idw + 3*(bw - 100)/4, idh + (bw - 100)/4)
            
            CGContextMoveToPoint(context, idw + bw - 100, idh + bw - 100)
            CGContextAddLineToPoint(context, idw + 3*(bw - 100)/4, idh + 3*(bw - 100)/4)
            
            CGContextStrokePath(context)
        } else if selectedIndex == 5 {
            
            //HorizonTolLines
            CGContextSetLineWidth(context, 1)
            
            CGContextMoveToPoint(context, 25, bh/2 + 20)
            CGContextAddLineToPoint(context, 50 + (bw - 100)/6, bh/2 + 20)
            
            CGContextMoveToPoint(context, 50 + 5*(bw - 100)/6, bh/2 + 20)
            CGContextAddLineToPoint(context, 75 + bw - 100, bh/2 + 20)
            
            CGContextStrokePath(context)
        }
        
        
        
        
    }

}
