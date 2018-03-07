//
//  ViewController.swift
//  123
//
//  Created by user38 on 2018/3/2.
//  Copyright © 2018年 user38. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    @IBOutlet var grayView: UIView!
    
    @IBOutlet var textFoeld: UITextField!
    override func viewDidLoad() {
        
    }
    
    override func viewDidAppear(_ animated: Bool) {
       // self.textFoeld.becomeFirstResponder()//跳出鍵盤
        
        
    }
    override func viewWillAppear(_ animated: Bool) {
        
//        let  toRight = CABasicAnimation.init(keyPath: "position.x")
//        toRight.fromValue = 0//開始位置
//        toRight.toValue = 200
//        toRight.duration = 0.5
//
        
    //    textFoeld.layer.add(toRight, forKey: nil)
    }
   
//    override func touchesBegan(_ touches: Set<UITouch>, with event: UIEvent?) {
//        print("觸發事件")//
//      //   self.textFoeld.resignFirstResponder()//鍵盤縮下
//     //   self.view.endEditing(true)也可以縮下鍵盤
//    }
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        
        // Dispose of any resources that can be recreated.
    }


}

