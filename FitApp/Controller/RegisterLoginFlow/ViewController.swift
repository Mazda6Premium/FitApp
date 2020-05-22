//
//  ViewController.swift
//  FitApp
//
//  Created by Trung iOS on 5/22/20.
//  Copyright © 2020 Fighting. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var txtEmail: UITextField!
    @IBOutlet weak var txtPassword: UITextField!
    @IBOutlet weak var viewLineEmail: UIView!
    @IBOutlet weak var viewLinePassword: UIView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        setUpView()
    }
    
    func setUpView() {
        txtEmail.delegate = self
        txtPassword.delegate = self
    }

}

extension ViewController : UITextFieldDelegate {
    
    func textFieldShouldBeginEditing(_ textField: UITextField) -> Bool {
        switch textField {
        case txtEmail:
            UIView.animate(withDuration: 0.5) {
                self.viewLineEmail.backgroundColor = MAIN_COLOR
            }
        case txtPassword:
            UIView.animate(withDuration: 0.5) {
                self.viewLinePassword.backgroundColor = MAIN_COLOR
            }
        default:
            return true
        }
        return true
    }
    
    func textFieldShouldEndEditing(_ textField: UITextField) -> Bool {
        switch textField {
        case txtEmail:
            if txtEmail.text != "" {
                viewLineEmail.backgroundColor = MAIN_COLOR
            } else {
                viewLineEmail.backgroundColor = #colorLiteral(red: 0.2392156869, green: 0.6745098233, blue: 0.9686274529, alpha: 1)
            }
        case txtPassword:
            if txtPassword.text != "" {
                viewLinePassword.backgroundColor = MAIN_COLOR
            } else {
                viewLinePassword.backgroundColor = #colorLiteral(red: 0.2392156869, green: 0.6745098233, blue: 0.9686274529, alpha: 1)
            }
        default:
            return true
        }
        return true
        
    }
}
