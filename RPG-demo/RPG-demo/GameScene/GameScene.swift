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
    var GameData = NSMutableDictionary()
    
    var Player = Character() //게임을 구성하는 작은 단위(물체)
    
    var MonsterGroup = [Character]()
    var Monster = Character()
    
    let ControlBase = SKSpriteNode(imageNamed: "ControlBase")
    let ControlBall = SKSpriteNode(imageNamed: "ControlBall")
    let AttackButtonBase = SKSpriteNode(imageNamed: "ButtonBase")
    let AttackButton = SKSpriteNode(imageNamed: "AttackButton")
    let ItemButtonBase = SKSpriteNode(imageNamed: "ButtonBase")
    let ItemButton = SKSpriteNode(imageNamed: "ItemButton")
    let SkillButtonBase = SKSpriteNode(imageNamed: "ButtonBase")
    let SkillButton = SKSpriteNode(imageNamed: "SkillButton")
    //var TouchPoint = CGPoint()
    
//Variable_End
    
    //제일 먼저 실행되는 화면 부분(딱 한 번만 실행됨)
    override func didMove(to view: SKView) {
        
        Scene = self //gamescene을 share.swift에서 정의한 Scene으로 복사
        
        // Local Camera //
        self.camera = LocalCamera
        self.addChild(LocalCamera)
        
        // Controller //
        ControlBase.position = CGPoint(x: -500, y: -200)
        ControlBase.zPosition = 100 // 높은 layer 값
        ControlBase.alpha = 0.5 // 50% 투명도
        self.addChild(ControlBase)
        
        ControlBall.position = ControlBase.position
        ControlBall.zPosition = ControlBase.zPosition
        ControlBall.alpha = ControlBase.alpha
        self.addChild(ControlBall)
        
        AttackButtonBase.position = CGPoint(x: 430, y: -125)
        AttackButtonBase.zPosition = 99
        AttackButtonBase.alpha = 0.5
        self.addChild(AttackButtonBase)
        AttackButton.position = AttackButtonBase.position
        AttackButton.zPosition = 100
        AttackButton.alpha = 1
        self.addChild(AttackButton)
        
        ItemButtonBase.position = CGPoint(x: 370, y: -250)
        ItemButtonBase.zPosition = 99
        ItemButtonBase.alpha = 0.5
        self.addChild(ItemButtonBase)
        ItemButton.position = ItemButtonBase.position
        ItemButton.zPosition = 100
        ItemButton.alpha = 1
        self.addChild(ItemButton)
        
        SkillButtonBase.position = CGPoint(x: 550, y: -200)
        SkillButtonBase.zPosition = 99
        SkillButtonBase.alpha = 0.5
        self.addChild(SkillButtonBase)
        SkillButton.position = SkillButtonBase.position
        SkillButton.zPosition = 100
        SkillButton.alpha = 1
        self.addChild(SkillButton)
        
        
        // Data //
        let Path = Bundle.main.path(forResource: "GameData", ofType: "plist")
        GameData = NSMutableDictionary(contentsOfFile: Path!)!
        Data_Player()
        Data_Monster()
        
    }
}
