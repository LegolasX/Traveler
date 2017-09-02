//
//  MyViewController.swift
//  Travellers
//
//  Created by Legolas.Invoker on 2017/4/4.
//  Copyright © 2017年 Chang.Jing. All rights reserved.
//

import UIKit

class MyTabViewController: UITabBarController {

    override func viewDidLoad() {
        super.viewDidLoad()
//        self.tabBar.barTintColor = UIColor.myBlue
        let x = self.tabBar.items
        x?[0].title = "首页"
        x?[1].title = "论坛"
        x?[2].title = "发现"
        x?[3].title = "我的"
        x?[0].image = LRAsset.tab1.image.resizedImage(withSize: CGSize(30,30))
        x?[1].image = LRAsset.tab2.image.resizedImage(withSize: CGSize(30,30))
        x?[2].image = LRAsset.tab3.image.resizedImage(withSize: CGSize(30,30))
        x?[3].image = LRAsset.tab4.image.resizedImage(withSize: CGSize(30,30))
        
        // Do any additional setup after loading the view.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
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
