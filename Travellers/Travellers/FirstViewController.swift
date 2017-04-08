//
//  FirstViewController.swift
//  Travellers
//
//  Created by Legolas.Invoker on 2017/2/8.
//  Copyright © 2017年 Chang.Jing. All rights reserved.
//

import UIKit

class FirstViewController: UIViewController,UITableViewDataSource,UITableViewDelegate,UICollectionViewDelegate,UICollectionViewDataSource {
    
    @IBOutlet weak var searchBar: UISearchBar!
    @IBOutlet weak var leftButton: UIButton!
    var images : [UIImage]? = nil
    
    @IBOutlet weak var tableView: UITableView!
    override func awakeFromNib() {
        self.tabBarItem.title = "test"
    }
    override func viewWillAppear(_ animated: Bool) {
        for subView in searchBar.subviews  {
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
    override func viewDidLoad() {
        super.viewDidLoad()
        tableView.dataSource = self
        tableView.delegate = self
        
        //        self.navigationController?.navigationBar.barTintColor = UIColor.red
        // Do any additional setup after loading the view.
        
    }
    
    func numberOfSections(in tableView: UITableView) -> Int {
        return 1
    }
   
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        switch section {
        case 0:
            return 20
        default:
            return 10
        }
    }
    
    func tableView(_ tableView: UITableView, heightForRowAt indexPath: IndexPath) -> CGFloat {
        switch indexPath.section {
        case 0:
            return 180
        default:
            return 140
        }
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        //func for setting collection
        func setCollectionViewLayout(collection: UICollectionView) -> UICollectionViewLayout {
            let layout = UICollectionViewFlowLayout()
            layout.itemSize = CGSize(width: UIScreen.main.bounds.width, height: collection.frame.height)
            layout.scrollDirection = UICollectionViewScrollDirection.horizontal
            layout.minimumLineSpacing = 0
            layout.minimumInteritemSpacing = 0
            layout.estimatedItemSize = CGSize(self.tableView.frame.width,100)
            layout.sectionInset = UIEdgeInsets(top: 0, left: 0, bottom: 0, right: 0)
            return layout
        }
        if let cell = tableView.dequeueReusableCell(withIdentifier: "cell2") as? TableVCell2 {
            print(cell.frame.size.height)
            cell.myImageView.image = LRAsset.image4.image//LRAsset.add.image.resizedImage(withSize: CGSize(45,45))//
            cell.headLine.text = "追过那么多剧，你居然没去过横店——横店旅游指南"
            cell.body.text = "虽然你是专业追剧当，但是你知道么，我国的电视剧，从春秋战国时期的“表情包帝国“到撕逼不止的宫斗大战哈哈哈哈哈哈啊哈哈哈哈哈哈哈哈哈哈哈哈哈哈的“表情包帝国“到撕逼不止的宫斗大战哈哈哈哈哈哈啊哈哈哈哈哈哈哈哈哈哈哈哈哈哈"
            return cell
        }

//        switch indexPath.section {
//        case 0:
//            if let cell = tableView.dequeueReusableCell(withIdentifier: "cell2") as? TableVCell2 {
//                print(cell.frame.size.height)
//                cell.imageView?.image  = LRAsset.image1.image
//                cell.headLine.text = "追过那么多剧，你居然没去过横店——横店旅游指南"
//                cell.body.text = "虽然你是专业追剧当，但是你知道么，我国的电视剧，从春秋战国时期的“表情包帝国“到撕逼不止的宫斗大战哈哈哈哈哈哈啊哈哈哈哈哈哈哈哈哈哈哈哈哈哈的“表情包帝国“到撕逼不止的宫斗大战哈哈哈哈哈哈啊哈哈哈哈哈哈哈哈哈哈哈哈哈哈"
//                return cell
//            }
//            if let cell = tableView.dequeueReusableCell(withIdentifier: "cell1") as? TableVCell1 {
//                print(cell.frame.size.height)
//                let collection = cell.collection!
//                collection.delegate = self
//                collection.dataSource = self
//                collection.isPagingEnabled = true
//                
//                collection.collectionViewLayout = setCollectionViewLayout(collection: collection)
//                return cell
//            }
//        default:
//            if let cell = tableView.dequeueReusableCell(withIdentifier: "cell2") as? TableVCell2 {
//                print(cell.frame.size.height)
//                cell.imageView?.image  = #imageLiteral(resourceName: "image4")// LRAsset.image4.image
//                cell.headLine.text = "追过那么多剧，你居然没去过横店————横店旅游指南"
//                cell.body.text = "虽然你是专业追剧当，但是你知道么，我国的电视剧，从春秋战国时期的“表情包帝国“到撕逼不止的宫斗大战哈哈哈哈哈哈啊哈哈哈哈哈哈哈哈哈哈哈哈哈哈的“表情包帝国“到撕逼不止的宫斗大战哈哈哈哈哈哈啊哈哈哈哈哈哈哈哈哈哈哈哈哈哈"
//                return cell
//            }
//        }
//        
        
        return UITableViewCell()
    }
    
    
    //collection delegate and datasource
    func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        return 10
    }
    
    func numberOfSections(in collectionView: UICollectionView) -> Int {
        return 1
    }
    
    
    func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        let cell = collectionView.dequeueReusableCell(withReuseIdentifier: "cell", for: indexPath) as! CollectionVCCell
        cell.image.image = UIImage(named: "L1.png")
        //        cell.label.text = String(indexPath.row)
        return cell
    }

    /*
     // MARK: - Navigation
     
     // In a storyboard-based application, you will often want to do a little preparation before navigation
     override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
     // Get the new view controller using segue.destinationViewController.
     // Pass the selected object to the new view controller.
     }
     */
    
}
