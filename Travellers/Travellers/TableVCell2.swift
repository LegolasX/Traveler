//
//  TableVCell2.swift
//  Travellers
//
//  Created by Legolas.Invoker on 2017/4/6.
//  Copyright © 2017年 Chang.Jing. All rights reserved.
//

import UIKit

class TableVCell2: UITableViewCell {

    override init(style: UITableViewCellStyle, reuseIdentifier: String?) {
        super.init(style: style, reuseIdentifier: reuseIdentifier)
        
        
    }
    
    required init?(coder aDecoder: NSCoder) {
        super.init(coder: aDecoder)
    }

    @IBOutlet weak var myImageView: UIImageView!
    @IBOutlet weak var headLine: UILabel!
    @IBOutlet weak var body: UILabel!
    @IBOutlet weak var dateLabel: UILabel!
    @IBOutlet weak var userLabel: UILabel!
    @IBOutlet weak var viewersLabel: UILabel!
    @IBOutlet weak var containerView: UIView!
    
    @IBOutlet weak var topContainer: UIView!
    @IBOutlet weak var separatarView: UIView!
    @IBOutlet weak var userContariner: UIView!
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
        self.contentView.backgroundColor = UIColor.mainBgColor
        containerView.layer.cornerRadius = 5
        containerView.layer.masksToBounds = true
        containerView.clipsToBounds = true
        containerView.backgroundColor = UIColor.white
        userContariner.backgroundColor = UIColor.white
        topContainer.backgroundColor = UIColor.white
        separatarView.backgroundColor = UIColor.mainBgColor
        headLine.textColor = UIColor.myBlack
        myImageView.clipsToBounds = true
        myImageView.layer.cornerRadius = 2
        myImageView.layer.masksToBounds = true
        
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
}
    

}
