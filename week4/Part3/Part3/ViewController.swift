//
//  ViewController.swift
//  Part3
//
//  Created by shachar on 2024/7/9.
//

import UIKit

class ViewController: UIViewController {
    @IBOutlet weak var stationId: UILabel!
    @IBOutlet weak var stationName: UILabel!
    @IBOutlet weak var stationAddress: UILabel!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        fetchData()
    }
    
    func fetchData(){
        let url = URL(string: "https://remote-assignment.s3.ap-northeast-1.amazonaws.com/station")!
        var request = URLRequest(url: url)
        request.httpMethod = "GET"
        let session = URLSession(configuration: .default)
        let task = session.dataTask(with: request) {
          
          (data, response, error) in
            if let data = data {
                do{
                    // data 轉 dictionary
                    if let postResponse = try JSONSerialization.jsonObject(with: data, options: []) as? [String : String] {
                        print(postResponse)
                        //注意線程
                        DispatchQueue.main.async{
                            self.stationId.text = postResponse["stationID"]
                            self.stationName.text = postResponse["stationName"]
                            self.stationAddress.text = postResponse["stationAddress"]
                        }
                    }
                }catch {
                    print(error)
                }
            }
          
        }
        task.resume()
    }
}

