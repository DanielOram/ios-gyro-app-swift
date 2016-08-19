//
//  ViewController.swift
//  ios-gyro-app-swift
//
//  Created by Daniel Oram on 11/08/16.
//  Copyright © 2016 Daniel Oram. All rights reserved.
//

import UIKit
import SpriteKit

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
    
    func setupGameScene(){
        let scene = ViewScene(size: view.bounds.size)
        let skView = view as! SKView
        skView.showsFPS = true
        skView.showsNodeCount = true
        skView.ignoresSiblingOrder = true
        scene.scaleMode = .ResizeFill
        skView.presentScene(scene)
    }
    
    override func prefersStatusBarHidden() -> Bool {
        return true
    }
}

