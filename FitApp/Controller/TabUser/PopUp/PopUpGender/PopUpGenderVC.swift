//
//  PopUpGenderVC.swift
//  FitApp
//
//  Created by Linh Nguyen on 5/23/20.
//  Copyright © 2020 Fighting. All rights reserved.
//

import UIKit

class PopUpGenderVC: BaseViewController {
    
    @IBOutlet weak var viewPopUp: UIView!
    @IBOutlet weak var pickerView: UIPickerView!
    
    var arrayGender = ["Nam" , "Nữ"]
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        // Do any additional setup after loading the view.
        setUpView()
        setUpPickerView()
    }
    
    func setUpView() {
        view.isOpaque = false
        view.backgroundColor = UIColor.black.withAlphaComponent(0.5)
        
        roundCorner(views: [viewPopUp], radius: 15)
    }
    
    func setUpPickerView() {
        pickerView.dataSource = self
        pickerView.delegate = self
    }
    
    @IBAction func tapOnCancel(_ sender: Any) {
        self.dismiss(animated: true, completion: nil)
    }
    
    @IBAction func tapOnAccept(_ sender: Any) {
    }
    
}

extension PopUpGenderVC: UIPickerViewDelegate, UIPickerViewDataSource {
    func numberOfComponents(in pickerView: UIPickerView) -> Int {
        return 1
    }
    
    func pickerView(_ pickerView: UIPickerView, numberOfRowsInComponent component: Int) -> Int {
        return arrayGender.count
    }
    
    func pickerView(_ pickerView: UIPickerView, titleForRow row: Int, forComponent component: Int) -> String? {
        return arrayGender[row]
    }
}
