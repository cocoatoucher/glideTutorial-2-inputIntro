//
//  TouchButtonComponent.swift
//  TutorialiOS
//
//  Created by glide on 2019-05-25.
//

import GlideEngine
import SpriteKit
import GameplayKit

class TouchButtonComponent: GKComponent, GlideComponent, TouchReceiverComponent {
    
    // MARK: - Touch Receiver
    
    var hitBoxNode: SKSpriteNode
    
    var currentTouchCount: Int = 0
    
    var isHighlighted: Bool = false
    
    var triggersOnTouchUpInside: Bool = false
    
    var input: TouchInputProfilesOrCallback
    
    var normalTexture: SKTexture?
    var highlightedTexture: SKTexture?
    
    init(spriteNode: SKSpriteNode, input: TouchInputProfilesOrCallback) {
        self.hitBoxNode = spriteNode
        self.input = input
        super.init()
    }
    
    required init?(coder aDecoder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    open override func update(deltaTime seconds: TimeInterval) {
        updateNodeTexture()
    }
    
    func updateNodeTexture() {
        let spriteNodeComponent = entity?.component(ofType: SpriteNodeComponent.self)
        
        if isHighlighted {
            spriteNodeComponent?.spriteNode.texture = highlightedTexture
        } else {
            spriteNodeComponent?.spriteNode.texture = normalTexture
        }
    }
}
