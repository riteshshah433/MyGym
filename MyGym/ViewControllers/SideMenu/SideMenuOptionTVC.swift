//
//  SideMenuOptionTVC.swift
//  MyGym
//
//  Created by Mahendra Suryavanshi on 07/02/20.
//  Copyright © 2020 Parkhya Solution. All rights reserved.
//

import UIKit

class SideMenuOptionTVC: UITableViewCell {
    
    var sideOptions = ["MY PROFILE","BOOKINGS","MEMBERSHIPS","SUBSCRIPTIONS","MY ADDRESSES","CHAT MESSAGES","NOTIFICATIONS","SETTINGS","SEARCH"]
    
    @IBOutlet weak var img_optionImage: UIImageView!
    @IBOutlet weak var lbl_optionName: UILabel!
    
    var option:String?{
        didSet{
            lbl_optionName.text = option
            switch option! {
            case "MY PROFILE":
                img_optionImage.image = UIImage(named: "ic_search_myprofile")
            case "BOOKINGS":
                img_optionImage.image = UIImage(named: "ic_search_booking")
            case "MEMBERSHIPS":
                img_optionImage.image = UIImage(named: "ic_search_membership")
            case "SUBSCRIPTIONS":
                img_optionImage.image = UIImage(named: "ic_search_subscription")
            case "MY ADDRESSES":
                img_optionImage.image = UIImage(named: "ic_search_nyaddress")
            case "CHAT MESSAGES":
                img_optionImage.image = UIImage(named: "ic_search_chat")
            case "NOTIFICATIONS":
                img_optionImage.image = UIImage(named: "ic_search_notificaion")
            case "SETTINGS":
                img_optionImage.image = UIImage(named: "ic_search_settings")
            case "SEARCH":
                img_optionImage.image = UIImage(named: "ic_search_search")
            default:
                img_optionImage.image = UIImage()
            }
        }
    }
    override func awakeFromNib() {
        super.awakeFromNib()
        selectionStyle = .none
    }
    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)
    }
}
