//
//  ViewController.swift
//  ARkit Test
//
//  Created by Art Grichine on 6/28/17.
//  Copyright © 2017 MAVA. All rights reserved.
//

import UIKit
import ARKit

class ViewController: UIViewController {

    @IBOutlet weak var sceneView: ARSCNView!
    @IBOutlet var counterLabel: UIView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        
        let scene = SCNScene()
        
        sceneView.scene = scene
    }
    
    // Configurations for AR
    override func viewWillAppear(_ animated: Bool) {
        super.viewWillAppear(animated)
        
        // Tracks devices orientation & position
        let configuration = ARWorldTrackingSessionConfiguration()
        
        // .session manages motion tracking and camera properties
        sceneView.session.run(configuration)
        
        addObject()
    }
    
    func addObject() {
        let ship = Spaceship()
        ship.loadModel()
        
        let yPos = randomPosition(lowerBound: -1.5, upperBound: 1.5)
        let xPos = randomPosition(lowerBound: -1.5, upperBound: 1.5)
        
        // x, y, z vectors are all measured in 'meters' in VR space.
        //   Here, z = -1 thus object will appear 1 meter from camera
        ship.position = SCNVector3(xPos, yPos, -1)
        
        sceneView.scene.rootNode.addChildNode(ship)
    }
    
    // Returns random value bounded by lower & upper
    func randomPosition(lowerBound lower:Float, upperBound upper:Float) -> Float {
        return Float(arc4random()) / Float(UInt32.max) * (lower - upper) + upper
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}

