//
//  ZYClassificationTableViewCell.swift
//  SwiftTest
//
//  Created by 品创 on 2019/3/7.
//  Copyright © 2019 XZY. All rights reserved.
//

import UIKit

class ZYClassificationTableViewCell: UITableViewCell {

    let iconImageView = UIImageView()
    var  titleLabel = UILabel()
    
    var titleStr : NSString?
    
    override func awakeFromNib() {
        super.awakeFromNib()
        
    }

    required init?(coder aDecoder: NSCoder) {
        super.init(coder: aDecoder)
    }
    
    override init(style: UITableViewCellStyle, reuseIdentifier: String?) {
        super.init(style: style, reuseIdentifier: reuseIdentifier)
        self.selectionStyle = UITableViewCellSelectionStyle.none
        
        self.createCellUI()
    }

    func createCellUI() {
        iconImageView.frame = CGRect(x: 13, y: 18, width: 2, height: 14)
        iconImageView.backgroundColor = UIColor.hexadecimalColor(hexadecimal: "#f5f5f5")
        self.contentView.addSubview(iconImageView)
        
        titleLabel.frame = CGRect(x: 20, y: 15, width: 70, height: 20)
        titleLabel.font = UIFont.systemFont(ofSize: 14)
        titleLabel.textColor = UIColor.black;
        titleLabel.highlightedTextColor = UIColor.white;
        self.contentView.addSubview(titleLabel);
    }
    
   
    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        self.contentView.backgroundColor = selected ? UIColor.hexadecimalColor(hexadecimal: "#f94747") : UIColor.hexadecimalColor(hexadecimal: "#f5f5f5")
        self.titleLabel.backgroundColor = selected ? UIColor.hexadecimalColor(hexadecimal: "#f94747") : UIColor.hexadecimalColor(hexadecimal: "#f5f5f5")
        self.isHighlighted = selected;
        titleLabel.isHighlighted = selected;
        iconImageView.isHidden = !selected;
    }

}
