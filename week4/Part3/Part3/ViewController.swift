//
//  ViewController.swift
//  Part3
//
//  Created by shachar on 2024/7/9.
//

import UIKit

struct type : Codable {
    let stationID : String
    let stationName : String
    let stationAddress : String
}

enum GHError : Error {
    case invalidURL
    case invalidData
}

class ViewController: UIViewController {
    @IBOutlet weak var stationId: UILabel!
    @IBOutlet weak var stationName: UILabel!
    @IBOutlet weak var stationAddress: UILabel!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        Task{
            do {
                let station = try await fetchData()
                DispatchQueue.main.async {
                    self.stationId.text = station.stationID
                    self.stationName.text = station.stationName
                    self.stationAddress.text = station.stationAddress
                }
            } catch {
                print(error)
            }
        }
        
    }
    
    func fetchData() async throws -> type{
        let url = "https://remote-assignment.s3.ap-northeast-1.amazonaws.com/station"
        guard let request = URL(string: url) else{
            throw GHError.invalidURL
        }
        let (data, response) = try await URLSession.shared.data(from: request )
        do {
            let decoder = JSONDecoder()
            return try decoder.decode(type.self, from: data)
        } catch {
            throw GHError.invalidData
        }
    }
    
}

