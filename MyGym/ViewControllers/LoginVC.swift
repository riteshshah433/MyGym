//
//  LoginVC.swift
//  MyGym
//
//  Created by Mahendra Suryavanshi on 03/02/20.
//  Copyright © 2020 Parkhya Solution. All rights reserved.
//

import UIKit

class LoginVC: UIViewController {

    //MARK:- Screen Outlets
    @IBOutlet weak var txt_userName: UITextField!
    @IBOutlet weak var txt_password: UITextField!
    @IBOutlet weak var img_logo: UIImageView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        txt_userName.setPlaceholderColor(placeholer: "Username/Phone")
        txt_password.setPlaceholderColor(placeholer: "Password")
        
        MyGym.shared.setAnimatiedLogo(view: img_logo)
        
    }
    @IBAction func loginBtnAction(_ sender: Any) {
        setRootVC()
    }
    @IBAction func fb_loginBtnAction(_ sender: Any) {
        setRootVC()
    }
    @IBAction func google_loginBtnAction(_ sender: Any) {
        setRootVC()
    }
    func setRootVC() {
        let tabBar = storyboard?.instantiateViewController(withIdentifier: "TabBarController")
        self.navigationController?.pushViewController(tabBar!, animated: true)
    }
}

extension LoginVC:UITextFieldDelegate{
    func textFieldShouldReturn(_ textField: UITextField) -> Bool {
        return textField.resignFirstResponder()
    }
}
