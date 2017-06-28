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
        
        
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}

