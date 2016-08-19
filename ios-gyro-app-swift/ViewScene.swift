//
//  ViewScene.swift
//  ios-gyro-app-swift
//
//  Created by Daniel Oram on 15/08/16.
//  Copyright © 2016 Daniel Oram. All rights reserved.
//

import UIKit
import SpriteKit
class ViewScene: SKScene {
    
    override func didMoveToView(view: SKView) {
        backgroundColor = SKColor.blackColor()
        NSLog("We have loaded the start screen")
    }
}