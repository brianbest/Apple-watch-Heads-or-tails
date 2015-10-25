//
//  InterfaceController.swift
//  Apple Watch App WatchKit 1 Extension
//
//  Created by Brian Best on 2015-10-22.
//  Copyright © 2015 Brian Best. All rights reserved.
//

import WatchKit
import Foundation


class InterfaceController: WKInterfaceController {

    @IBOutlet var nameLable: WKInterfaceLabel!
    
    
    @IBAction func buttonIsPressed() {
        
        let randomNumber = arc4random_uniform(2)
        
        print(randomNumber)
        
        if randomNumber == 0 {
            nameLable.setText("heads")
        }else{
            nameLable.setText("tails")
        }
        //
    }
    
    
    override func awakeWithContext(context: AnyObject?) {
        super.awakeWithContext(context)
        // Configure interface objects here.
        
        print("my app is working")
        
        
    }

    override func willActivate() {
        // This method is called when watch view controller is about to be visible to user
        super.willActivate()
        
        NSLog("%@ Activate",self)
    }

    override func didDeactivate() {
        // This method is called when watch view controller is no longer visible
        super.didDeactivate()
    }

}
