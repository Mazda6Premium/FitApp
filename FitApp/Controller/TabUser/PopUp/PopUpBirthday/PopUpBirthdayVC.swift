//
//  PopUpBirthdayVC.swift
//  FitApp
//
//  Created by Linh Nguyen on 5/23/20.
//  Copyright © 2020 Fighting. All rights reserved.
//

import UIKit

class PopUpBirthdayVC: BaseViewController {

    @IBOutlet weak var viewPopUp: UIView!
    @IBOutlet weak var datePicker: UIDatePicker!
    
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
        setUpView()
        setUpDatePicker()
    }
    
    func setUpView() {
        view.isOpaque = false
        view.backgroundColor = UIColor.black.withAlphaComponent(0.5)
        
        roundCorner(views: [viewPopUp], radius: 15)
    }
    
    func setUpDatePicker() {
        datePicker.datePickerMode = .date
    }

    @IBAction func tapOnCancel(_ sender: Any) {
        self.dismiss(animated: true, completion: nil)
    }
    
    @IBAction func tapOnAccept(_ sender: Any) {
    }
}
