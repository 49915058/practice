//
//  ViewController.swift
//  321
//
//  Created by user38 on 2018/3/2.
//  Copyright © 2018年 user38. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    @IBOutlet var logIN: UILabel!
    @IBOutlet var textfield: UITextField!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        
    }
    override func viewDidAppear(_ animated: Bool) {
        
      let move  =  CABasicAnimation.init(keyPath: "position.x")
        
        move.fromValue = 0
        move.toValue = 300
        move.duration = 2
        
      self.logIN.layer.add(move, forKey: nil)
    
        
//        let toRinght = CABasicAnimation.init(keyPath: "123")
//       toRinght.fromValue = 0
//        toRinght.toValue = 500
//        toRinght.byValue = 3
//
        
        
      //  toRinght.delegate = self
        //toRinght.setValue(self.logIN.layer, forKey: "123")
      //  self.logIN.layer.add(toRinght, forKey: nil)
      
        
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}

extension ViewController:CAAnimationDelegate{
    func animationDidStop(_ anim: CAAnimation, finished flag: Bool) {
        print("動畫暫停")
        anim.value(forKey: "longinKey")
    }
}
