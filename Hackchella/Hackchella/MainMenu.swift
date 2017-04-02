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
    func goToMaxPage()
}
//===========Delegate============================//

class MainMenuScene: SKScene {
    
    //===========Delegate============================//
    var mainMenuDelegate:MainMenuDelegate?
    //===========Delegate============================//
    
    var maxText:SKLabelNode!
    var maxBackground:SKSpriteNode!
    

    
    override func didMoveToView(view: SKView) {
        
        backgroundColor = UIColor (
            hue: 0.5,
            saturation: 0.2,
            brightness: 0.85,
            alpha: 1.0
        )
        
        maxText = SKLabelNode(fontNamed: "HelveticaNeue")
        maxText.verticalAlignmentMode = SKLabelVerticalAlignmentMode.Center
        maxText.fontSize = 100;
        maxText.text = "Max"
        maxText.name = "maxButtonText"
        maxText.fontColor = UIColor (
            hue: 0.5,
            saturation: 0.2,
            brightness: 0.85,
            alpha: 1.0
        )
        
        maxBackground = SKSpriteNode(color: UIColor.whiteColor(), size: CGSizeMake(maxText.frame.size.width+20, maxText.frame.size.height+20))
        maxBackground.position = CGPoint(x: 540, y: 1720)
        maxBackground.name = "maxButtonBackground"
        
        maxBackground.addChild(maxText)
        self.addChild(maxBackground)
        
        
        
        
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
            if (name == "maxButtonText" || name == "maxButtonBackground"){
                mainMenuDelegate!.goToMaxPage()
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
