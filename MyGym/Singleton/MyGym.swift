//
//  MyGym.swift
//  MyGym
//
//  Created by Mahendra Suryavanshi on 03/02/20.
//  Copyright © 2020 Parkhya Solution. All rights reserved.
//

import UIKit

class MyGym: NSObject {

    static let shared = MyGym()
    private override init() {}
    
    
   
    
    // Set bounse animation on view
    func setAnimatiedLogo(view:UIView)  {
        let size = CGSize(width: view.bounds.size.width, height: view.bounds.size.height)
        let origin = view.center
        let target = CGPoint(x: view.center.x, y: view.center.y - view.bounds.height/2)
        let bounse = CABasicAnimation.init(keyPath: "position.y")
        bounse.duration = 0.6
        bounse.fromValue = origin.y-500
        bounse.toValue = target.y
        bounse.repeatCount = 1
        //bounse.autoreverses = true
        view.layer.add(bounse, forKey: "position")
        view.bounds.size = CGSize.zero
        UIView.animate(withDuration: 0.6) {
            view.bounds.size = size
        }
    }
    func setAnimatedLogoWithCompletion(view:UIView,completion:@escaping()-> Void) {
        let size = CGSize(width: view.bounds.size.width, height: view.bounds.size.height)
        let origin = view.center
        let target = CGPoint(x: view.center.x, y: view.center.y - view.bounds.height/2)
        let bounse = CABasicAnimation.init(keyPath: "position.y")
        bounse.duration = 0.6
        bounse.fromValue = origin.y-500
        bounse.toValue = target.y
        bounse.repeatCount = 1
        //bounse.autoreverses = true
        view.layer.add(bounse, forKey: "position")
        view.bounds.size = CGSize.zero
        UIView.animate(withDuration: 0.6, animations: {
            view.bounds.size = size
        }) { (tr) in
            completion()
        }
    }
    
    // Register Collection view cell
    func registerCollViewCell(collectionView:UICollectionView,identifier:String) {
        let nib = UINib(nibName: identifier, bundle: nil)
        collectionView.register(nib, forCellWithReuseIdentifier: identifier)
    }
    // Register Table view cell
    func registerTableViewCell(tableView:UITableView,identifier:String) {
        let nib = UINib(nibName: identifier, bundle: nil)
        tableView.register(nib, forCellReuseIdentifier: identifier)
    }
    func registerCollViewHeader(collectionView:UICollectionView,identifier:String) {
        let nib = UINib(nibName: identifier, bundle: nil)
        collectionView.register(nib, forSupplementaryViewOfKind: UICollectionView.elementKindSectionHeader, withReuseIdentifier: identifier)
    }
}
