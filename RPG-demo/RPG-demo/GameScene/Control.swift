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
            
            var CorrectedLocation = CGPoint()
            CorrectedLocation.x = Location.x - LocalCamera.position.x
            CorrectedLocation.y = Location.y - LocalCamera.position.y
            
            
            if Location.x < LocalCamera.position.x {
                
                ControlBase.position = CorrectedLocation
                ControlBall.position = ControlBase.position
            }else{
                if AttackButtonBase.frame.contains(CorrectedLocation){
                    
                    if Player.AttackDelayIs == false{
                        Player.Attack_Melee()
                    }
                    
                }else if ItemButtonBase.frame.contains(CorrectedLocation){
                    
                    Player.Function_Item()
                    
                }else if SkillButtonBase.frame.contains(CorrectedLocation){
                    
                    if Player.SkillDelayIs == false{
                        Player.Attack_Meteor()
                    }
                }
            }
        }
    }
    
    override func touchesMoved(_ touches: Set<UITouch>, with event: UIEvent?) {
        for touch in (touches){
            
            let Location = touch.location(in: self) // 터치해서 움직인 지점
            
            var CorrectedLocation = CGPoint()
            CorrectedLocation.x = Location.x - LocalCamera.position.x
            CorrectedLocation.y = Location.y - LocalCamera.position.y
            
            
            if Location.x < LocalCamera.position.x {
                
                let DeltaX = CorrectedLocation.x - ControlBase.position.x
                let DeltaY = CorrectedLocation.y - ControlBase.position.y
                let Angle = atan2(DeltaY, DeltaX)
                let Degree = Angle * CGFloat(180/Double.pi)
                
                ControlBallAngle(Degree: Degree)
                
                let Length = ControlBase.frame.size.height / 2
                let DistanceX = cos(Angle) * Length
                let DistanceY = sin(Angle) * Length
                
                if ControlBase.frame.contains(CorrectedLocation){
                    
                    ControlBall.position = CorrectedLocation
                }else{
                    
                    ControlBall.position = CGPoint(x: ControlBase.position.x + DistanceX, y: ControlBase.position.y + DistanceY)
                }
            }
        }
    }
    
    override func touchesEnded(_ touches: Set<UITouch>, with event: UIEvent?) { //손을 뗐을 때
        
        for touch in (touches){
            let Location = touch.location(in: self) // 터치해서 움직인 지점
            
            if Location.x < LocalCamera.position.x {
                let MoveCenterAction = SKAction.move(to: ControlBase.position, duration: 0.2)
                MoveCenterAction.timingMode = .easeOut
                    
                ControlBall.run(MoveCenterAction)
                Player.CurrentDirection = Direction.ST
            }
        }
    }
// Touch_End
}
