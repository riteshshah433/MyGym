//
//  Extensions.swift
//  MyGym
//
//  Created by Mahendra Suryavanshi on 01/02/20.
//  Copyright © 2020 Parkhya Solution. All rights reserved.
//

import Foundation
import UIKit

extension UITextView{
    func setLeftPadding(inset:UIEdgeInsets)  {
        textContainerInset = inset
    }
}
extension UITextField {
    func setPlaceholderColor(placeholer:String)  {
        attributedPlaceholder = NSAttributedString(string: placeholer, attributes: [NSAttributedString.Key.foregroundColor: UIColor.init(displayP3Red: 211/255, green: 211/255, blue: 211/255, alpha: 1.0)])
    }
    func setLeftImage(image:UIImage)  {
        let imageView = UIImageView();
        imageView.frame = CGRect(x: 5, y: 0, width: 33, height: self.frame.height)
        imageView.image = image
        imageView.contentMode = .center
        leftView?.addSubview(imageView)
        leftViewMode = .always
    }
    
    func setLeftPaddingPoints(_ amount:CGFloat){
        let paddingView = UIView(frame: CGRect(x: 0, y: 0, width: amount, height: self.frame.size.height))
        self.leftView = paddingView
        self.leftViewMode = .always
    }
    func setRightPaddingPoints(_ amount:CGFloat) {
        let paddingView = UIView(frame: CGRect(x: 0, y: 0, width: amount, height: self.frame.size.height))
        self.rightView = paddingView
        self.rightViewMode = .always
    }
    
}

@IBDesignable extension UIView {
    
    @IBInspectable var borderWidth: CGFloat {
        set {
            layer.borderWidth = newValue
        }
        get {
            return layer.borderWidth
        }
    }
    @IBInspectable var cornerRadius: CGFloat {
        set {
            layer.cornerRadius = newValue
        }
        get {
            return layer.cornerRadius
        }
    }
    @IBInspectable var borderColor: UIColor? {
        set {
            guard let uiColor = newValue else { return }
            layer.borderColor = uiColor.cgColor
        }
        get {
            guard let color = layer.borderColor else { return nil }
            return UIColor(cgColor: color)
        }
    }
    @IBInspectable var shadowOffSet: CGSize {
        set {
            layer.shadowOffset = newValue
        }
        get {
            return layer.shadowOffset
        }
    }
    
    @IBInspectable var shadowOpacity: Float {
        set {
            layer.shadowOpacity = newValue
        }
        get {
            return layer.shadowOpacity
        }
    }
    
    @IBInspectable var shadowRadius: CGFloat {
        set {
            layer.shadowRadius = newValue
        }
        get {
            return layer.shadowRadius
        }
    }
    
    @IBInspectable var shadowColor: UIColor? {
        set {
            guard let uiColor = newValue else { return }
            layer.shadowColor = uiColor.cgColor
        }
        get {
            guard let color = layer.shadowColor else { return nil }
            return UIColor(cgColor: color)
        }
    }
    func makeGradientBorder(colors:[CGColor],cornerRadius:CGFloat,borderWidth:CGFloat)  {
        self.layer.cornerRadius = cornerRadius
        self.layer.masksToBounds = true
        let gradient = CAGradientLayer()
        gradient.frame =  CGRect(origin: CGPoint.zero, size: self.frame.size)
        gradient.colors = colors
        gradient.startPoint = CGPoint(x: 0.0, y: 0.5)
        gradient.endPoint = CGPoint(x: 1.0, y: 0.5)
        
        
        let shape = CAShapeLayer()
        shape.lineWidth = borderWidth
        shape.path = UIBezierPath(roundedRect: self.bounds.insetBy(dx: 1,
                                                                   dy: 1), cornerRadius: cornerRadius).cgPath
        shape.strokeColor = UIColor.black.cgColor
        shape.fillColor = UIColor.clear.cgColor
        gradient.mask = shape
        
        self.layer.addSublayer(gradient)
    }
    func makeGradientBackGround(colors:[CGColor],cornerRadius:CGFloat)  {
        let gradient = CAGradientLayer()
        gradient.colors = colors
        gradient.frame.size = frame.size
        gradient.cornerRadius = cornerRadius
        //gradient.startPoint = CGPoint(x: 0.0, y: 0.5)
        //gradient.endPoint = CGPoint(x: 1.0, y: 0.5)
        layer.insertSublayer(gradient, at: 0)
    }
}
extension UIButton {
    func leftImage(image: UIImage, renderMode: UIImage.RenderingMode) {
        self.setImage(image.withRenderingMode(renderMode), for: .normal)
        self.imageEdgeInsets = UIEdgeInsets(top: 0, left: 0, bottom: 0, right: image.size.width / 2)
        self.contentHorizontalAlignment = .left
        self.imageView?.contentMode = .scaleAspectFit
    }
    
    func rightImage(image: UIImage, renderMode: UIImage.RenderingMode){
        self.setImage(image.withRenderingMode(renderMode), for: .normal)
        self.imageEdgeInsets = UIEdgeInsets(top: 0, left:image.size.width / 2, bottom: 0, right: 0)
        self.contentHorizontalAlignment = .right
        self.imageView?.contentMode = .scaleAspectFit
    }
    func setDropDownImage() {
        self.imageEdgeInsets = UIEdgeInsets(top: 0, left: self.frame.size.width - 30, bottom: 0, right: 0)
    }
}
extension UIColor{
    public class var HASH_FF4F01 : UIColor { return UIColor.init(red: 255.0/255.0 , green: 79.0/255.0, blue: 1.0/255.0, alpha: 0.74) }
    public class var HASH_FF6623 : UIColor { return UIColor.init(red: 255.0/255.0 , green: 102.0/255.0, blue: 35.0/255.0, alpha: 1.0) }
}
