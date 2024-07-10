//
//  ViewController.swift
//  Week4
//
//  Created by shachar on 2024/7/8.
//
/*
 解題步驟
 1.加上協議
 2.確定section數量
 3.tableView協議 數量以及Cell設定
 4.作業要素
 
 
 */
import UIKit

class ViewController: UIViewController, UITableViewDataSource, UITableViewDelegate {
    

    @IBOutlet weak var tableView: UITableView!
    var data0 :[String] = []
    var data1 : [String] = []
   
    
    override func viewDidLoad() {
        super.viewDidLoad()
        tableView.dataSource = self
        tableView.delegate = self
        for i in 0..<10 {
            data0.append("This is section 0, row " + String(i))
        }
        for j in 0..<5 {
            data1.append("This is section 1, row " + String(j))
        }
        tableView.reloadData()
    }
    
    func numberOfSections(in tableView: UITableView) -> Int {
        return 2
    }
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return section == 0 ? data0.count : data1.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        if indexPath.section == 0{
            let cell = tableView.dequeueReusableCell(withIdentifier: "Cell0", for: indexPath)
            cell.textLabel?.text = data0[indexPath.row]
            return cell
        }else {
            let cell = tableView.dequeueReusableCell(withIdentifier: "Cell1", for: indexPath)
            cell.textLabel?.text = data1[indexPath.row]
            return cell
        }
    }
    

}

//numberOfSections 詢問tableView裡面有幾個section
//numberOfRowsInSection 詢問每個section裡面有多少行
//cellForRowAt 詢問每一個cell的內容。而row是該分組下的行號
