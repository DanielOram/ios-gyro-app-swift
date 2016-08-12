//
//  ViewController.swift
//  ios-gyro-app-swift
//
//  Created by Daniel Oram on 11/08/16.
//  Copyright © 2016 Daniel Oram. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        
        self.initialiseMotion()
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


    func initialiseMotion(){
        let motionKit = MotionKit()
        
        motionKit.getAccelerometerValues(0.2){
            (x, y, z) in
            //print("x = \(x), y = \(y), z = \(z)")
            print("z = \(z)")
        }
    }
}

