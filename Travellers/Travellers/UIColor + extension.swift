//
//  UIColor + extension.swift
//  Travellers
//
//  Created by Legolas Invoker on 2017/9/2.
//  Copyright © 2017年 Chang.Jing. All rights reserved.
//

import Foundation
import UIKit
extension UIColor {
    class var mainBgColor:UIColor {
        return UIColor.init(colorLiteralRed: 241/255, green: 241/255, blue: 243/255, alpha: 1)
    }
    class var myBlue:UIColor {
        return UIColor(colorLiteralRed: 0.41, green: 0.83, blue: 0.93, alpha: 1)
    }
    class var myBlack:UIColor {
        return UIColor(colorLiteralRed: 20/255, green: 25/255, blue: 30/255, alpha: 1)
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
