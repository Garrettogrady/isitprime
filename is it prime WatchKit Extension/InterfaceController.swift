//
//  InterfaceController.swift
//  is it prime WatchKit Extension
//
//  Created by Garrett O'Grady on 4/10/15.
//  Copyright (c) 2015 heyogrady. All rights reserved.
//

import WatchKit
import Foundation


class InterfaceController: WKInterfaceController {

    @IBOutlet var resultLabel: WKInterfaceLabel!
    @IBOutlet var isPrimeLabel: WKInterfaceLabel!
    var number = 50
    @IBAction func sliderMoved(value: Float) {
        
        number = Int(value * 100)
        isPrimeLabel.setText("Is \(number) Prime?")
    }
    @IBAction func findOut() {
        
        var isPrime = true
        
        if (number == 1 || number == 2 )
        {
            isPrime = false
        }
        
        if (number != 2 && number != 1)
        {
            
            for (var i = 2; i < number; i++)
            {
                
                if (number%i == 0)
                {
                    isPrime = false
                }
                
            }
        }
        
        if (isPrime)
        {
            resultLabel.setText("\(number) is prime")
        }
        else {
            resultLabel.setText("\(number) is NOT prime")
        }
        
    }
    override func awakeWithContext(context: AnyObject?) {
        super.awakeWithContext(context)
        
        // Configure interface objects here.
    }

    override func willActivate() {
        // This method is called when watch view controller is about to be visible to user
        super.willActivate()
    }

    override func didDeactivate() {
        // This method is called when watch view controller is no longer visible
        super.didDeactivate()
    }

}
