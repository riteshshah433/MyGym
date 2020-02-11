//
//  PaymentDetailVC.swift
//  MyGym
//
//  Created by Mahendra Suryavanshi on 11/02/20.
//  Copyright © 2020 Parkhya Solution. All rights reserved.
//

import UIKit

class PaymentDetailVC: UIViewController {
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
    @IBAction func paySecureBtnAction(_ sender: Any) {
        let paymentStatusVC = GymDetails_Storyboard.instantiateViewController(withIdentifier: "PaymentStatusVC") as! PaymentStatusVC
        navigationController?.pushViewController(paymentStatusVC, animated: true)
    }
}
extension PaymentDetailVC:UITextFieldDelegate{
    func textFieldShouldReturn(_ textField: UITextField) -> Bool {
        return textField.resignFirstResponder()
    }
}
