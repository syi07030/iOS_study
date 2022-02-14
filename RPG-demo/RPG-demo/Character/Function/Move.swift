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
            
            if CurrentDirection != LastDirection{
                
                removeAction(forKey: "Move")
                
                if LastDirection == Direction.E{
                    self.texture = SKTexture(imageNamed: "RedSwanMoveE1")
                }
                
                if LastDirection == Direction.W{
                    self.texture = SKTexture(imageNamed: "RedSwanMoveW1")
                }
                
                if LastDirection == Direction.S{
                    self.texture = SKTexture(imageNamed: "RedSwanMoveS1")
                }
                
                if LastDirection == Direction.N{
                    self.texture = SKTexture(imageNamed: "RedSwanMoveN1")
                }
                
                AttackDirection = LastDirection
            }
            
            LastDirection = CurrentDirection
            
        case.E:
            SpeedX = sp
            SpeedY = 0
            
            if CurrentDirection != LastDirection{
                
                let MoveAtlas = SKTextureAtlas(named: "RedSwanMoveE")
                var MoveFrame = [SKTexture]()
                
                for i in 1 ... MoveAtlas.textureNames.count / 2{
                    
                    let TextureName = "RedSwanMoveE" + "\(i)"
                    MoveFrame.append(MoveAtlas.textureNamed(TextureName))
                }
                
                let MoveAnimationAction = SKAction.repeatForever(SKAction.animate(with: MoveFrame, timePerFrame: 0.125))
                self.run(MoveAnimationAction, withKey: "Move")
                
                AttackDirection = CurrentDirection
                
            }
            
            LastDirection = CurrentDirection //애니메이션은 한 번만 실행되게끔 하는 장치
            
        case.W:
            SpeedX = -sp
            SpeedY = 0
            
            if CurrentDirection != LastDirection{
                
                let MoveAtlas = SKTextureAtlas(named: "RedSwanMoveW")
                var MoveFrame = [SKTexture]()
                
                for i in 1 ... MoveAtlas.textureNames.count / 2{
                    
                    let TextureName = "RedSwanMoveW" + "\(i)"
                    MoveFrame.append(MoveAtlas.textureNamed(TextureName))
                }
                
                let MoveAnimationAction = SKAction.repeatForever(SKAction.animate(with: MoveFrame, timePerFrame: 0.125))
                self.run(MoveAnimationAction, withKey: "Move")
                
                AttackDirection = CurrentDirection
                
            }
            
            LastDirection = CurrentDirection
            
        case.N:
            SpeedX = 0
            SpeedY = sp
            
            if CurrentDirection != LastDirection{
                
                let MoveAtlas = SKTextureAtlas(named: "RedSwanMoveN")
                var MoveFrame = [SKTexture]()
                
                for i in 1 ... MoveAtlas.textureNames.count / 2{
                    
                    let TextureName = "RedSwanMoveN" + "\(i)"
                    MoveFrame.append(MoveAtlas.textureNamed(TextureName))
                }
                
                let MoveAnimationAction = SKAction.repeatForever(SKAction.animate(with: MoveFrame, timePerFrame: 0.125))
                self.run(MoveAnimationAction, withKey: "Move")
                
                AttackDirection = CurrentDirection
                
            }
            
            LastDirection = CurrentDirection
            
        case.S:
            SpeedX = 0
            SpeedY = -sp
            
            if CurrentDirection != LastDirection{
                
                let MoveAtlas = SKTextureAtlas(named: "RedSwanMoveS")
                var MoveFrame = [SKTexture]()
                
                for i in 1 ... MoveAtlas.textureNames.count / 2{
                    
                    let TextureName = "RedSwanMoveS" + "\(i)"
                    MoveFrame.append(MoveAtlas.textureNamed(TextureName))
                }
                
                let MoveAnimationAction = SKAction.repeatForever(SKAction.animate(with: MoveFrame, timePerFrame: 0.125))
                self.run(MoveAnimationAction, withKey: "Move")
                
                AttackDirection = CurrentDirection
                
            }
            
            LastDirection = CurrentDirection
        }
        
        if self.MoveDelayIs == false{
            
            self.position = CGPoint(x: self.position.x + SpeedX, y: self.position.y+SpeedY)
        }
        
    }
}
