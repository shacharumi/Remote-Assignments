//
//  ViewController.swift
//  Part5
//
//  Created by shachar on 2024/6/27.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var middleLabel: UILabel!
    @IBOutlet weak var topLabel: UILabel!
    @IBOutlet weak var bottonText: UIButton!
    let text = [
        "Lorem ipsum dolor sit amet, consectetur adipiscing elit. Maecenas tempus.",
        "Contrary to popular belief, Lorem Ipsum is not simply random text.",
        "Richard McClintock, a Latin professor at Hampden-Sydney College in ",
        "looked up one of the more obscure Latin words, consectetur",
        "from a Lorem Ipsum passage, and going through the cities of the word",
        "This book is a treatise on the theory of ethics, very popular during the.",
        "The first line of Lorem Ipsum, Lorem ipsum dolor sit amet..",
    ]
    
    let colors: [UIColor] = [
        UIColor(red: 0.0, green: 128/255.0, blue: 0.0, alpha: 1.0),
        UIColor(red: 220/255.0, green: 20/255.0, blue: 60/255.0, alpha: 1.0),
        UIColor(red: 0.0, green: 0.0, blue: 139/255.0, alpha: 1.0),
        UIColor(red: 72/255.0, green: 61/255.0, blue: 139/255.0, alpha: 1.0),
        UIColor(red: 184/255.0, green: 134/255.0, blue: 11/255.0, alpha: 1.0),
        UIColor(red: 169/255.0, green: 169/255.0, blue: 169/255.0, alpha: 1.0),
        UIColor(red: 199/255.0, green: 21/255.0, blue: 133/255.0, alpha: 1.0)
        ]
       
    @IBAction func pressButton(_ sender: UIButton) {
        let randomnumber = Int.random(in: 0..<text.count)
        middleLabel.text = text[randomnumber]
        bottonText.setTitleColor(colors[randomnumber], for: .normal)
        view.backgroundColor = colors[randomnumber]
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        view.backgroundColor = colors[0]
        bottonText.setTitleColor(colors[0], for: .normal)
        middleLabel.text = text[0]
        topLabel.alpha = 0.6
        // Do any additional setup after loading the view.
    }


}

