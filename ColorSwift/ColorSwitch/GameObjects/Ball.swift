//
//  Ball.swift
//  ColorSwitch
//
//  Created by Christelle Bouvier on 18/11/19.
//  Copyright © 2019 Christelle Bouvier. All rights reserved.
//

import SpriteKit

class Ball {
    var spriteNode: SKSpriteNode!

    init(frame: CGRect, color: UIColor) {
        spriteNode = SKSpriteNode(texture: SKTexture(imageNamed: "ball"), color: color, size: CGSize(width: 30.0, height: 30.0))
        spriteNode.colorBlendFactor = 1
        spriteNode.name = "Ball"
        spriteNode.position = CGPoint(x: frame.midX, y: frame.maxY)
        spriteNode.zPosition = ZPositions.ball
        spriteNode.physicsBody = SKPhysicsBody(circleOfRadius: spriteNode.size.width / 2)
        spriteNode.physicsBody?.categoryBitMask = PhysicsCategories.ballCategory
        spriteNode.physicsBody?.contactTestBitMask = PhysicsCategories.switchCategory
        spriteNode.physicsBody?.collisionBitMask = PhysicsCategories.none
    }
    
}

