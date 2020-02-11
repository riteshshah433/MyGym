//
//  HomeVC.swift
//  MyGym
//
//  Created by Mahendra Suryavanshi on 03/02/20.
//  Copyright © 2020 Parkhya Solution. All rights reserved.
//

import UIKit

class HomeVC: UIViewController {
    @IBOutlet weak var view_header: UIView!
    @IBOutlet weak var collview_Item: UICollectionView!
    
    override func viewDidLoad() {
        super.viewDidLoad()

        navigationController?.interactivePopGestureRecognizer?.isEnabled = false
        MyGym.shared.registerCollViewCell(collectionView: collview_Item, identifier: CVC_Identifier.feature_item)
        MyGym.shared.registerCollViewCell(collectionView: collview_Item, identifier: CVC_Identifier.home_item)
        MyGym.shared.registerCollViewHeader(collectionView: collview_Item, identifier: CVC_Identifier.home_item_header)
        MyGym.shared.registerCollViewCell(collectionView: collview_Item, identifier: CVC_Identifier.fitness_tip)
        
    }
    override func viewWillAppear(_ animated: Bool) {
        super.viewWillAppear(animated)
        
    }
    @IBAction func sideMenuBtnAction(_ sender: UIButton) {
        let sideMenu = storyboard?.instantiateViewController(withIdentifier: "SideMenuVC") as! SideMenuVC
        sideMenu.view.layoutIfNeeded()
        MyGym.shared.presentSideMenu(src: tabBarController!, dst: sideMenu)
    }
}
extension HomeVC:UICollectionViewDataSource,UICollectionViewDelegate,UICollectionViewDelegateFlowLayout{
    func numberOfSections(in collectionView: UICollectionView) -> Int {
        return 3
    }
    func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        if section == 0{
            return 4
        }
        return 2
    }
    func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        if indexPath.section == 0{
            let cell = collectionView.dequeueReusableCell(withReuseIdentifier: CVC_Identifier.home_item, for: indexPath) as! HomeItemCVC
            cell.index = indexPath.row
            return cell
        }else if indexPath.section == 1{
            let cell = collectionView.dequeueReusableCell(withReuseIdentifier: CVC_Identifier.feature_item, for: indexPath) as! FeatureFitnessCVC
            cell.index = indexPath.row
            return cell
        }else{
            let cell = collectionView.dequeueReusableCell(withReuseIdentifier: CVC_Identifier.fitness_tip, for: indexPath) as! FitnessTipCVC
            cell.index = indexPath.row
            return cell
        }
    }
    func collectionView(_ collectionView: UICollectionView, layout collectionViewLayout: UICollectionViewLayout, referenceSizeForHeaderInSection section: Int) -> CGSize {
        return CGSize(width: collectionView.frame.size.width, height: 50)
    }
    func collectionView(_ collectionView: UICollectionView, layout collectionViewLayout: UICollectionViewLayout, sizeForItemAt indexPath: IndexPath) -> CGSize {
        if indexPath.section == 0{
            let width = (collectionView.frame.size.width/2)-10
            return CGSize(width: width, height: 99)
        }else if indexPath.section == 1{
            let width = (collectionView.frame.size.width/2)-5
            return CGSize(width: width, height: 117)
        }else{
            let width = (collectionView.frame.size.width/2)-5
            return CGSize(width: width, height: 85)
        }
    }
    func collectionView(_ collectionView: UICollectionView, viewForSupplementaryElementOfKind kind: String, at indexPath: IndexPath) -> UICollectionReusableView {
        if kind == UICollectionView.elementKindSectionHeader{
            let header = collectionView.dequeueReusableSupplementaryView(ofKind: UICollectionView.elementKindSectionHeader, withReuseIdentifier: CVC_Identifier.home_item_header, for: indexPath) as! HomeItemHeaderCVC
            if indexPath.section == 0{
                header.lbl_header.text = "Membership Deals"
            }else if indexPath.section == 1{
                header.lbl_header.text = "Featured Fitness Studios"
            }else{
                header.lbl_header.text = "Fitness Tips"
            }
            return header
        }
        return UICollectionReusableView()
    }
}
