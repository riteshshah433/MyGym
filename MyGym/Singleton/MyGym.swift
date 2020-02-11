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
    
    //Set Bottom shadow of UIView
    func setBottomShadow(someView:UIView)  {
        let shadowPath = UIBezierPath()
        shadowPath.move(to: CGPoint(x: 0, y: someView.bounds.height+4))
        shadowPath.addLine(to: CGPoint(x: someView.bounds.width, y: someView.bounds.height+4))
        shadowPath.addLine(to: CGPoint(x: someView.bounds.width, y: someView.bounds.height - 4))
        shadowPath.addLine(to: CGPoint(x: 0, y: someView.bounds.height - 4))
        shadowPath.close()
        
        someView.layer.shadowColor = UIColor.HASH_FFB492.cgColor
        someView.layer.shadowOpacity = 0.1
        someView.layer.masksToBounds = false
        someView.layer.shadowPath = shadowPath.cgPath
        someView.layer.shadowRadius = 2
    }
    
   // Set UnderLint to text view texts
    func setLastUnderLineText(text:String) -> NSMutableAttributedString {
        let textRange = NSMakeRange(text.count-11, 11)
        let attributedText = NSMutableAttributedString(string: text)
        attributedText.addAttribute(NSAttributedString.Key.font, value: UIFont(name: Font_SegoeUI.semiBold, size: 13) as Any, range: NSMakeRange(0, text.count))
        attributedText.addAttribute(NSAttributedString.Key.foregroundColor, value: UIColor.HASH_212121, range: NSMakeRange(0, text.count-11))
        attributedText.addAttribute(NSAttributedString.Key.foregroundColor, value: UIColor.HASH_000CB8, range: NSMakeRange(text.count-11, 11))
        attributedText.addAttribute(NSAttributedString.Key.underlineStyle , value: NSUnderlineStyle.single.rawValue, range: textRange)
        // Add other attributes if needed
        return attributedText
    }
    
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
    
    func presentSideMenu(src:UIViewController,dst:UIViewController)  {
        
        dst.modalPresentationStyle = .overCurrentContext
        src.view.insertSubview(dst.view, aboveSubview: src.view)
        dst.view.transform = CGAffineTransform(translationX: -src.view.frame.size.width, y: 0)
        src.present(dst, animated: false, completion: nil)
        UIView.animate(withDuration: 0.20,
                       delay: 0.0,
                       options: .curveEaseOut,
                       animations: {
                        dst.view.transform = CGAffineTransform(translationX: 0, y: 0)
        },
                       completion: { finished in
                        
        }
        )
    }
}
