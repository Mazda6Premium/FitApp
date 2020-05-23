//
//  UserDetailVC.swift
//  FitApp
//
//  Created by Linh Nguyen on 5/23/20.
//  Copyright © 2020 Fighting. All rights reserved.
//

import UIKit

class UserDetailVC: BaseViewController {
    
    @IBOutlet weak var imgAvatar: UIImageView!
    
    @IBOutlet weak var txtName: UITextField!
    @IBOutlet weak var txtBirthday: UITextField!
    @IBOutlet weak var txtGender: UITextField!
    @IBOutlet weak var txtLocation: UITextField!
    @IBOutlet weak var txtEmail: UITextField!
    @IBOutlet weak var txtPhoneNumber: UITextField!
    
    @IBOutlet weak var viewLineName: UIView!
    @IBOutlet weak var viewLineBirthday: UIView!
    @IBOutlet weak var viewLineGender: UIView!
    @IBOutlet weak var viewLineLocation: UIView!
    @IBOutlet weak var viewLineEmail: UIView!
    @IBOutlet weak var viewLinePhoneNumber: UIView!
    
    @IBOutlet weak var heightViewLineName: NSLayoutConstraint!
    @IBOutlet weak var heightViewLineBirthday: NSLayoutConstraint!
    @IBOutlet weak var heightViewLineGender: NSLayoutConstraint!
    @IBOutlet weak var heightViewLineLocation: NSLayoutConstraint!
    @IBOutlet weak var heightViewLineEmail: NSLayoutConstraint!
    @IBOutlet weak var heightViewLinePhoneNumber: NSLayoutConstraint!
    
    @IBOutlet weak var btnSave: UIButton!
    
    let HEIGHT_CONSTANT: CGFloat = 1.5
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        // Do any additional setup after loading the view.
        setUpView()
    }
    
    func setUpView() {
        roundCorner(views: [imgAvatar], radius: 25)
        roundCorner(views: [btnSave], radius: ROUND_BORDER_BUTTON)
        
        txtName.delegate = self
        txtBirthday.delegate = self
        txtGender.delegate = self
        txtLocation.delegate = self
        txtEmail.delegate = self
        txtPhoneNumber.delegate = self
        
        changeBackgroundColor(views: [viewLineName, viewLineBirthday, viewLineGender, viewLineLocation, viewLineEmail, viewLinePhoneNumber ], color: UNSELECTED_FIELD)
        
        
    }
    
}

extension UserDetailVC : UITextFieldDelegate {
    func textFieldShouldBeginEditing(_ textField: UITextField) -> Bool {
        switch textField {
        case txtName:
            heightViewLineName.constant = HEIGHT_CONSTANT
            UIView.animate(withDuration: 0.5) {
                self.viewLineName.backgroundColor = MAIN_COLOR
            }
            return true
            
        case txtBirthday:
            heightViewLineBirthday.constant = HEIGHT_CONSTANT
            UIView.animate(withDuration: 0.5) {
                self.viewLineBirthday.backgroundColor = MAIN_COLOR
            }
            
            let vc = PopUpBirthdayVC(nibName: "PopUpBirthdayVC", bundle: nil)
            vc.modalPresentationStyle = .overFullScreen
            self.present(vc, animated: true, completion: nil)
            
            return false
            
        case txtGender:
            heightViewLineGender.constant = HEIGHT_CONSTANT
            UIView.animate(withDuration: 0.5) {
                self.viewLineGender.backgroundColor = MAIN_COLOR
            }
            
            let vc = PopUpGenderVC(nibName: "PopUpGenderVC", bundle: nil)
            vc.modalPresentationStyle = .overFullScreen
            self.present(vc, animated: true, completion: nil)
            
            return false
            
        case txtLocation:
            heightViewLineLocation.constant = HEIGHT_CONSTANT
            UIView.animate(withDuration: 0.5) {
                self.viewLineLocation.backgroundColor = MAIN_COLOR
            }
            
            let vc = PopUpCountryVC(nibName: "PopUpCountryVC", bundle: nil)
            vc.modalPresentationStyle = .overFullScreen
            self.present(vc, animated: true, completion: nil)
            
            return false
            
        case txtEmail:
            heightViewLineEmail.constant = HEIGHT_CONSTANT
            UIView.animate(withDuration: 0.5) {
                self.viewLineEmail.backgroundColor = MAIN_COLOR
            }
            
            let vc = PopUpVerifyEmailVC(nibName: "PopUpVerifyEmailVC", bundle: nil)
            vc.modalPresentationStyle = .overFullScreen
            self.present(vc, animated: true, completion: nil)
            
            return false
        case txtPhoneNumber:
            heightViewLinePhoneNumber.constant = HEIGHT_CONSTANT
            UIView.animate(withDuration: 0.5) {
                self.viewLinePhoneNumber.backgroundColor = MAIN_COLOR
            }
            
            let vc = PopUpVerifyPhoneNumber(nibName: "PopUpVerifyPhoneNumber", bundle: nil)
            vc.modalPresentationStyle = .overFullScreen
            self.present(vc, animated: true, completion: nil)
            
            return false
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
        case txtBirthday:
            if txtBirthday.text != "" {
                heightViewLineBirthday.constant = HEIGHT_CONSTANT
                viewLineBirthday.backgroundColor = MAIN_COLOR
            } else {
                heightViewLineBirthday.constant = 1
                viewLineBirthday.backgroundColor = UNSELECTED_FIELD
            }
            return true
        case txtGender:
            if txtGender.text != "" {
                heightViewLineBirthday.constant = HEIGHT_CONSTANT
                viewLineBirthday.backgroundColor = MAIN_COLOR
            } else {
                heightViewLineBirthday.constant = 1
                viewLineBirthday.backgroundColor = UNSELECTED_FIELD
            }
            return true
        case txtLocation:
            if txtLocation.text != "" {
                heightViewLineLocation.constant = HEIGHT_CONSTANT
                viewLineLocation.backgroundColor = MAIN_COLOR
            } else {
                heightViewLineLocation.constant = 1
                viewLineLocation.backgroundColor = UNSELECTED_FIELD
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
        default:
            return true
        }
    }
    
}
