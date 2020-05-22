//
//  ViewController.swift
//  FitApp
//
//  Created by Trung iOS on 5/22/20.
//  Copyright © 2020 Fighting. All rights reserved.
//

import UIKit

class ViewController: BaseViewController {

    @IBOutlet weak var txtEmail: UITextField!
    @IBOutlet weak var txtPassword: UITextField!
    @IBOutlet weak var viewLineEmail: UIView!
    @IBOutlet weak var viewLinePassword: UIView!
    @IBOutlet weak var btnSignIn: UIButton!
    @IBOutlet weak var viewBtnFacebook: UIView!
    @IBOutlet weak var viewBtnGoogle: UIView!
    @IBOutlet weak var viewBtnApple: UIView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }
    
    func setUpView() {
        txtEmail.delegate = self
        txtPassword.delegate = self
        
        viewLineEmail.backgroundColor = UNSELECTED_FIELD
        viewLinePassword.backgroundColor = UNSELECTED_FIELD
        
        roundCorner(views: [btnSignIn, viewBtnApple, viewBtnGoogle, viewBtnFacebook], radius: ROUND_BORDER_BUTTON)
        addBorder(views: [viewBtnApple, viewBtnGoogle, viewBtnFacebook], width: BORDER_WIDTH, color: BORDER_COLOR.cgColor)
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
                viewLineEmail.backgroundColor = UNSELECTED_FIELD
            }
        case txtPassword:
            if txtPassword.text != "" {
                viewLinePassword.backgroundColor = MAIN_COLOR
            } else {
                viewLinePassword.backgroundColor = UNSELECTED_FIELD
            }
        default:
            return true
        }
        return true
        
    }
}

