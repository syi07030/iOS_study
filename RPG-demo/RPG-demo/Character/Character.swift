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
    
    // Status //
    let sp = CGFloat(5)
    
    
    // Move //
    var SpeedX = CGFloat()
    var SpeedY = CGFloat()
// Variable_End
    
}
