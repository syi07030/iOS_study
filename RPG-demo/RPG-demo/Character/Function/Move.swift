//
//  Move.swift
//  RPG-demo
//
//  Created by HanGeunyoung on 2022/02/10.
//

import SpriteKit
import GameplayKit

extension Character {
    
    func Function_Move(){
        
        switch(CurrentDirection){
            
        case.ST:
            SpeedX = 0
            SpeedY = 0
            
        case.E:
            SpeedX = sp
            SpeedY = 0
            
        case.W:
            SpeedX = -sp
            SpeedY = 0
            
        case.N:
            SpeedX = 0
            SpeedY = sp
            
        case.S:
            SpeedX = 0
            SpeedY = -sp
        }
        
        self.position = CGPoint(x: self.position.x + SpeedX, y: self.position.y+SpeedY)
    }
}
