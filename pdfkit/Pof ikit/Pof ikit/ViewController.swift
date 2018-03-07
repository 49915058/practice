//
//  ViewController.swift
//  Pof ikit
//
//  Created by user38 on 2018/3/5.
//  Copyright © 2018年 user38. All rights reserved.
//

import UIKit
import PDFKit
class ViewController: UIViewController {

    @IBOutlet var podfView: UIView!
    var document = PDFDocument.self
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        // Do any additional setup after loading the view, typically from a nib.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}

