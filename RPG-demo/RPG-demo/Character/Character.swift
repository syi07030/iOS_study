//
//  Character.swift
//  RPG-demo
//
//  Created by HanGeunyoung on 2022/02/10.
//

import SpriteKit
import GameplayKit

class Character: SKSpriteNode {
    
// MARK: - Variable
    // Direction //
    var CurrentDirection = Direction.ST
    var LastDirection = Direction.ST
    var AttackDirection = Direction.S
    
    // Status //
    let sp = CGFloat(5)
    
    
    // Move //
    var SpeedX = CGFloat()
    var SpeedY = CGFloat()
    
    
    // Mode //
    var MoveDelayIs = Bool(false)
    var AttackDelayIs = Bool(false)
    var SkillDelayIs = Bool(false)
    
// Variable_End
    
}
