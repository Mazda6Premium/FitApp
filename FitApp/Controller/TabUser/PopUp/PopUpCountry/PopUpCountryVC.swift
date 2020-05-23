//
//  PopUpCountryVC.swift
//  FitApp
//
//  Created by Linh Nguyen on 5/23/20.
//  Copyright © 2020 Fighting. All rights reserved.
//

import UIKit

class PopUpCountryVC: BaseViewController {

    @IBOutlet weak var viewPopUp: UIView!
    @IBOutlet weak var pickerView: UIPickerView!
    
    var arrayCountry = ["Vietnam", "USA", "Germany", "China", "Spain", "France", "Thailand", "Japan", "Korea"]
    
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

extension PopUpCountryVC: UIPickerViewDataSource, UIPickerViewDelegate {
    func numberOfComponents(in pickerView: UIPickerView) -> Int {
        return 1
    }
    
    func pickerView(_ pickerView: UIPickerView, numberOfRowsInComponent component: Int) -> Int {
        return arrayCountry.count
    }
    
    func pickerView(_ pickerView: UIPickerView, titleForRow row: Int, forComponent component: Int) -> String? {
        return arrayCountry[row]
    }
    

}
