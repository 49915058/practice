//
//  ViewController.swift
//  FireBasetest
//
//  Created by user38 on 2018/3/6.
//  Copyright © 2018年 user38. All rights reserved.
//

import UIKit
import FirebaseAuth
import FirebaseDatabase
class ViewController: UIViewController {
    @IBOutlet var message: UITextField!
    
    lazy var ref = Database.database().reference()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        var refHand = ref.observe(DataEventType.value) { (snapshot) in
            let postDict = snapshot.value as? [String : AnyObject] ?? [:]
            
            
        }
        // Do any additional setup after loading the view, typically from a nib.
    }
    @IBOutlet var sendmessage: UIButton!
    @IBAction func sendmessage1(_ sender: Any) {
      
        ref.setValue(["Lable2" : message.text,"class":message.text])
        
    }
    override func viewDidAppear(_ animated: Bool) {
//        var defaults = UserDefaults.standard
//        var email = defaults.value(forKey: "email")
//        if email == nil{
//            let logVC1 = self.storyboard?.instantiateViewController(withIdentifier: "LoginID")
//            present(logVC1!, animated: true, completion: nil)
//        }
        
    }
    
    
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    
}

