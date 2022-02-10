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
        
        if Player.position.x < TouchPoint.x - 5{
            
            Player.position.x += 5
            
        }else if Player.position.x > TouchPoint.x + 5 {
            Player.position.x -= 5
        }
        
        if Player.position.y < TouchPoint.y - 5{
            
            Player.position.y += 5
            
        }else if Player.position.y > TouchPoint.y + 5 {
            Player.position.y -= 5
        }
    }
//Update_End
}
