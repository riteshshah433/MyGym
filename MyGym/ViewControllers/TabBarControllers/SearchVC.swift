//
//  SearchVC.swift
//  MyGym
//
//  Created by Mahendra Suryavanshi on 03/02/20.
//  Copyright © 2020 Parkhya Solution. All rights reserved.
//

import UIKit

class SearchVC: UIViewController {

    @IBOutlet weak var txt_search: UITextField!
    @IBOutlet weak var tbl_searchItem: UITableView!
    @IBOutlet weak var view_header: UIView!
    override func viewDidLoad() {
        super.viewDidLoad()

        MyGym.shared.registerTableViewCell(tableView: tbl_searchItem, identifier: TVC_Identifier.search_item)
        txt_search.setPlaceholderWithColor(placeholer: "Search in Deira, Dubai", color: UIColor.HASH_8F8F8F)
    
    }
    override func viewWillAppear(_ animated: Bool) {
        super.viewWillAppear(animated)
        
    }
    @IBAction func locationBtnAction(_ sender: Any) {
        
    }
    @IBAction func backBtnAction(_ sender: Any) {
        tabBarController?.selectedIndex = 0
    }
}
extension SearchVC:UITextFieldDelegate{
    func textFieldShouldReturn(_ textField: UITextField) -> Bool {
        return textField.resignFirstResponder()
    }
}
extension SearchVC:UITableViewDelegate,UITableViewDataSource{
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return 4
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: TVC_Identifier.search_item)
        return cell!
    }
    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        let gymDetailsVC = GymDetails_Storyboard.instantiateViewController(withIdentifier: "GymDetailsVC")
        navigationController?.pushViewController(gymDetailsVC, animated: true)
    }
}
