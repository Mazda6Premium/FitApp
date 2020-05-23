//
//  UserVC.swift
//  FitApp
//
//  Created by Linh Nguyen on 5/23/20.
//  Copyright © 2020 Fighting. All rights reserved.
//

import UIKit

class UserVC: BaseViewController {

    @IBOutlet weak var imgAvatar: UIImageView!
    
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
        setUpView()
    }
    
    func setUpView() {
        roundCorner(views: [imgAvatar], radius: 25)
        
        let tap = UITapGestureRecognizer(target: self, action: #selector(tapOnAvatar))
        imgAvatar.addGestureRecognizer(tap)
        imgAvatar.isUserInteractionEnabled = true
        
    }
    
    @objc func tapOnAvatar() {
        let vc = UserDetailVC(nibName: "UserDetailVC", bundle: nil)
        vc.modalPresentationStyle = .overFullScreen
        self.present(vc, animated: true , completion: nil)
    }

}
