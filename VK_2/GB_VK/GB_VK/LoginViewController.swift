//
//  ViewController.swift
//  GB_VK
//
//  Created by Азария on 24.06.2022.
//

import UIKit


class LoginViewController: UIViewController {
    @IBOutlet weak var inputLable: UILabel!
    @IBOutlet weak var loginLable: UILabel!
    @IBOutlet weak var passwordLable: UILabel!
    @IBOutlet weak var loginTextField: UITextField!
    @IBOutlet weak var passwotdTextField: UITextField!
    
    
    
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
    }

    @IBAction func loginButton(_ sender: Any) {
        
    }
    
    override func shouldPerformSegue(withIdentifier identifier: String, sender: Any?) -> Bool {
        
        let login = loginTextField.text!
        let passwprd = passwotdTextField.text!
        
        if login == "" && passwprd == ""{
            return true
        }else{
            let arlet = UIAlertController(title: "Ошибка", message: "Введены неверные данные пользователя", preferredStyle: .alert)
            let action = UIAlertAction(title: "OK", style: .cancel, handler: nil)
            
            arlet.addAction(action)
            present(arlet, animated: true, completion: nil)
            return false
        }
    }
    
    
}

