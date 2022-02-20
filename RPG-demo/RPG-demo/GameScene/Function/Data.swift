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
        let Costume = Data["Costume"] as! String
        let SP = Data["SP"] as! CGFloat
        
        Player = Character(imageNamed: "RedSwan")
        Player.Costume = Costume
        Player.sp = SP
        Player.zPosition = 10
        Player.PhysicsBody_Player()
        
        self.addChild(Player)
        
        PlayerMinion = Character(color: UIColor.green, size: CGSize(width: 5, height: 5))
        MiniMap.addChild(PlayerMinion)
        
        
    }
// Player_End
    
    
// MARK: - Monster
    func Data_Monster(){
        
        let MonsterGroupData = GameData["MonsterGroup"] as! [String:Any]
        
        var Number = Int(0)
        
        for (_, value) in MonsterGroupData{ //value: 개별적 몬스터 data
            
            let Data = value as! [String:Any]
            let Costume = Data["Costume"] as! String
            let Class = Data["Class"] as! String
            let PositionX = Data["PositionX"] as! CGFloat
            let PositionY = Data["PositionY"] as! CGFloat
            let SP = Data["SP"] as! CGFloat
            let SearchRange = Data["SearchRange"] as! CGFloat
            
            Monster = Character(imageNamed: "Archer")
            Monster.Costume = Costume
            Monster.Class = Class
            Monster.sp = SP
            Monster.RunSP = SP
            Monster.Number = Number
            Monster.PositionX = PositionX
            Monster.PositionY = PositionY
            Monster.SearchRange = SearchRange
            Monster.position = CGPoint(x: PositionX, y: PositionY)
            Monster.zPosition = 10
            Monster.PhysicsBody_Monster()
            
            MonsterGroup.append(Monster)
            
            self.addChild(Monster)
            
            MonsterMinion = Character(color: UIColor.red, size: CGSize(width: 5, height: 5))
            MonsterMinion.Number = Number
            
            MonsterMinionGroup.append(MonsterMinion)
            
            MiniMap.addChild(MonsterMinion)
            
            Number += 1
        }
                
                
    }
// Monster_End
}

