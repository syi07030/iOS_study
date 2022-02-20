//
//  Data.swift
//  RPG-demo
//
//  Created by HanGeunyoung on 2022/02/14.
//

import SpriteKit
import GameplayKit

extension GameScene {

// MARK: - Player
    func Data_Player(){
        
        let Data = GameData["Player"] as! [String:Any]
        let SP = Data["SP"] as! CGFloat
        
        Player = Character(imageNamed: "RedSwan")
        Player.sp = SP
        Player.zPosition = 10
        Player.PhysicsBody_Player()
        
        self.addChild(Player)
        
    }
// Player_End
    
    
// MARK: - Monster
    func Data_Monster(){
        
        let MonsterGroupData = GameData["MonsterGroup"] as! [String:Any]
        
        for (_, value) in MonsterGroupData{ //value: 개별적 몬스터 data
            
            let Data = value as! [String:Any]
            let PositionX = Data["PositionX"] as! CGFloat
            let PositionY = Data["PositionY"] as! CGFloat
            let SP = Data["SP"] as! CGFloat
            
            Monster = Character(imageNamed: "Archer")
            Monster.sp = SP
            Monster.PositionX = PositionX
            Monster.PositionY = PositionY
            Monster.position = CGPoint(x: PositionX, y: PositionY)
            Monster.zPosition = 10
            Monster.PhysicsBody_Monster()
            
            MonsterGroup.append(Monster)
            
            self.addChild(Monster)
            
        }
                
                
    }
// Monster_End
}

