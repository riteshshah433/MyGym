//
//  PlanPackageVC.swift
//  MyGym
//
//  Created by Mahendra Suryavanshi on 10/02/20.
//  Copyright © 2020 Parkhya Solution. All rights reserved.
//

import UIKit

class PlanPackageVC: UIViewController {

    @IBOutlet weak var view_header: UIView!
    override func viewDidLoad() {
        super.viewDidLoad()
        DispatchQueue.main.async {
            MyGym.shared.setBottomShadow(someView: self.view_header)
        }
    }
    @IBAction func backBtnAction(_ sender: Any) {
        navigationController?.popViewController(animated: true)
    }
}
