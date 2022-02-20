//
//  Update.swift
//  RPG-demo
//
//  Created by HanGeunyoung on 2022/02/09.
//

import SpriteKit
import GameplayKit

extension GameScene {
    
//MARK: - Update
    override func update(_ currentTime: TimeInterval) { //func 안의 코드를 계속해서 실행시킴
       
        // Player //
        Player.Function_Move()
        
        // Mini Map //
        PlayerMinion.position = CGPoint.zero // Mini Map 중앙에 위치
        
        for i in 0...MonsterMinionGroup.count - 1 {
            
            MonsterMinionGroup[i].position.x = (MonsterGroup[i].position.x - Player.position.x) / 10
            MonsterMinionGroup[i].position.y = (MonsterGroup[i].position.y - Player.position.y) / 10
            
            if MiniMap.intersects(MonsterMinionGroup[i]) {
                
                MonsterMinionGroup[i].alpha = 1
                
            }else{
                
                MonsterMinionGroup[i].alpha = 0
            }
        }
        
        // Camera //
        LocalCamera.position = Player.position
        
    }
//Update_End
}
