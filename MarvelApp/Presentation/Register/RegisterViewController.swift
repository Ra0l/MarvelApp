//
//  RegisterViewController.swift
//  MarvelApp
//
//  Created by Raul Kevin Aliaga Shapiama on 4/25/23.
//

import UIKit
import MUIKit

class RegisterViewController: UIViewController {

    @IBOutlet weak var lblBack: UILabel!
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
        navigationItem.hidesBackButton = true
        
        
        let tappGesture = UITapGestureRecognizer(target: self, action: #selector(tappedOnLabel(_ :)))
        lblBack.addGestureRecognizer(tappGesture)
        lblBack.isUserInteractionEnabled = true

    }
    
    @objc func tappedOnLabel(_ gesture: UITapGestureRecognizer) {
        self.navigationController?.popToRootViewController(animated: true)
    }

}
