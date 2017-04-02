//
//  NatePage.swift
//  Hackchella
//
//  Created by Nathan Velarde on 4/1/17.
//  Copyright © 2017 Max Chern. All rights reserved.
//


import SpriteKit

//===========Delegate============================//
protocol NatePageDelegate {
    func goToMainMenu()
}
//===========Delegate============================//

class NatePageScene: SKScene {
    
    //===========Delegate============================//
    var natePageDelegate:NatePageDelegate?
    //===========Delegate============================//
    
    var homeText:SKLabelNode!
    var homeBackground:SKSpriteNode!
    
    
    
    override func didMoveToView(view: SKView) {
        
        backgroundColor = UIColor (
            hue: 0.9,
            saturation: 0.2,
            brightness: 0.85,
            alpha: 1.0
        )
        
        homeText = SKLabelNode(fontNamed: "HelveticaNeue")
        homeText.verticalAlignmentMode = SKLabelVerticalAlignmentMode.Center
        homeText.fontSize = 100;
        homeText.text = "Home"
        homeText.name = "homeButtonText"
        homeText.fontColor = UIColor (
            hue: 0.9,
            saturation: 0.2,
            brightness: 0.85,
            alpha: 1.0
        )
        
        homeBackground = SKSpriteNode(color: UIColor.whiteColor(), size: CGSizeMake(homeText.frame.size.width+20, homeText.frame.size.height+20))
        homeBackground.position = CGPoint(x: 540, y: 1720)
        homeBackground.name = "homeButtonBackground"
        
        homeBackground.addChild(homeText)
        self.addChild(homeBackground)
        
        
        
        
        /*
         leaderboard = SKLabelNode(fontNamed: "Avenir Black")
         leaderboard.verticalAlignmentMode = SKLabelVerticalAlignmentMode.Center
         leaderboard.fontSize = 72;
         leaderboard.text = "LEADERBOARD"
         leaderboard.name = "leaderboardButton"
         
         background = SKSpriteNode(color: UIColor (
         hue: otherHue,
         saturation: 0.3,
         brightness: 0.8,
         alpha: 1.0
         ), size: CGSizeMake(leaderboard.frame.size.width+20, leaderboard.frame.size.height+20))
         background.position = CGPoint(x: 960, y: 125)
         background.name = "leaderboardButtonBackground"
         
         background.addChild(leaderboard)
         self.addChild(background)
         */
        
    }
    
    
    override func touchesBegan(touches: Set<UITouch>, withEvent event: UIEvent?) {
        
        let touch:UITouch = touches.first! as UITouch
        let positionInScene = touch.locationInNode(self)
        let touchedNode = self.nodeAtPoint(positionInScene)
        
        if let name = touchedNode.name {
            if (name == "homeButtonText" || name == "homeButtonBackground"){
                natePageDelegate!.goToMainMenu()
                for child in self.children {
                    child.removeFromParent()
                }
                self.removeFromParent()
            }
        }
        
    }
    
    override func update(currentTime: CFTimeInterval) {
        /* Called before each frame is rendered */
        
    }
}

