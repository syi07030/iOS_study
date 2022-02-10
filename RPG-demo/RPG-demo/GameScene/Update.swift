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
       
        Player.Function_Move()
        
    }
//Update_End
}
