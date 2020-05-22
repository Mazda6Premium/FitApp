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
    
    @IBOutlet weak var heightViewLineEmail: NSLayoutConstraint!
    @IBOutlet weak var heightViewLinePassword: NSLayoutConstraint!
    
    let HEIGHT_CONSTANT: CGFloat = 1.5
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        setUpView()
    }
    
    func setUpView() {
        txtEmail.delegate = self
        txtPassword.delegate = self
        
        viewLineEmail.backgroundColor = UNSELECTED_FIELD
        viewLinePassword.backgroundColor = UNSELECTED_FIELD
        
        roundCorner(views: [btnSignIn, viewBtnApple, viewBtnGoogle, viewBtnFacebook], radius: ROUND_BORDER_BUTTON)
        addBorder(views: [viewBtnApple, viewBtnGoogle, viewBtnFacebook], width: BORDER_WIDTH, color: BORDER_COLOR.cgColor)
    }

}

extension ViewController : UITextFieldDelegate {
    
    func textFieldShouldBeginEditing(_ textField: UITextField) -> Bool {
        switch textField {
        case txtEmail:
            heightViewLineEmail.constant = HEIGHT_CONSTANT
            UIView.animate(withDuration: 0.5) {
                self.viewLineEmail.backgroundColor = MAIN_COLOR
            }
            return true
        case txtPassword:
            heightViewLinePassword.constant = HEIGHT_CONSTANT
            UIView.animate(withDuration: 0.5) {
                self.viewLinePassword.backgroundColor = MAIN_COLOR
            }
            return true
        default:
            return true
        }
    }
    
    func textFieldShouldEndEditing(_ textField: UITextField) -> Bool {
        switch textField {
        case txtEmail:
            if txtEmail.text != "" {
                heightViewLineEmail.constant = HEIGHT_CONSTANT
                viewLineEmail.backgroundColor = MAIN_COLOR
            } else {
                heightViewLineEmail.constant = 1
                viewLineEmail.backgroundColor = UNSELECTED_FIELD
            }
            return true
        case txtPassword:
            if txtPassword.text != "" {
                heightViewLinePassword.constant = HEIGHT_CONSTANT
                viewLinePassword.backgroundColor = MAIN_COLOR
            } else {
                heightViewLinePassword.constant = 1
                viewLinePassword.backgroundColor = UNSELECTED_FIELD
            }
            return true
        default:
            return true
        }
    }
}
