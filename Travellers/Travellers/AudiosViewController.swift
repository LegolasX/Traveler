//
//  AudiosViewController.swift
//  Travellers
//
//  Created by Legolas Invoker on 2017/8/21.
//  Copyright © 2017年 Chang.Jing. All rights reserved.
//

import UIKit

class AudiosViewController: UITableViewController{

    override func viewDidLoad() {
        super.viewDidLoad()
        tableView.register(UITableViewCell.self, forCellReuseIdentifier: "haha")
        // Do any additional setup after loading the view.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    override func numberOfSections(in tableView: UITableView) -> Int {
        return 1
    }

    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return 2
    }
    
    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "haha", for: indexPath)
        
        if (indexPath.row == 0) {
            cell.textLabel?.text = "主楼"
        } else {
            cell.textLabel?.text = "图书馆"
        }
        return cell
    }
//    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destinationViewController.
        // Pass the selected object to the new view controller.
    }
    

}
