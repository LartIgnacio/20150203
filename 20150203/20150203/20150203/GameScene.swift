//
//  GameScene.swift
//  20150203
//
//  Created by Lart Ace Ignacio on 2/3/15.
//  Copyright (c) 2015 Lart Ace Ignacio. All rights reserved.
//

import SpriteKit

// GameState
enum HSGameState: Int {
    case HSGameStateStart
    case HSGameStatePlaying
    case HSGameStateAnimating
    case HSGameStateEnd
}

var state:HSGameState     = .HSGameStateStart

// player
var player:SKSpriteNode   = SKSpriteNode()

// background
let background:SKNode     = SKNode()

// Floor Height
var floorDistance:CGFloat = 0.0

class GameScene: SKScene {
    
    required init?(coder aDecoder: NSCoder) {
        super.init(coder: aDecoder);
    }
    
    override init(size: CGSize) {
        super.init(size: size)
        
        floorDistance = size.height * 0.4;
        
        self.initPlayer()
    }
    
    override func didMoveToView(view: SKView) {

    }
    
    override func touchesBegan(touches: NSSet, withEvent event: UIEvent) {
        /* Called when a touch begins */
    }
   
    override func update(currentTime: CFTimeInterval) {
        /* Called before each frame is rendered */
    }
    
    func initPlayer() {
        player = SKSpriteNode(color: UIColor .yellowColor(), size: CGSizeMake(20.0, 20.0))
        player.position = CGPointMake(20.0, floorDistance);
        
        self .addChild(player)
    }
    
}
