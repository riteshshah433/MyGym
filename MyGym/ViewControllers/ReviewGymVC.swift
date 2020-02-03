//
//  ReviewGymVC.swift
//  MyGym
//
//  Created by Mahendra Suryavanshi on 03/02/20.
//  Copyright © 2020 Parkhya Solution. All rights reserved.
//

import UIKit

class ReviewGymVC: UIViewController {

    @IBOutlet weak var view_header: UIView!
    override func viewDidLoad() {
        super.viewDidLoad()

        DispatchQueue.main.async {
            self.view_header.makeGradientBackGround(colors: [UIColor.HASH_FF6623.cgColor,UIColor.HASH_FF4F01.cgColor], cornerRadius: 0)
        }
    }
    override func viewWillAppear(_ animated: Bool) {
        super.viewWillAppear(animated)
        
    }
    @IBAction func backBtnAction(_ sender: Any) {
        navigationController?.popViewController(animated: true)
    }
}
