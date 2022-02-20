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
        if self.WalingIs == true{
            
            self.sp = WalkSP
        }else{
            
            self.sp = RunSP
        }
        
        
        // AI //
        AI_RandomWalk()
    }
// Monster_End
    
}
