//
//  HomeItemCVC.swift
//  MyGym
//
//  Created by Mahendra Suryavanshi on 03/02/20.
//  Copyright © 2020 Parkhya Solution. All rights reserved.
//

import UIKit

class HomeItemCVC: UICollectionViewCell {

    @IBOutlet weak var lbl_fitnessName: UILabel!
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }

    var index:Int?{
        didSet{
            if index == 0 {
                lbl_fitnessName.text = "Basic Plan"
            }else if index == 1 {
                lbl_fitnessName.text = "Fitness Lite"
            }else if index == 2 {
                lbl_fitnessName.text = "Fitness Pro"
            }else {
                lbl_fitnessName.text = "Diet Plan"
            }
        }
    }
}
