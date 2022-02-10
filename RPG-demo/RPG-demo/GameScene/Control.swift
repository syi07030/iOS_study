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
            
            print("Player's current direction is EAST")
            
        }else if(Degree >= 45 && Degree < 135){
            
            print("Player's current direction is NORTH")
            
        }else if(Degree >= 135 && Degree < 180){
            
            print("Player's current direction is WEST")
            
        }else if(Degree >= -180 && Degree < -135){
            
            print("Player's current direction is WEST")
            
        }else if(Degree >= -135 && Degree < -45){
            
            print("Player's current direction is SOUTH")
            
        }
    }
    
// Control Ball Angle_End
    
    
// MARK: - Touch
    override func touchesBegan(_ touches: Set<UITouch>, with event: UIEvent?) {
        
        for touch in (touches){
            let Location = touch.location(in: self) // 터치를 한 지점
            
            ControlBase.position = Location
            ControlBall.position = ControlBase.position
//            TouchPoint = Location
            
//            let WalkAction = SKAction.move(to: Location, duration: 5)
//            Player.run(WalkAction)
        }
    }
    
    override func touchesMoved(_ touches: Set<UITouch>, with event: UIEvent?) {
        for touch in (touches){
            let Location = touch.location(in: self) // 터치해서 움직인 지점
            
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
    
    override func touchesEnded(_ touches: Set<UITouch>, with event: UIEvent?) { //손을 뗐을 때
            
        let MoveCenterAction = SKAction.move(to: ControlBase.position, duration: 0.2)
        MoveCenterAction.timingMode = .easeOut
            
        ControlBall.run(MoveCenterAction)
        
    }
// Touch_End
}
