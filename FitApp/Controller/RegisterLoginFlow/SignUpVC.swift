//
//  SignUpVC.swift
//  FitApp
//
//  Created by Trung iOS on 5/22/20.
//  Copyright © 2020 Fighting. All rights reserved.
//

import UIKit

class SignUpVC: BaseViewController {
    
    @IBOutlet weak var txtName: UITextField!
    @IBOutlet weak var txtEmail: UITextField!
    @IBOutlet weak var txtPhoneNumber: UITextField!
    @IBOutlet weak var txtPassword: UITextField!
    @IBOutlet weak var txtConfirmPassword: UITextField!
    
    @IBOutlet weak var viewLineName: UIView!
    @IBOutlet weak var viewLineEmail: UIView!
    @IBOutlet weak var viewLinePhoneNumber: UIView!
    @IBOutlet weak var viewLinePassword: UIView!
    @IBOutlet weak var viewLineConfirmPassword: UIView!
    
    @IBOutlet weak var heightViewLineName: NSLayoutConstraint!
    @IBOutlet weak var heightViewLineEmail: NSLayoutConstraint!
    @IBOutlet weak var heightViewLinePhoneNumber: NSLayoutConstraint!
    @IBOutlet weak var heightViewLinePassword: NSLayoutConstraint!
    @IBOutlet weak var heightViewLineConfirmPassword: NSLayoutConstraint!
    
    
    @IBOutlet weak var btnSignIn: UIButton!
    @IBOutlet weak var viewBtnFacebook: UIView!
    @IBOutlet weak var viewBtnGoogle: UIView!
    @IBOutlet weak var viewBtnApple: UIView!
    
    let HEIGHT_CONSTANT: CGFloat = 1.5
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        // Do any additional setup after loading the view.
        setUpView()
    }
    
    func setUpView() {
        txtName.delegate = self
        txtEmail.delegate = self
        txtPhoneNumber.delegate = self
        txtPassword.delegate = self
        txtConfirmPassword.delegate = self
        
        viewLineName.backgroundColor = UNSELECTED_FIELD
        viewLineEmail.backgroundColor = UNSELECTED_FIELD
        viewLinePhoneNumber.backgroundColor = UNSELECTED_FIELD
        viewLinePassword.backgroundColor = UNSELECTED_FIELD
        viewLineConfirmPassword.backgroundColor = UNSELECTED_FIELD
        
        roundCorner(views: [btnSignIn, viewBtnFacebook, viewBtnGoogle, viewBtnApple], radius: ROUND_BORDER_BUTTON)
        addBorder(views: [viewBtnFacebook, viewBtnGoogle, viewBtnApple], width: BORDER_WIDTH, color: BORDER_COLOR.cgColor)
        
    }
    
}

extension SignUpVC : UITextFieldDelegate {
    func textFieldShouldBeginEditing(_ textField: UITextField) -> Bool {
        switch textField {
        case txtName:
            heightViewLineName.constant = HEIGHT_CONSTANT
            UIView.animate(withDuration: 0.5) {
                self.viewLineName.backgroundColor = MAIN_COLOR
            }
            return true
        case txtEmail:
            heightViewLineEmail.constant = HEIGHT_CONSTANT
            UIView.animate(withDuration: 0.5) {
                self.viewLineEmail.backgroundColor = MAIN_COLOR
            }
            return true
        case txtPhoneNumber:
            heightViewLinePhoneNumber.constant = HEIGHT_CONSTANT
            UIView.animate(withDuration: 0.5) {
                self.viewLinePhoneNumber.backgroundColor = MAIN_COLOR
            }
            return true
        case txtPassword:
            heightViewLinePassword.constant = HEIGHT_CONSTANT
            UIView.animate(withDuration: 0.5) {
                self.viewLinePassword.backgroundColor = MAIN_COLOR
            }
            return true
        case txtConfirmPassword:
            heightViewLineConfirmPassword.constant = HEIGHT_CONSTANT
            UIView.animate(withDuration: 0.5) {
                self.viewLineConfirmPassword.backgroundColor = MAIN_COLOR
            }
            return true
        default:
            return true
        }
    }
    
    func textFieldShouldEndEditing(_ textField: UITextField) -> Bool {
        switch textField {
        case txtName:
            if txtName.text != "" {
                heightViewLineName.constant = HEIGHT_CONSTANT
                viewLineName.backgroundColor = MAIN_COLOR
            } else {
                heightViewLineName.constant = 1
                viewLineName.backgroundColor = UNSELECTED_FIELD
            }
            return true
        case txtEmail:
            if txtEmail.text != "" {
                heightViewLineEmail.constant = HEIGHT_CONSTANT
                viewLineEmail.backgroundColor = MAIN_COLOR
            } else {
                heightViewLineEmail.constant = 1
                viewLineEmail.backgroundColor = UNSELECTED_FIELD
            }
            return true
        case txtPhoneNumber:
            if txtPhoneNumber.text != "" {
                heightViewLinePhoneNumber.constant = HEIGHT_CONSTANT
                viewLinePhoneNumber.backgroundColor = MAIN_COLOR
            } else {
                heightViewLinePhoneNumber.constant = 1
                viewLinePhoneNumber.backgroundColor = UNSELECTED_FIELD
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
        case txtConfirmPassword:
            if txtConfirmPassword.text != "" {
                heightViewLineConfirmPassword.constant = HEIGHT_CONSTANT
                viewLineConfirmPassword.backgroundColor = MAIN_COLOR
            } else {
                heightViewLineConfirmPassword.constant = 1
                viewLineConfirmPassword.backgroundColor = UNSELECTED_FIELD
            }
            return true
        default:
            return true
        }
    }
}
