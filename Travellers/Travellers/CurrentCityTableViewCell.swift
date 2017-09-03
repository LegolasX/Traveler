//
//  CurrentCityTableViewCell.swift
//  SoolyWeather
//
//  Created by SoolyChristina on 2017/3/10.
//  Copyright © 2017年 SoolyChristina. All rights reserved.
//

import UIKit

class CurrentCityTableViewCell: UITableViewCell {

    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }
    lazy var hotCities: [String] = {
        let array = ["华北电力大学"]
        return array
    }()

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }
    override init(style: UITableViewCellStyle, reuseIdentifier: String?) {
        super.init(style: style, reuseIdentifier: reuseIdentifier)
        self.setupUI()
    }
    
    required init?(coder aDecoder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    var callBack: ((String) -> Void)?
    private func setupUI() {
        
        self.backgroundColor = cellColor
        // 动态创建城市btn
        for i in 0..<hotCities.count {
            // 列
            let column = i % 3
            // 行
            let row = i / 3
            
            let btn = UIButton(frame: CGRect(x: btnMargin + CGFloat(column) * (btnWidth + btnMargin), y: 15 + CGFloat(row) * (btnHeight + btnMargin), width: btnWidth, height: btnHeight))
            btn.setTitle(hotCities[i], for: .normal)
            btn.setTitleColor(mainColor, for: .normal)
            btn.titleLabel?.font = UIFont.systemFont(ofSize: 16)
            btn.backgroundColor = UIColor.white
            //            btn.layer.borderColor = mainColor.cgColor
            //            btn.layer.borderWidth = 0.5
            btn.layer.cornerRadius = 1
            btn.setBackgroundImage(btnHighlightImage, for: .highlighted)
            btn .addTarget(self, action: #selector(btnClick(btn:)), for: .touchUpInside)
            self.addSubview(btn)
            
        }
    }
    
    @objc private func btnClick(btn: UIButton) {
        print(btn.titleLabel!.text!)
        if let c = self.callBack {
            c(btn.titleLabel!.text!)
        }
        
    }


}
