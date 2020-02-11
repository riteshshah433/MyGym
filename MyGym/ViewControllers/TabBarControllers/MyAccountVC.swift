//
//  MyAccountVC.swift
//  MyGym
//
//  Created by Mahendra Suryavanshi on 08/02/20.
//  Copyright © 2020 Parkhya Solution. All rights reserved.
//

import UIKit

class MyAccountVC: UIViewController {

    @IBOutlet var lbl_space: [UILabel]!
    override func viewDidLoad() {
        super.viewDidLoad()

        // Set space between label texts
        for lbl in lbl_space{
            lbl.addCharacterSpacing(kernValue: 2)
        }
    }
    @IBAction func suugestGymBtnAction(_ sender: Any) {
        let reviewGym = storyboard?.instantiateViewController(withIdentifier:  "SuggestGymVC") as! SuggestGymVC
        navigationController?.pushViewController(reviewGym, animated: true)
    }
    @IBAction func editProfileBtnAction(_ sender: Any) {
        let editProfile = storyboard?.instantiateViewController(withIdentifier:  "EditProfileVC") as! EditProfileVC
        navigationController?.pushViewController(editProfile, animated: true)
    }
    @IBAction func backBtnAction(_ sender: Any) {
        tabBarController?.selectedIndex = 0
    }
    @IBAction func rateGymBtnAction(_ sender: Any) {
        let reviewRatingVC = Main_Storyboard.instantiateViewController(withIdentifier: "ReviewGymVC") as! ReviewGymVC
        navigationController?.pushViewController(reviewRatingVC, animated: true)
    }
}
