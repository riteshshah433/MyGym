//
//  SideMenuVC.swift
//  MyGym
//
//  Created by Mahendra Suryavanshi on 07/02/20.
//  Copyright © 2020 Parkhya Solution. All rights reserved.
//

import UIKit

class SideMenuVC: UIViewController {

    @IBOutlet weak var tbl_sideMenu: UITableView!
    
    var sideOptions = ["MY PROFILE","BOOKINGS","MEMBERSHIPS","SUBSCRIPTIONS","MY ADDRESSES","CHAT MESSAGES","NOTIFICATIONS","SETTINGS","SEARCH"]
    override func viewDidLoad() {
        super.viewDidLoad()
        view.layoutIfNeeded()
        
    }
    override func viewWillAppear(_ animated: Bool) {
        super.viewWillAppear(animated)
    }
    @IBAction func swipeOnSideMenu(_ sender: UISwipeGestureRecognizer) {
        dismissVC()
    }
    func dismissVC()  {
        UIView.animate(withDuration: 0.2, animations: {
            self.view.frame.origin.x = -self.view.frame.size.width
        }) { (yes) in
            self.dismiss(animated: false, completion: nil)
        }
    }
}
extension SideMenuVC:UITableViewDataSource,UITableViewDelegate{
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return sideOptions.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "SideMenuOptionTVC") as! SideMenuOptionTVC
        cell.option = sideOptions[indexPath.row]
        return cell 
    }
    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        dismissVC()
    }
}
