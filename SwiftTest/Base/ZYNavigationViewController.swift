//
//  ZYNavigationViewController.swift
//  SwiftTest
//
//  Created by 品创 on 2019/3/6.
//  Copyright © 2019 XZY. All rights reserved.
//

import UIKit

class ZYNavigationViewController: UINavigationController {

    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }
    
    override func pushViewController(_ viewController: UIViewController, animated: Bool) {
        if self.childViewControllers.count > 0 {
            viewController.hidesBottomBarWhenPushed = true
            if viewController.isKind(of: ZYBaseVC.self){
                let base = ZYBaseVC()
              
                
            }
        }
    }
}

