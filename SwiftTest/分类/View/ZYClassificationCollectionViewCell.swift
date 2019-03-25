//
//  ZYClassificationCollectionViewCell.swift
//  SwiftTest
//
//  Created by 品创 on 2019/3/12.
//  Copyright © 2019 XZY. All rights reserved.
//

import UIKit

class ZYClassificationCollectionViewCell: UICollectionViewCell {
    
    var imageView = UIImageView()
    var titleLabel = UILabel()
    
    
    override func awakeFromNib() {
        super.awakeFromNib()
    }
    
    required init?(coder aDecoder: NSCoder) {
        super.init(coder: aDecoder)
    }
    
    override init(frame: CGRect) {
        super.init(frame: CGRect(x: 0, y: 0, width: (kScreenWidth - 95 - 100)/3, height: 92))
        
        self.createViewUI()
    }
    
    func createViewUI() {
        imageView = UIImageView(frame: CGRect(x: 0, y: 0, width: 60, height: 60))
        imageView.image = UIImage(named: "tab_faxian")
        imageView.contentMode = UIViewContentMode.scaleAspectFill
        imageView.clipsToBounds = true;
        self.contentView.addSubview(imageView)
        
        titleLabel = UILabel(frame: CGRect(x: 0, y: 72, width: 60, height: 20))
        titleLabel.text = "衣服西装";
        titleLabel.font = UIFont.systemFont(ofSize: 12)
        titleLabel.textAlignment = NSTextAlignment.center
        self.contentView.addSubview(titleLabel)
    }
}
