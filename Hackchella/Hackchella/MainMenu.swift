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
    func goToSwethaPage()
    func goToNatePage()
}


//===========Delegate============================//

class MainMenuScene: SKScene {
    
    //===========Delegate============================//
    var mainMenuDelegate:MainMenuDelegate?
    //===========Delegate============================//
    
    var maxText:SKLabelNode!
    var maxBackground:SKSpriteNode!
    var swethaText:SKLabelNode!
    var swethaBackground:SKSpriteNode!
    var nateText:SKLabelNode!
    var nateBackground:SKSpriteNode!

    
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
        
        swethaText = SKLabelNode(fontNamed: "HelveticaNeue")
        swethaText.verticalAlignmentMode = SKLabelVerticalAlignmentMode.Center
        swethaText.fontSize = 100;
        swethaText.text = "Swetha's cool ass button"
        swethaText.name = "swethaButtonText"
        swethaText.fontColor = UIColor (
            hue: 0.5,
            saturation: 0.2,
            brightness: 0.85,
            alpha: 1.0
        )
        
        swethaBackground = SKSpriteNode(color: UIColor.whiteColor(), size: CGSizeMake(swethaText.frame.size.width+20, swethaText.frame.size.height+20))
        swethaBackground.position = CGPoint(x: 540, y: 1720)
        swethaBackground.name = "swethaButtonBackground"
        
        swethaBackground.addChild(swethaText)
        self.addChild(swethaBackground)

        
        nateText = SKLabelNode(fontNamed: "HelveticaNeue")
        nateText.verticalAlignmentMode = SKLabelVerticalAlignmentMode.Center
        nateText.fontSize = 100;
        nateText.text = "Nates's cooler ass button"
        nateText.name = "nateButtonText"
        nateText.fontColor = UIColor (
            hue: 0.5,
            saturation: 0.2,
            brightness: 0.85,
            alpha: 1.0
        )
        
        nateBackground = SKSpriteNode(color: UIColor.whiteColor(), size: CGSizeMake(nateText.frame.size.width+20,   nateText.frame.size.height+20))
        nateBackground.position = CGPoint(x: 540, y: 1000)
        nateBackground.name = "nateButtonBackground"
        
        nateBackground.addChild(nateText)
        self.addChild(nateBackground)
        
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
            else if (name == "swethaButtonText" || name == "swethaButtonBackground"){
                mainMenuDelegate!.goToSwethaPage()
                for child in self.children {
                    child.removeFromParent()
                }
                self.removeFromParent()
            }
            else if (name == "nateButtonText" || name == "nateButtonBackground"){
                mainMenuDelegate!.goToNatePage()
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
