//
//  UsetCell.swift
//  Travellers
//
//  Created by Legolas.Invoker on 2017/4/4.
//  Copyright © 2017年 Chang.Jing. All rights reserved.
//

import UIKit

class UserCell: UITableViewCell {
    @IBOutlet weak var userImage: UIImageView!
    @IBOutlet weak var userLabel: UILabel!
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }
//    override init(style: UITableViewCellStyle, reuseIdentifier: String?) {
//        if self = super.init(style: style, reuseIdentifier: reuseIdentifier) {
//            userImage.layer.cornerRadius = userImage.frame.size.width / 2
//            userImage.layer.masksToBounds = true
//            userImage.clipsToBounds = true
//        }
//        return self
//    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }

}
