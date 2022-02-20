//
//  Share.swift
//  RPG-demo
//
//  Created by HanGeunyoung on 2022/02/10.
//

import Foundation
import SpriteKit

// MARK: - Variable
var Scene = GameScene()
let LocalCamera = SKCameraNode()

// Variable_End
// MARK: - Enumeration

// BodyType //
enum BodyType: UInt32{
    
    case Player = 1
    case Monster = 2
}

// Direction //
enum Direction {
    
    case E, W, S, N, ST
}


// Enumeration_End
