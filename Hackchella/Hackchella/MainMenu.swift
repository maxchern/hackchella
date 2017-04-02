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
    
    var backgroundHue:CGFloat!
    var otherHue:CGFloat!
    
    var BLOQS:SKLabelNode!
    var tap:SKLabelNode!
    var leaderboard:SKLabelNode!
    var background:SKSpriteNode!
    
    var adInProcess = false;
    
    override func didMoveToView(view: SKView) {
        
        backgroundColor = UIColor (
            hue: 0.9,
            saturation: 0.2,
            brightness: 0.85,
            alpha: 1.0
        )
        
        BLOQS = SKLabelNode(fontNamed: "Avenir Black")
        BLOQS.verticalAlignmentMode = SKLabelVerticalAlignmentMode.Baseline
        BLOQS.fontSize = 50;
        BLOQS.position = CGPoint(x: 540, y: 1010)
        BLOQS.text = "bloqs2"
        self.addChild(BLOQS)
        
        tap = SKLabelNode(fontNamed: "Avenir Black")
        tap.verticalAlignmentMode = SKLabelVerticalAlignmentMode.Top
        tap.fontSize = 50;
        tap.position = CGPoint(x: 540, y: 910)
        tap.text = "tap2play"
        self.addChild(tap)
        
        BLOQS.fontColor = UIColor.whiteColor()
        tap.fontColor = UIColor.whiteColor()
        

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
