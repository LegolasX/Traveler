//
//  Extension.swift
//  Travellers
//
//  Created by Legolas.Invoker on 2017/4/4.
//  Copyright © 2017年 Chang.Jing. All rights reserved.
//

import Foundation
import UIKit
extension UIImage
{
    func resizedImage(withSize newSize:CGSize) -> UIImage {
        UIGraphicsBeginImageContextWithOptions(newSize, false, 0.0)
        draw(in: CGRect(x: 0, y: 0, width: newSize.width, height: newSize.height))
        let newImage = UIGraphicsGetImageFromCurrentImageContext()
        return newImage!
    }
    
}
extension CGSize {
    init(_ width:Int, _ height:Int)  {
        self.init(width : width, height : height)
    }
    init(_ width:CGFloat, _ height:CGFloat)  {
        self.init(width : width, height : height)
    }
    
    
}
extension CGRect {
    init(_ x:Int, _ y:Int, _ width:Int, _ height:Int) {
        self.init(x: x, y: y, width: width, height: height)
    }
}
extension UIColor {
    class var myBlue:UIColor {
        return UIColor(colorLiteralRed: 0.41, green: 0.83, blue: 0.93, alpha: 1)
    }
    func toImage() -> UIImage {
        let rect = CGRect(0,0,100,100)
        UIGraphicsBeginImageContext(rect.size);
        let context = UIGraphicsGetCurrentContext();
        context?.setFillColor(self.cgColor)
        context?.fill(rect)
        let image = UIGraphicsGetImageFromCurrentImageContext()
        UIGraphicsEndImageContext();
        return image!;
    }
}
