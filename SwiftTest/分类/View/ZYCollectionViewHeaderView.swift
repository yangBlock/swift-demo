//
//  ZYCollectionViewHeaderView.swift
//  SwiftTest
//
//  Created by 品创 on 2019/3/12.
//  Copyright © 2019 XZY. All rights reserved.
//

import UIKit

class ZYCollectionViewHeaderView: UICollectionReusableView {
    var titleLabel = UILabel()
    var headerImage = UIImageView()
    
    override init(frame: CGRect) {
        super.init(frame: frame)
        
        titleLabel = UILabel(frame: CGRect(x: 15, y: 0, width: kScreenWidth - 125, height: 50))
        titleLabel.textColor = UIColor.hexadecimalColor(hexadecimal: "#f94747")
        titleLabel.font.withSize(18)
        self.addSubview(titleLabel)
    }
    
    required init?(coder aDecoder: NSCoder) {
        super.init(coder: aDecoder)
    }
    
    
}
