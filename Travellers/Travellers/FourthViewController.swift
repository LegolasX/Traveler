//
//  FourthViewController.swift
//  Travellers
//
//  Created by Legolas.Invoker on 2017/2/8.
//  Copyright © 2017年 Chang.Jing. All rights reserved.
//

import UIKit

class FourthViewController: UITableViewController {
    struct StoryBoardId {
        static let userCell = "user"
        static let settingCell = "setting"
    }
    
    let settingText = [ ["我的收藏","我的订单","我的点评","好友去哪"],["离线讲解包"],["最近浏览","设置","新增功能","钱包"]]
    let x = UIImage(asset: UIImage.Asset.favorite)
    let images = [[LRAsset.favorite.image, LRAsset.category.image, LRAsset.edit.image, LRAsset.account.image],
                  [LRAsset.download.image],
                  [LRAsset.history.image, LRAsset.set.image, LRAsset.add.image, LRAsset.trade.image]]
    let heightForRow = [0:80,1:40]
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        let button1 = UIBarButtonItem(title: "联系客服", style: .plain, target: nil, action: nil)
        button1.tintColor = UIColor.black
        let button2 = UIBarButtonItem(image: LRAsset.email.image.resizedImage(withSize: CGSize(30,30)), style: .plain, target: nil, action: nil)
        button2.tintColor = UIColor.black
        self.navigationItem.setLeftBarButton(button1, animated: false)
        self.navigationItem.setRightBarButton(button2, animated: false)
//        self.navigationController?.navigationBar.barTintColor = UIColor(colorLiteralRed: 0.41, green: 0.83, blue: 0.93, alpha: 1)
//        self.navigationController?.navigationBar.backgroundColor = UIColor.blue
//        self.navigationController!.navigationBar.isTranslucent = true
        
        
  
        // Do any additional setup after loading the view.
    }
    
    
    override func viewWillAppear(_ animated: Bool) {
        //如何设置navBar为透明
//        let transparentPixel = UIImage(named: "TransparentPixel")
//        self.navigationController!.navigationBar.setBackgroundImage(transparentPixel, for: UIBarMetrics.default)
//        self.navigationController!.navigationBar.shadowImage = transparentPixel
//        self.navigationController!.navigationBar.backgroundColor = UIColor.blue
//        self.navigationController!.navigationBar.isTranslucent = false
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    override func numberOfSections(in tableView: UITableView) -> Int {
        return 4
    }
    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        switch section {
        case 0: return 1
        case 1: return 4
        case 2: return 1
        case 3: return 4
        default:
            return 0
        }
    }
    override func tableView(_ tableView: UITableView, heightForRowAt indexPath: IndexPath) -> CGFloat {
        if let height = heightForRow[indexPath.section] {
            return CGFloat(height)
        }
        return CGFloat(heightForRow[1]!)
    }
    
    override func tableView(_ tableView: UITableView, heightForFooterInSection section: Int) -> CGFloat {
        return 0
    }
    override func tableView(_ tableView: UITableView, heightForHeaderInSection section: Int) -> CGFloat {
        return 4
    }
    
    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell:UITableViewCell = UITableViewCell()
        switch indexPath.section {
        case 0:
            if let userCell = tableView.dequeueReusableCell(withIdentifier: StoryBoardId.userCell) as? UserCell {
                userCell.userImage.image = UIImage.init(named: "L1.jpeg")
                userCell.userImage.layer.cornerRadius = 30
                userCell.userImage.layer.masksToBounds = true
                userCell.userLabel.text  = "LegoalsX"
                return userCell
            }
        default: 
            if let settingCell = tableView.dequeueReusableCell(withIdentifier: StoryBoardId.settingCell) as? SettingCell {
                settingCell.settingLabel.text = settingText[indexPath.section-1][indexPath.row]
                settingCell.settingImage.image = images[indexPath.section-1][indexPath.row]
                
                return settingCell
            }
        }
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
