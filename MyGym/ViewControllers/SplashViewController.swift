//
//  SplashViewController.swift
//  MyGym
//
//  Created by Mahendra Suryavanshi on 01/02/20.
//  Copyright © 2020 Parkhya Solution. All rights reserved.
//

import UIKit

class SplashViewController: UIViewController {

    //MARK:- Screen Outlets
    @IBOutlet weak var img_logo: UIImageView!
    
    //MARK:- Class variables
    var loginVC:UIViewController!
    override func viewDidLoad() {
        super.viewDidLoad()

        loginVC = storyboard?.instantiateViewController(withIdentifier: "LoginVC") as! LoginVC
        MyGym.shared.setAnimatedLogoWithCompletion(view: img_logo) {
            self.perform(#selector(self.assignRoot), with: nil, afterDelay: 1.0)
        }
    }
    @objc func assignRoot() {
        let navigation = UINavigationController(rootViewController: loginVC!)
        navigation.navigationBar.isHidden = true
        delegate.window?.rootViewController = navigation
    }
}
