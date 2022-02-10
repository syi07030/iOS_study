//
//  GameScene.swift
//  RPG-demo
//
//  Created by HanGeunyoung on 2022/02/09.
//

import SpriteKit
import GameplayKit

class GameScene: SKScene {
    
//MARK: - Variable
    let Player = SKSpriteNode(imageNamed: "RedSwan") //게임을 구성하는 작은 단위(물체)
    
    let ControlBase = SKSpriteNode(imageNamed: "ControlBase")
    let ControlBall = SKSpriteNode(imageNamed: "ControlBall")
    //var TouchPoint = CGPoint()
    
//Variable_End
    
    //제일 먼저 실행되는 화면 부분(딱 한 번만 실행됨)
    override func didMove(to view: SKView) {
        
        // Controller //
        ControlBase.position = CGPoint(x: -500, y: -200)
        //ControlBase.zPosition =
        self.addChild(Player)
    }
}
