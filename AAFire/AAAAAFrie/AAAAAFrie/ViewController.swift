//
//  ViewController.swift
//  AAAAAFrie
//
//  Created by user38 on 2018/3/6.
//  Copyright © 2018年 user38. All rights reserved.
//

import UIKit
import Alamofire
class ViewController: UIViewController {
    let host = "http://192.168.151.66:8080"
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }
    
    @IBOutlet var thorwsomethimg: UIButton!
    @IBAction func throwSOMEthing(_ sender: Any) {
        let image = UIImage.init(named: "肉肉的.jpeg")
        let data = UIImagePNGRepresentation(image!)
           requestWith(endUrl: host + "/upload", imageData: data, parameters: [:])
    }
    
    func requestWith(endUrl: String, imageData: Data?, parameters: [String : Any] ){
        let url = endUrl
        let headers: HTTPHeaders = [
            "Content-type": "multipart/form-data"
        ]
        Alamofire.upload(multipartFormData: { (multipartFormData) in
            for (key, value) in parameters {
                multipartFormData.append("\(value)".data(using: String.Encoding.utf8)!, withName: key as String)
            }
            if let data = imageData{
                multipartFormData.append(data, withName: "image", fileName: "我是一塊肉.png", mimeType: "image/png")
            }
        }, usingThreshold: UInt64.init(), to: url, method: .post, headers: headers) { (result) in
            switch result{
            case .success(let upload, _, _):
                upload.responseJSON { response in
                    print("Succesfully uploaded")
                    if let err = response.error{
                        print("Error in upload:" )
                        return
                    }
                }
            case .failure(let error):
                print("Error in upload: \(error.localizedDescription)")
            }
        }
    }
    
    @IBAction func getMETHOD(_ sender: Any) {
        Alamofire.request(host+"/console").responseJSON { (response) in
            let hellow:[String:[String:String]]
        }
    }
    @IBOutlet var getMEYHod: UIButton!
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    
}

