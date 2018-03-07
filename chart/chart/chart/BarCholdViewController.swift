//
//  BarCholdViewController.swift
//  chart
//
//  Created by user38 on 2018/3/5.
//  Copyright © 2018年 user38. All rights reserved.
//

import UIKit
import Charts
class BarCholdViewController: UIViewController {
    @IBOutlet var barChild: BarChartView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        setupData()
        // Do any additional setup after loading the view.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    func setupData(){
        let values = [20.0, 4.0, 6.0, 3.0, 12.0, 16.0, 4.0, 18.0, 2.0, 4.0, 5.0, 4.0]
        var dataEntries:[BarChartDataEntry] = []
        for (index,value) in values.enumerated() {
            let entry = BarChartDataEntry(x: Double(index), y:  Double(value))
            dataEntries.append(entry)
        }
        let dataSet = BarChartDataSet(values: dataEntries, label: "Units Sold")
        let barChartData = BarChartData(dataSets: [dataSet])
        self.barChild.data = barChartData
        var color:[UIColor]=[]
        color.append(contentsOf: ChartColorTemplates.colorful())
        dataSet.colors = color
        let line = ChartLimitLine.init(limit: 11.0, label: "Target")
        
        
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
