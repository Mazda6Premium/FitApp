//
//  PopUpVerifyPhoneNumber.swift
//  FitApp
//
//  Created by Linh Nguyen on 5/23/20.
//  Copyright © 2020 Fighting. All rights reserved.
//

import UIKit

class PopUpVerifyPhoneNumber: BaseViewController {
    
    @IBOutlet weak var viewPopUp: UIView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        // Do any additional setup after loading the view.
        setUpView()
    }
    
    
    func setUpView() {
        view.isOpaque = false
        view.backgroundColor = UIColor.black.withAlphaComponent(0.5)
        
        roundCorner(views: [viewPopUp], radius: 15)
    }
    
    @IBAction func tapOnCancel(_ sender: Any) {
        self.dismiss(animated: true, completion: nil)
    }
    
    @IBAction func tapOnAccept(_ sender: Any) {
    }
    
}
