//
//  AppDelegate.swift
//  SwiftTest
//
//  Created by 品创 on 2018/8/8.
//  Copyright © 2018年 品创. All rights reserved.
//

import UIKit

@UIApplicationMain
class AppDelegate: UIResponder, UIApplicationDelegate {

    var window: UIWindow?


    func application(_ application: UIApplication, didFinishLaunchingWithOptions launchOptions: [UIApplicationLaunchOptionsKey: Any]?) -> Bool {
      
        let home = ZYHomeVC()
        // 未选中状态Tab图片
        home.tabBarItem.image = UIImage(named: "tab_mall_normal")?.withRenderingMode(.alwaysOriginal)
        // 选中状态Tab图片
        home.tabBarItem.selectedImage = UIImage(named: "tab_mall")?.withRenderingMode(.alwaysOriginal)
        // Tab的文本
        home.tabBarItem.title = "首页"
        
        let nav1 = UINavigationController(rootViewController: home)
        
        
        let classification = ZYClassificationVC()
        classification.tabBarItem.image = UIImage(named: "tab_fenlei_normal")?.withRenderingMode(.alwaysOriginal)
        classification.tabBarItem.selectedImage = UIImage(named: "tab_fenlei")?.withRenderingMode(.alwaysOriginal)
        classification.tabBarItem.title = "分类"
        let nav2 = UINavigationController(rootViewController: classification)

        
        let find = ZYFindVC()
        find.tabBarItem.image = UIImage(named: "tab_faxian_normal")?.withRenderingMode(.alwaysOriginal)
        find.tabBarItem.selectedImage = UIImage(named: "tab_faxian")?.withRenderingMode(.alwaysOriginal)
        find.tabBarItem.title = "发现"
        let nav3 = UINavigationController(rootViewController: find)

        
        let mine = ZYMineVC()
        mine.tabBarItem.image = UIImage(named: "tab_mine_normal")?.withRenderingMode(.alwaysOriginal)
        mine.tabBarItem.selectedImage = UIImage(named: "tab_mine")?.withRenderingMode(.alwaysOriginal)
        mine.tabBarItem.title = "我的"
        let nav4 = UINavigationController(rootViewController: mine)

        
        let tabBarController = UITabBarController()
        // tabBarController的主题颜色
        tabBarController.tabBar.tintColor = UIColor.hexadecimalColor(hexadecimal: "#f94747");
        // tabBarController的子视图控制器集合
        tabBarController.viewControllers = [nav1,nav2,nav3,nav4]
        // 添加到rootViewController
        window?.rootViewController = tabBarController
        
        return true
    }

    func applicationWillResignActive(_ application: UIApplication) {
        // Sent when the application is about to move from active to inactive state. This can occur for certain types of temporary interruptions (such as an incoming phone call or SMS message) or when the user quits the application and it begins the transition to the background state.
        // Use this method to pause ongoing tasks, disable timers, and invalidate graphics rendering callbacks. Games should use this method to pause the game.
    }

    func applicationDidEnterBackground(_ application: UIApplication) {
        // Use this method to release shared resources, save user data, invalidate timers, and store enough application state information to restore your application to its current state in case it is terminated later.
        // If your application supports background execution, this method is called instead of applicationWillTerminate: when the user quits.
    }

    func applicationWillEnterForeground(_ application: UIApplication) {
        // Called as part of the transition from the background to the active state; here you can undo many of the changes made on entering the background.
    }

    func applicationDidBecomeActive(_ application: UIApplication) {
        // Restart any tasks that were paused (or not yet started) while the application was inactive. If the application was previously in the background, optionally refresh the user interface.
    }

    func applicationWillTerminate(_ application: UIApplication) {
        // Called when the application is about to terminate. Save data if appropriate. See also applicationDidEnterBackground:.
    }


}

