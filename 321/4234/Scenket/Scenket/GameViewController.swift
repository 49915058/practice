//
//  GameViewController.swift
//  Scenket
//
//  Created by user38 on 2018/3/2.
//  Copyright © 2018年 user38. All rights reserved.
//

import UIKit
import QuartzCore
import SceneKit

class GameViewController: UIViewController {
    var scnView:SCNView? = nil
    var scnScene:SCNScene? = nil
    override func viewDidLoad() {
        super.viewDidLoad()
        setupView()
        setupScenc()
        
        
    }
    func setupView() {
        scnView = self.view as? SCNView
        scnView?.showsStatistics = true
        scnView?.allowsCameraControl = true
        scnView?.autoenablesDefaultLighting = true
    }
    func setupScenc(){
        scnScene = SCNScene()
        scnView?.scene = scnScene
        scnScene?.background.contents = 
        
    }
    
    
    
    override var shouldAutorotate: Bool {
        return true
    }
    
    override var prefersStatusBarHidden: Bool {
        return true
    }
   
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Release any cached data, images, etc that aren't in use.
    }

}
