//
//  ThirdViewController.swift
//  Travellers
//
//  Created by Legolas.Invoker on 2017/2/8.
//  Copyright © 2017年 Chang.Jing. All rights reserved.
//

import UIKit

class ThirdViewController: UIViewController,UICollectionViewDataSource,UICollectionViewDelegate
{
    @IBOutlet weak var collection: UICollectionView!
    @IBOutlet weak var searchBar: UISearchBar!
    @IBOutlet weak var leftButton: UIButton!
    struct Sources {
        static let labelNames = [["美食","酒吧","咖啡"] ,["博物馆","歌剧院","夜店"],["酒店","出租车","地图"]]
        static let images = [[LRAsset.food.image, LRAsset.bar.image, LRAsset.coffee.image], [LRAsset.museum.image, LRAsset.opera.image, LRAsset.disco.image], [LRAsset.hotel.image, LRAsset.taxi.image, LRAsset.map.image]]
    }
    
    override func viewDidLoad() {
        collection.delegate = self
        collection.dataSource = self
        let layout = UICollectionViewFlowLayout()
        layout.itemSize = CGSize(100,150)
        
        layout.sectionInset = UIEdgeInsets(top: 30, left: 20, bottom: 10, right: 20)
        
        collection.setCollectionViewLayout(layout, animated: false)
        
    }

    override func viewWillAppear(_ animated: Bool) {
        for subView in searchBar.subviews  {//此处是在修改searchBar 的背景颜色
            for subsubView in subView.subviews  {
                subsubView.layer.borderColor = UIColor.myBlue.cgColor
                subsubView.layer.borderWidth = 100
                if let textField = subsubView as? UITextField {
                    textField.layer.borderWidth = 0
                }
                
            }
        }
        searchBar.barTintColor = self.navigationController?.navigationBar.barTintColor
        leftButton.tintColor = UIColor.white
        searchBar.placeholder = "输入商户名，地点"
    }
    func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        return 3
    }
    
    func numberOfSections(in collectionView: UICollectionView) -> Int {
        return 3
    }
    
    func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        if let cell = collection.dequeueReusableCell(withReuseIdentifier: "cell", for: indexPath)  as? ThirdCVCell{
            cell.image.image = Sources.images[indexPath.section][indexPath.row].resizedImage(withSize: CGSize(70,70))
            
            cell.label.text = Sources.labelNames[indexPath.section][indexPath.row]
            return cell
        }
        let cell = UICollectionViewCell()
        return cell
    }
    
    

}
