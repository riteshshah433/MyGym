//
//  Constant.swift
//  MyGym
//
//  Created by Mahendra Suryavanshi on 03/02/20.
//  Copyright © 2020 Parkhya Solution. All rights reserved.
//

import Foundation
import UIKit

let delegate = UIApplication.shared.delegate as! AppDelegate
let Main_Storyboard = UIStoryboard(name: "Main", bundle: nil)
let GymDetails_Storyboard = UIStoryboard(name: "GymDetails", bundle: nil)
enum CVC_Identifier{
    static let home_item_header = "HomeItemHeaderCVC"
    static let home_item = "HomeItemCVC"
    static let feature_item = "FeatureFitnessCVC"
    static let fitness_tip = "FitnessTipCVC"
}
enum TVC_Identifier{
    static let search_item = "SearchTVC"
}
enum Font_SegoeUI{
    static let regular = "SegoeUI"
    static let semiBold = "SegoeUI-Semibold"
    static let bold = "SegoeUI-Bold"
    static let italic = "SegoeUI-Italic"
    static let boldItalic = "SegoeUI-BoldItalic"
}


