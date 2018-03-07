//
//  ViewController.swift
//  chart
//
//  Created by user38 on 2018/3/5.
//  Copyright © 2018年 user38. All rights reserved.
//

import UIKit
import Charts
class ViewController: UIViewController {

    @IBOutlet var pieChartView: PieChartView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        pieChartView.noDataText="請加入資料"
        setupData()
        // Do any additional setup after loading the view, typically from a nib.
    }
    func setupData() {
        let pieChartRawData:Dictionary = ["ios 8":84, "ios 7":14, "Earlier":2]
        var yValues:[PieChartDataEntry] = []
        for (lable,value) in pieChartRawData{
            
            
            let entry:PieChartDataEntry = PieChartDataEntry.init(value: Double(value), label: lable)
            yValues.append(entry)
        }
        let dataSet = PieChartDataSet.init(values: yValues, label: "Units Sold")
        let pieChartData :PieChartData = PieChartData.init(dataSet: dataSet)
        pieChartView.data = pieChartData
        
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}

