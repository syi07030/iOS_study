//
//  AI.swift
//  RPG-demo
//
//  Created by HanGeunyoung on 2022/02/20.
//

import SpriteKit
import GameplayKit

extension Character {
 
// MARK: - Random Walk
    
    func AI_RandomWalk(){
        
        if StopDelayIs == false{
            
            StopDelayIs = true //안전장치
            
            let WaitAction = SKAction.wait(forDuration: 2)
            let StopAction = SKAction.run{ self.CurrentDirection = .ST} //self는 monster
            let StopDelayAction = SKAction.run{self.StopDelayIs = false}
            
            self.run(SKAction.sequence([WaitAction, StopAction, WaitAction, StopDelayAction]))
            
            let RandomNumber = arc4random_uniform(4)
            
            if RandomNumber == 0 {
                
                self.CurrentDirection = .E
                
            }else if RandomNumber == 1 {
                
                self.CurrentDirection = .W
                
            }else if RandomNumber == 2{
                
                self.CurrentDirection = .S
                
            }else if RandomNumber == 3 {
                
                self.CurrentDirection = .N
                
            }
        }
        
        Function_Move()
    }
    
// Random Walk_End
    
}
