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
        self.addChild(Player)
        
    }
// Player_End
}

