//
//  Control.swift
//  RPG-demo
//
//  Created by HanGeunyoung on 2022/02/09.
//

import SpriteKit
import GameplayKit

extension GameScene {
    
// MARK: - Control Ball Angle
    
    func ControlBallAngle(Degree: CGFloat){
        
        if (Degree >= -45 && Degree < 45){
            
            Player.CurrentDirection = Direction.E
                        
        }else if(Degree >= 45 && Degree < 135){
            
            Player.CurrentDirection = Direction.N
            
        }else if(Degree >= 135 && Degree < 180){
            
            Player.CurrentDirection = Direction.W
            
        }else if(Degree >= -180 && Degree < -135){
            
            Player.CurrentDirection = Direction.W
            
        }else if(Degree >= -135 && Degree < -45){
            
            Player.CurrentDirection = Direction.S
            
        }
    }
    
// Control Ball Angle_End
    
    
// MARK: - Touch
    override func touchesBegan(_ touches: Set<UITouch>, with event: UIEvent?) {
        
        for touch in (touches){
            let Location = touch.location(in: self) // 터치를 한 지점
            
            if Location.x < 0 {
                ControlBase.position = Location
                ControlBall.position = ControlBase.position
            }else{
                if AttackButtonBase.frame.contains(Location){
                    
                    Player.Attack_Melee()
                    
                }else if ItemButtonBase.frame.contains(Location){
                    
                    Player.Function_Item()
                    
                }else if SkillButtonBase.frame.contains(Location){
                    print("Skill")
                }
            }
        }
    }
    
    override func touchesMoved(_ touches: Set<UITouch>, with event: UIEvent?) {
        for touch in (touches){
            let Location = touch.location(in: self) // 터치해서 움직인 지점
            
            if Location.x < 0 {
                let DeltaX = Location.x - ControlBase.position.x
                let DeltaY = Location.y - ControlBase.position.y
                let Angle = atan2(DeltaY, DeltaX)
                let Degree = Angle * CGFloat(180/Double.pi)
                
                ControlBallAngle(Degree: Degree)
                
                let Length = ControlBase.frame.size.height / 2
                let DistanceX = cos(Angle) * Length
                let DistanceY = sin(Angle) * Length
                
                if ControlBase.frame.contains(Location){
                    
                    ControlBall.position = Location
                }else{
                    
                    ControlBall.position = CGPoint(x: ControlBase.position.x + DistanceX, y: ControlBase.position.y + DistanceY)
                }
            }
        }
    }
    
    override func touchesEnded(_ touches: Set<UITouch>, with event: UIEvent?) { //손을 뗐을 때
        
        for touch in (touches){
            let Location = touch.location(in: self) // 터치해서 움직인 지점
            
            if Location.x < 0 {
                let MoveCenterAction = SKAction.move(to: ControlBase.position, duration: 0.2)
                MoveCenterAction.timingMode = .easeOut
                    
                ControlBall.run(MoveCenterAction)
                Player.CurrentDirection = Direction.ST
            }
        }
    }
// Touch_End
}
