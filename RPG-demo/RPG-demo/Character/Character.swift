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
    var PositionX = CGFloat()
    var PositionY = CGFloat()
    var Costume = String()
    var sp = CGFloat()
    var RunSP = CGFloat()
    var WalkSP = CGFloat(1)
    var Number = Int() //몬스터 고유 번호
    
    
    // Move //
    var SpeedX = CGFloat()
    var SpeedY = CGFloat()
    
    
    // Mode //
    var MoveDelayIs = Bool(false)
    var AttackDelayIs = Bool(false)
    var SkillDelayIs = Bool(false)
    
    var StopDelayIs = Bool(false) //monster가 걷고 잠깐 멈췄다가 다시 걸을 때 사용
    var WalingIs = Bool(true) // monster가 걸어다닐지 뛰어다닐지
    
// Variable_End
    
}
