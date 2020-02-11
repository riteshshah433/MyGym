//
//  GymDetailsVC.swift
//  MyGym
//
//  Created by Mahendra Suryavanshi on 10/02/20.
//  Copyright © 2020 Parkhya Solution. All rights reserved.
//

import UIKit

class GymDetailsVC: UIViewController {

    @IBOutlet var lbls_tag: [UILabel]!
    @IBOutlet weak var txtView_aboutUs: UITextView!
    override func viewDidLoad() {
        super.viewDidLoad()

        let demoText = MyGym.shared.setLastUnderLineText(text: "Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut  View More >")
        txtView_aboutUs.attributedText = demoText
        
        // Set space between label texts
        for lbl in lbls_tag{
            lbl.addCharacterSpacing(kernValue: 1)
        }
    }
    @IBAction func backBtnAction(_ sender: Any) {
        navigationController?.popViewController(animated: true)
    }
    @IBAction func viewRatingsAndReviewBtnAction(_ sender: Any) {
    }
    @IBAction func planPackageBtnAction(_ sender: Any) {
        let planPackageVC = GymDetails_Storyboard.instantiateViewController(withIdentifier: "PlanPackageVC") as! PlanPackageVC
        navigationController?.pushViewController(planPackageVC, animated: true)
    }
    @IBAction func checkInBtnAction(_ sender: Any) {
        let checkInVC = GymDetails_Storyboard.instantiateViewController(withIdentifier: "CheckInVC") as! CheckInVC
        navigationController?.pushViewController(checkInVC, animated: true)
    }
    
}
