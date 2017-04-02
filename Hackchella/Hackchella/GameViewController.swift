//
//  GameViewController.swift
//  Hackchella
//
//  Created by Max Chern on 4/1/17.
//  Copyright (c) 2017 Max Chern. All rights reserved.
//


import UIKit
import SpriteKit
import GameKit

class GameViewController: UIViewController, MainMenuDelegate, MaxPageDelegate {
    
    override func viewDidLoad() {
        super.viewDidLoad()
        goToMainMenu()
    }
    
    override func shouldAutorotate() -> Bool {
        return true
    }
    
    
    override func supportedInterfaceOrientations() -> UIInterfaceOrientationMask {
        if UIDevice.currentDevice().userInterfaceIdiom == .Phone {
            return .AllButUpsideDown
        } else {
            return .All
        }
    }
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Release any cached data, images, etc that aren't in use.
    }
    
    override func prefersStatusBarHidden() -> Bool {
        return true
    }
    
    func goToMainMenu() {
        
        if let scene = MainMenuScene(fileNamed:"MainMenu") {
            // Configure the view.
            let skView = self.view as! SKView
            
            //***********NODECOUNT/FPS************//
            skView.showsFPS = false
            skView.showsNodeCount = false
            
            /* Sprite Kit applies additional optimizations to improve rendering performance */
            skView.ignoresSiblingOrder = true
            
            /* Set the scale mode to scale to fit the window */
            scene.scaleMode = .AspectFit
            
            scene.mainMenuDelegate = self
            
            
            skView.presentScene(scene)
            
            
        }
    }
    
    func goToMaxPage() {
        
        if let scene = MaxPageScene(fileNamed:"MaxPage") {
            // Configure the view.
            let skView = self.view as! SKView
            
            //***********NODECOUNT/FPS************//
            skView.showsFPS = false
            skView.showsNodeCount = false
            
            /* Sprite Kit applies additional optimizations to improve rendering performance */
            skView.ignoresSiblingOrder = true
            
            /* Set the scale mode to scale to fit the window */
            scene.scaleMode = .AspectFit
            
            scene.maxPageDelegate = self
            
            
            skView.presentScene(scene)
            
            
        }
        
    }

    
    
    
}