//
//  ViewController.swift
//  LensKartGlass
//
//  Created by Aditya's MacBook Pro on 09/02/23.
//

import UIKit
import RealityKit
import ARKit

class ViewController: UIViewController {
    
    @IBOutlet var arView: ARView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        
        
        
        
        let config = ARFaceTrackingConfiguration()
        arView.session.run(config)
        
        
//        let blackShades =  try! Experience.loadBox()
        
        
        
        
        // Load the "Box" scene from the "Experience" Reality File
        let boxAnchor = try! Experience.loadBox()
        
        // Add the box anchor to the scene
        arView.scene.anchors.append(boxAnchor)
    }
}
