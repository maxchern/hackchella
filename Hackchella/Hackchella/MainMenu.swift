//
//  MainMenu.swift
//  Hackchella
//
//  Created by Max Chern on 4/1/17.
//  Copyright © 2017 Max Chern. All rights reserved.
//

import SpriteKit

//===========Delegate============================//
protocol MainMenuDelegate {
    func play()
}
//===========Delegate============================//

class MainMenuScene: SKScene {
    
    //===========Delegate============================//
    var mainMenuDelegate:MainMenuDelegate?
    //===========Delegate============================//
    

    
    override func didMoveToView(view: SKView) {
        
        backgroundColor = UIColor (
            hue: 0.9,
            saturation: 0.2,
            brightness: 0.85,
            alpha: 1.0
        )
        

        

    }
    
    
    override func touchesBegan(touches: Set<UITouch>, withEvent event: UIEvent?) {
        mainMenuDelegate!.play()
        for child in self.children {
            child.removeFromParent()
        }
        self.removeFromParent()

    }
    
    override func update(currentTime: CFTimeInterval) {
        /* Called before each frame is rendered */
        
    }
}
