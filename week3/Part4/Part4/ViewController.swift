//
//  ViewController.swift
//  Part4
//
//  Created by shachar on 2024/7/1.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var SegmentControl: UISegmentedControl!
    
    @IBOutlet weak var segmentText: UISegmentedControl!
    @IBOutlet weak var accountTextField: UITextField!
    @IBOutlet weak var checkTextField: UITextField!
    @IBOutlet weak var passWordTextField: UITextField!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        checkTextField.isEnabled = false
        checkTextField.alpha = 0.5
        segmentText.setTitleTextAttributes([.foregroundColor : UIColor.black], for: .normal)
        segmentText.setTitleTextAttributes([.foregroundColor : UIColor.white], for: .selected)
        segmentText.layer.borderColor = UIColor.black.cgColor
    }

    @IBAction func segmentChange(_ sender: UISegmentedControl) {
        if sender.selectedSegmentIndex == 0 {
            //textfiled color
            checkTextField.isEnabled = false
            checkTextField.alpha = 0.5
            //segement color
            
        }else{
            checkTextField.isEnabled = true
            checkTextField.alpha = 1
        }
        checkTextField.text = ""
        accountTextField.text = ""
        passWordTextField.text = ""
        segmentText.setTitleTextAttributes([.foregroundColor : UIColor.black], for: .normal)
        segmentText.setTitleTextAttributes([.foregroundColor : UIColor.white], for: .selected)
    }
    
    
    @IBAction func PressButton(_ sender: Any) {
        let account = accountTextField.text
        let password = passWordTextField.text
        let check = checkTextField.text
        
        if account?.isEmpty == true {
            showAlert(message: "Account should not be empty.")
        }
        
        if password?.isEmpty == true {
            showAlert(message: "Password should not be empty")
        }
        
        if check?.isEmpty == true  && checkTextField.isEnabled{
            showAlert(message: "Check Password should not be empty")
        }
        
        //輸入正確
        if (account != "appworks_school" || password != "1234" ) && checkTextField.isEnabled == false {
            showAlert(message: "Login fail")
        }else if account == "appworks_school" && password == "1234" && !checkTextField.isEnabled{
            reShowAlert(message: "log in")
        }
        
        //密碼跟驗證不相同 或者 帳號為空
        if password != check  && checkTextField.isEnabled {
            showAlert(message: "signup fail")
        }
        //密碼跟驗證相同 並且 帳號不為空
        if password == check && account?.isEmpty == false{
            reShowAlert(message: "sign up")
        }
    }
    
    
    func showAlert(message : String){
        let alert = UIAlertController(title: "Error", message: message, preferredStyle: .alert)
        alert.addAction(UIAlertAction(title: "OK", style: .default, handler: nil))
        present(alert, animated: true , completion: nil)
    }
    func reShowAlert(message : String){
        let alert = UIAlertController(title: "Welcome", message: message, preferredStyle: .alert)
        alert.addAction(UIAlertAction(title: "Nextstep", style: .default, handler: nil))
        present(alert, animated: true , completion: nil)
    }
}

