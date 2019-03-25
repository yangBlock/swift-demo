//
//  ZYBaseVC.swift
//  SwiftTest
//
//  Created by 品创 on 2019/3/6.
//  Copyright © 2019 XZY. All rights reserved.
//

import UIKit



class ZYBaseVC: UIViewController {

    let leftButton = UIButton()
    
    let rightButton = UIButton()
    
    override func viewDidLoad() {
        super.viewDidLoad()
      
        
        leftButton.frame = CGRect(x: 0, y: 0, width: 40, height: 40)
        rightButton.frame = CGRect(x: 0, y: 0, width: 40, height: 40)
        leftButton.setTitleColor(UIColor.black, for: UIControlState.normal)
        rightButton.setTitleColor(UIColor.black, for: UIControlState.normal)
        rightButton.setTitle("定价", for: UIControlState.normal)
        rightButton.titleLabel?.font = UIFont.systemFont(ofSize: 15)
        leftButton.setImage(UIImage(named: "nav_back_black"), for: UIControlState.normal)
        leftButton.imageEdgeInsets = UIEdgeInsetsMake(0, -16, 0, 16);
        leftButton.addTarget(self, action: #selector(popViewController), for: UIControlEvents.touchUpInside)
        rightButton.addTarget(self, action: #selector(rightClick), for: UIControlEvents.touchUpInside)
    
        navigationItem.leftBarButtonItem = UIBarButtonItem(customView: leftButton)
        
        navigationItem.rightBarButtonItem = UIBarButtonItem(customView: rightButton)
    }
    
    @objc func popViewController() {
        print("返回按钮")
    }

    @objc func rightClick () {
        
    }
}
