//
//  Images.swift
//  Travellers
//
//  Created by Legolas.Invoker on 2017/3/27.
//  Copyright © 2017年 Chang.Jing. All rights reserved.
//

import Foundation
import UIKit
typealias LRAsset = UIImage.Asset
extension UIImage {
    enum Asset : String {
        case favorite = "favorite"
        case category = "Category"
        case edit = "edit"
        case account = "account"
        case download = "download"
        case history = "history"
        case set = "set"
        case add = "add"
        case trade = "trade"
        case tab1 = "tab1"
        case tab2 = "tab2"
        case tab3 = "tab3"
        case tab4 = "tab4"
        case email = "email"
        case food = "美食"
        case bar = "酒吧"
        case coffee = "咖啡"
        case museum = "博物馆"
        case opera = "唱歌"
        case disco = "蹦迪"
        case hotel = "酒店"
        case taxi = "出租车"
        case map = "地图"
        case image1 = "image1"
        case image2 = "image2"
        case image3 = "image3"
        case image4 = "image4"
        
        var image: UIImage {
            return UIImage(asset: self)
        }
    }
    
    convenience init!(asset: Asset) {
        self.init(named: asset.rawValue)
    }
}


