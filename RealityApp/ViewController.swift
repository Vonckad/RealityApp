//
//  ViewController.swift
//  RealityApp
//
//  Created by Vlad Ralovich on 9/8/20.
//

import RealityKit
import ARKit

class ViewController: UIViewController {
    
    @IBOutlet var arView: ARView!
//    @IBOutlet var arScnView: ARSCNView!
    override func viewDidLoad() {
        super.viewDidLoad()
        
        let configuration = ARFaceTrackingConfiguration()
        
//        arScnView.session.run(configuration)
        arView.session.run(configuration)

        
        // Load the "Box" scene from the "Experience" Reality File
        let faceAnchor = try! Experience.loadBox()
        
        // Add the box anchor to the scene
        arView.scene.anchors.append(faceAnchor)
    }
}
