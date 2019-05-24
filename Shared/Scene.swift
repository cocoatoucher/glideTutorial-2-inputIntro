//
//  Scene.swift
//  glideTutorialCharacterPlatform
//
//  Created by glide on 2019-05-16.
//

import GlideEngine
import SpriteKit

class Scene: GlideScene {
    
    override func setupScene() {
        // Since we don't have pause/resume buttons in this tutorial
        // we don't want our scene to be paused automatically.
        shouldPauseWhenAppIsInBackground = false
        
        backgroundColor = .brown
        
        // Add a platform entity in our scene.
        // Position in roughly in the middle of macOS app window.
        // Keep in mind that x:0, y:0 is the bottom left corner of the scene in SpriteKit.
        addEntity(platformEntity(at: CGPoint(x: 512, y: 150)))
        
        // Add a character entity to the scene at an arbitrary but reasonable position.
        let characterEntity = CharacterEntity(initialNodePosition: CGPoint(x: 200, y: 300))
        addEntity(characterEntity)
        
        #if os(iOS)
        addEntity(moveLeftTouchButtonEntity)
        #endif 
    }
    
    override func layoutOnScreenItems() {
        #if os(iOS)
        layoutTouchControls()
        #endif
    }
    
    func platformEntity(at position: CGPoint) -> GlideEntity {
        // Create a generic glide entity.
        let entity = GlideEntity(initialNodePosition: position)
        
        // Create a sprite node for our entity to display a texture.
        let spriteNodeComponent = SpriteNodeComponent(nodeSize: CGSize(width: 640, height: 64))
        spriteNodeComponent.spriteNode.texture = SKTexture(imageNamed: "platform")
        entity.addComponent(spriteNodeComponent)
        
        // Add a collider to the platform.
        let colliderComponent = ColliderComponent(categoryMask: GlideCategoryMask.none,
                                                  size: CGSize(width: 640, height: 64),
                                                  offset: .zero,
                                                  leftHitPointsOffsets: (10, 10),
                                                  rightHitPointsOffsets: (10, 10),
                                                  topHitPointsOffsets: (10, 10),
                                                  bottomHitPointsOffsets: (10, 10))
        entity.addComponent(colliderComponent)
        
        // Make platform snappable.
        let snappableComponent = SnappableComponent(providesOneWayCollision: false)
        entity.addComponent(snappableComponent)
        
        return entity
    }
    
    #if os(iOS)
    lazy var moveLeftTouchButtonEntity: GlideEntity = {
        return touchButtonEntity()
    }()
    
    func touchButtonEntity() -> GlideEntity {
        let entity = GlideEntity(initialNodePosition: CGPoint.zero)
        entity.name = "Move Left"
        entity.transform.usesProposedPosition = false
        
        let spriteNodeComponent = SpriteNodeComponent(nodeSize: CGSize(width: 120, height: 100))
        spriteNodeComponent.spriteNode.texture = SKTexture(imageNamed: "button_move_left")
        spriteNodeComponent.zPositionContainer = GlideZPositionContainer.camera
        entity.addComponent(spriteNodeComponent)
        
        let touchButtonComponent = TouchButtonComponent(spriteNode: spriteNodeComponent.spriteNode, input: .profiles([(name: "Player1_Horizontal", isNegative: true)]))
        entity.addComponent(touchButtonComponent)
        
        return entity
    }
    
    func layoutTouchControls() {
        if let moveLeftNode = moveLeftTouchButtonEntity.component(ofType: SpriteNodeComponent.self)?.spriteNode {
            let margin: CGFloat = 30.0
            let nodePositionX = -size.width / 2 + moveLeftNode.size.width / 2 + margin
            let nodePositionY = -size.height / 2 + moveLeftNode.size.height / 2 + margin
            let nodePosition = CGPoint(x: nodePositionX, y: nodePositionY)
            
            moveLeftTouchButtonEntity.transform.currentPosition = nodePosition
        }
    }
    #endif
}
