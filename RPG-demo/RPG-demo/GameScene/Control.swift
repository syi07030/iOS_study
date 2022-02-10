//
//  Control.swift
//  RPG-demo
//
//  Created by HanGeunyoung on 2022/02/09.
//

import SpriteKit
import GameplayKit

extension GameScene {
    
//MARK: - Touch
    override func touchesBegan(_ touches: Set<UITouch>, with event: UIEvent?) {
        
        for touch in (touches){
            let Location = touch.location(in: self)
            
            TouchPoint = Location
            
//            let WalkAction = SKAction.move(to: Location, duration: 5)
//            Player.run(WalkAction)
        }
    }
//Touch_End
}
