//
//  GameScene.swift
//  Nibber
//
//  Created by Stephen Brennan on 7/22/16.
//  Copyright (c) 2016 Stephen Brennan. All rights reserved.
//

import SpriteKit

class GameScene: SKScene {
    override func didMoveToView(view: SKView) {
        let ap = CGPointMake(0, 0)
        let size = CGSizeMake(200, 200)
        let n = SKSpriteNode(color: UIColor.redColor(), size: size)
//        n.anchorPoint = ap
        addChild(n)
        n.name = "red"
        n.position = CGPointMake(frame.width / 2, frame.height / 2)
        
        let isize = CGSizeMake(n.frame.width / 2, n.frame.height / 2)
        let i = SKSpriteNode(color: UIColor.whiteColor(), size: isize)
        n.addChild(i)
//        i.anchorPoint = ap
        i.position = CGPointMake(n.frame.width / 2, n.frame.height / 2)
        i.position = CGPointMake(0, 0)
        i.name = "white"
        
        let rotate = SKAction.rotateByAngle(CGFloat(M_PI / 2), duration: 3.0)
        let forever = SKAction.repeatActionForever(rotate)
        n.runAction(forever)
    }
    
    override func touchesBegan(touches: Set<UITouch>, withEvent event: UIEvent?) {
        for t in touches {
            let l = t.locationInNode(self)
            for n in nodesAtPoint(l) {
                let l1 = t.locationInNode(n)
                print("Node \(n.name): \(l1)")
            }
        }
    }
   
    override func update(currentTime: CFTimeInterval) {
        /* Called before each frame is rendered */
    }
}
