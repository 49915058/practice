//
//  ViewController.swift
//  123
//
//  Created by user38 on 2018/3/6.
//  Copyright © 2018年 user38. All rights reserved.
//

import UIKit

struct BookPreview{
    var title:String
    var contect:[String]
    init(title:String,contect:[String]){
        self.title = title
        self.contect = contect
    }
    
}

class ViewController: UIViewController,UICollectionViewDataSource,UICollectionViewDelegate {
    
    let books = [BookPreview.init(title: "一", contect: ["a","b","c","d","c","d"]),
                 BookPreview.init(title: "二", contect: ["a","b","c","d","c","d"]),
                 BookPreview.init(title: "三", contect: ["a","b","c","d","c","d"]),
                 BookPreview.init(title: "四", contect: ["a","b","c","d","c","d"]),
                 ]
    
    
    
//    let data1 = ["ㄧ","二"]
//    let data2 = ["ㄧ","二"]
//    let data3 = ["ㄧ","二"]
//    let data4 = ["ㄧ","二"]
    
  //  let session = [["1","2"],["3","4"]]
    
   
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
    }
    
    
    
    func numberOfSections(in collectionView: UICollectionView) -> Int {
        return books.count
    }
    
    public func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int{
        return books[section].contect.count
    }
    func collectionView(_ collectionView: UICollectionView, viewForSupplementaryElementOfKind kind: String, at indexPath: IndexPath) -> UICollectionReusableView {
        
        let sessionHead  = collectionView.dequeueReusableSupplementaryView(ofKind: UICollectionElementKindSectionHeader, withReuseIdentifier: "HeadView", for: indexPath) as! headCollectionReusableView
        sessionHead.lable123.text = books[indexPath.section].title
        
   return sessionHead

        
    }

    func collectionView(_ collectionView: UICollectionView, didSelectItemAt indexPath: IndexPath) {
        print(indexPath)
    }
//    func collectionView(_ collectionView: UICollectionView, viewForSupplementaryElementOfKind kind: String, at indexPath: IndexPath) -> UICollectionReusableView {
//        var reusableView = UICollectionReusableView()
//        
//    }
    
    // The cell that is returned must be retrieved from a call to -dequeueReusableCellWithReuseIdentifier:forIndexPath:
    
    public func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell{
        let cell = collectionView.dequeueReusableCell(withReuseIdentifier: "cell", for: indexPath) as! TypeCollectionViewCell
        
        cell.lable123.text = books[indexPath.section].contect[indexPath.row]
        
        
        return cell
    }
    
    

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}

