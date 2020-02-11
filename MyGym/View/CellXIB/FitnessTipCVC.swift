//
//  FitnessTipCVC.swift
//  MyGym
//
//  Created by Mahendra Suryavanshi on 09/02/20.
//  Copyright © 2020 Parkhya Solution. All rights reserved.
//

import UIKit

class FitnessTipCVC: UICollectionViewCell {

    @IBOutlet weak var img_tip: UIImageView!
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }
    var index:Int?{
        didSet{
            if index == 0 {
                img_tip.image = UIImage(named: "fitnesTipDemo1")
            }else {
                img_tip.image = UIImage(named: "fitnessTipDemo2")
            }
        }
    }
}
