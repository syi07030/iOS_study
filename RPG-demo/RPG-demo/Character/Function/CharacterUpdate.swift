//
//  CharacterUpdate.swift
//  RPG-demo
//
//  Created by HanGeunyoung on 2022/02/20.
//

import SpriteKit
import GameplayKit

extension Character {
 
// MARK: - Monster
    func Update_Monster(){
        
        // Status //
        if self.WalkingIs == true{
            
            self.sp = WalkSP
        }else{
            
            self.sp = RunSP
        }
        
        
        // AI //
        let DistansceToPlayer = sqrt(pow(self.position.x - Scene.Player.position.x, 2) + pow(self.position.y - Scene.Player.position.y, 2))
        
        if DistansceToPlayer < SearchRange{
            
            self.WalkingIs = false
            AI_Chase(Target: Scene.Player)
            
        }else{
            self.WalkingIs = true
            AI_RandomWalk()
        }
        
    }
// Monster_End
    
}
