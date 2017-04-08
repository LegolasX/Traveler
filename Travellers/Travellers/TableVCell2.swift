//
//  TableVCell2.swift
//  Travellers
//
//  Created by Legolas.Invoker on 2017/4/6.
//  Copyright © 2017年 Chang.Jing. All rights reserved.
//

import UIKit

class TableVCell2: UITableViewCell {



    @IBOutlet weak var myImageView: UIImageView!
    @IBOutlet weak var headLine: UILabel!
    @IBOutlet weak var body: UILabel!
    @IBOutlet weak var date: UILabel!
    
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
}

}
