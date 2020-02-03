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

        
        MyGym.shared.registerCollViewCell(collectionView: collview_Item, identifier: CVC_Identifier.feature_item)
        MyGym.shared.registerCollViewCell(collectionView: collview_Item, identifier: CVC_Identifier.home_item)
        MyGym.shared.registerCollViewHeader(collectionView: collview_Item, identifier: CVC_Identifier.home_item_header)
        DispatchQueue.main.async {
            self.view_header.makeGradientBackGround(colors: [UIColor.HASH_FF4F01.cgColor,UIColor.HASH_FF6623.cgColor], cornerRadius: 0)
        }
    }
    override func viewWillAppear(_ animated: Bool) {
        super.viewWillAppear(animated)
        
    }
}
extension HomeVC:UICollectionViewDataSource,UICollectionViewDelegate,UICollectionViewDelegateFlowLayout{
    func numberOfSections(in collectionView: UICollectionView) -> Int {
        return 3
    }
    func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        return 4
    }
    func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        if indexPath.section == 1{
            let cell = collectionView.dequeueReusableCell(withReuseIdentifier: CVC_Identifier.feature_item, for: indexPath)
            return cell
        }else{
            let cell = collectionView.dequeueReusableCell(withReuseIdentifier: CVC_Identifier.home_item, for: indexPath)
            return cell
        }
    }
    func collectionView(_ collectionView: UICollectionView, layout collectionViewLayout: UICollectionViewLayout, referenceSizeForHeaderInSection section: Int) -> CGSize {
        return CGSize(width: collectionView.frame.size.width, height: 50)
    }
    func collectionView(_ collectionView: UICollectionView, layout collectionViewLayout: UICollectionViewLayout, sizeForItemAt indexPath: IndexPath) -> CGSize {
        if indexPath.section == 1{
            let width = (collectionView.frame.size.width/2)-10
            return CGSize(width: width, height: 99)
        }else{
            let width = (collectionView.frame.size.width/2)-10
            return CGSize(width: width, height: 117)
        }
    }
    func collectionView(_ collectionView: UICollectionView, viewForSupplementaryElementOfKind kind: String, at indexPath: IndexPath) -> UICollectionReusableView {
        if kind == UICollectionView.elementKindSectionHeader{
            let header = collectionView.dequeueReusableSupplementaryView(ofKind: UICollectionView.elementKindSectionHeader, withReuseIdentifier: CVC_Identifier.home_item_header, for: indexPath)
            return header
        }
        return UICollectionReusableView()
    }
}
