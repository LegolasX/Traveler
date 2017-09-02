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
    
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
        
        for v  in self.contentView.subviews {
            for cons in v.constraints {
                print(cons.secondItem)
                if cons.secondItem as! UIView == self.contentView {
                    print(cons)
                }
            }
        }
        
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
}
    

}
