//
//  SettingsVC.swift
//  MyGym
//
//  Created by Mahendra Suryavanshi on 03/02/20.
//  Copyright © 2020 Parkhya Solution. All rights reserved.
//

import UIKit

class SettingsVC: UIViewController {

    @IBOutlet var lbl_space: [UILabel]!
    @IBOutlet weak var view_header: UIView!
    override func viewDidLoad() {
        super.viewDidLoad()
        
        // Set space between label texts
        for lbl in lbl_space{
            lbl.addCharacterSpacing(kernValue: 2)
        }
    }

    @IBAction func backBtnAction(_ sender: Any) {
        tabBarController?.selectedIndex = 0
    }
}
