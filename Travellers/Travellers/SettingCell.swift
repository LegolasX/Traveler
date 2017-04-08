//
//  SettingCell.swift
//  Travellers
//
//  Created by Legolas.Invoker on 2017/4/4.
//  Copyright © 2017年 Chang.Jing. All rights reserved.
//

import UIKit

class SettingCell: UITableViewCell {

    @IBOutlet weak var settingImage: UIImageView!
    @IBOutlet weak var settingLabel: UILabel!
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }

}
