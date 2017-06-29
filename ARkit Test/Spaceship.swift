//
//  Spaceship.swift
//  ARkit Test
//
//  Created by Art Grichine on 6/28/17.
//  Copyright © 2017 MAVA. All rights reserved.
//

import ARKit

class Spaceship: SCNNode {
    
    func loadModel() {
        guard let virtualObjectScene = SCNScene(named: "art.scnassets/ship.scn") else { return }
        
        let wrapperNode = SCNNode()
        
        for child in virtualObjectScene.rootNode.childNodes {
            wrapperNode.addChildNode(child)
        }
        
        self.addChildNode(wrapperNode)
    }
    
}
