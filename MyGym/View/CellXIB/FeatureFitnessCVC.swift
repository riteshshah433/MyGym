//
//  FeatureFitnessCVC.swift
//  MyGym
//
//  Created by Mahendra Suryavanshi on 03/02/20.
//  Copyright © 2020 Parkhya Solution. All rights reserved.
//

import UIKit

class FeatureFitnessCVC: UICollectionViewCell {

    @IBOutlet weak var lbl_numberRating: UILabel!
    @IBOutlet weak var lbl_gymName: UILabel!
    @IBOutlet weak var img_featureImage: UIImageView!
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }
    var index:Int?{
        didSet{
            if index == 0 {
                img_featureImage.image = UIImage(named: "featureDemo1")
                lbl_gymName.text = "Gold Gym International"
                lbl_numberRating.text = "43 Reviews"
            }else {
                img_featureImage.image = UIImage(named: "featureDemo2")
                lbl_gymName.text = "Studio One Fitness"
                lbl_numberRating.text = "518 Reviews"
            }
        }
    }
}
