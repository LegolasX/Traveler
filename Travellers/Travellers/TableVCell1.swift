//
//  TableVCell1.swift
//  Travellers
//
//  Created by Legolas.Invoker on 2017/4/6.
//  Copyright © 2017年 Chang.Jing. All rights reserved.
//

import UIKit

class TableVCell1: UITableViewCell {


    @IBOutlet weak var collection: UICollectionView!
    
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
               // self.automaticallyAdjustsScrollViewInsets = false// dan
        
    }

    
    
    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }

}
