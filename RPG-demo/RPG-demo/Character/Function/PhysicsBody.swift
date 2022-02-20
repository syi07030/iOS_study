//
//  PhysicsBody.swift
//  RPG-demo
//
//  Created by HanGeunyoung on 2022/02/20.
//

import SpriteKit
import GameplayKit

extension Character {
 
// MARK: - Player
    
    func PhysicsBody_Player(){
        
        let Texture = SKTexture(imageNamed: "RedSwan")
        let PhysicsBody = SKPhysicsBody(texture: Texture, size: self.size)
        
        self.physicsBody = PhysicsBody
        self.physicsBody?.isDynamic = true
        self.physicsBody?.affectedByGravity = false
        self.physicsBody?.allowsRotation = false
        self.physicsBody?.categoryBitMask = BodyType.Player.rawValue
        self.physicsBody?.collisionBitMask = BodyType.Monster.rawValue
    }
// Player_End
    
    
// MARK: - Monster
    
    func PhysicsBody_Monster(){
        
        let Texture = SKTexture(imageNamed: "Archer")
        let PhysicsBody = SKPhysicsBody(texture: Texture, size: self.size)
        
        self.physicsBody = PhysicsBody
        self.physicsBody?.isDynamic = true
        self.physicsBody?.affectedByGravity = false
        self.physicsBody?.allowsRotation = false
        self.physicsBody?.categoryBitMask = BodyType.Monster.rawValue
        self.physicsBody?.collisionBitMask = BodyType.Player.rawValue | BodyType.Monster.rawValue
    }
// Monster_End
}
