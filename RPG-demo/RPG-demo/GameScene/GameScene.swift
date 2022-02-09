//
//  GameScene.swift
//  RPG-demo
//
//  Created by HanGeunyoung on 2022/02/09.
//

import SpriteKit
import GameplayKit

class GameScene: SKScene {
    
    let Player = SKSpriteNode(imageNamed: "RedSwan") //게임을 구성하는 작은 단위(물체)
    var TouchPoint = CGPoint()
    
    //제일 먼저 실행되는 화면 부분(딱 한 번만 실행됨)
    override func didMove(to view: SKView) {
        self.addChild(Player)
    }
}
