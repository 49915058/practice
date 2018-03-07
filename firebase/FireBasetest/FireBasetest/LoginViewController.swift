//
//  LoginViewController.swift
//  FireBasetest
//
//  Created by user38 on 2018/3/6.
//  Copyright © 2018年 user38. All rights reserved.
//

import UIKit
import FirebaseAuth
class LoginViewController: UIViewController {
    @IBOutlet var acc: UITextField!
    
    @IBOutlet var pass: UITextField!
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }

    @IBAction func logINBtn(_ sender: Any) {
        Auth.auth().signIn(withEmail: acc.text!, password: pass.text!) { (user, error) in
            if errno ==  nil {
            print(user)
                var userdefaults = UserDefaults.standard
            
        }
        }}
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destinationViewController.
        // Pass the selected object to the new view controller.
    }
    */

}
