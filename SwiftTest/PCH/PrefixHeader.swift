//
//  PrefixHeader.swift
//  SwiftTest
//
//  Created by 品创 on 2019/3/6.
//  Copyright © 2019 品创. All rights reserved.
//

import UIKit

//    定义2个常用的常量
let kScreenHeight = UIScreen.main.bounds.size.height
let kScreenWidth = UIScreen.main.bounds.size.width

//判断是否是iPhoneX
func isIPhoneX() ->Bool {
    let screenHeight = UIScreen.main.nativeBounds.size.height;
    if screenHeight == 2436 || screenHeight == 1792 || screenHeight == 2688 || screenHeight == 1624 {
        return true
    }
    return false
}

//适配iPhone X 状态栏高度
func ZY_StatusBarHeight() ->CGFloat {
    
    if isIPhoneX() {
        return 44
    }
    return 20
}
//适配iPhone X Tabbar高度
func ZY_TabbarHeight() ->CGFloat {
    
    if isIPhoneX() {
        return 83
    }
    return 49
}
//适配iPhone X Tabbar距离底部的距离
func ZY_TabbarSafeBottomMargin() ->CGFloat {
    
    if isIPhoneX() {
        return 34
    }
    return 0
}

//适配iPhone X 导航栏高度
func ZY_NavHeight() ->CGFloat {
    
    if isIPhoneX() {
        return 88
    }
    return 64
}

let COLOR_MAIN = UIColor.hexadecimalColor(hexadecimal: "#F6F6F6")

extension UIColor{
    class func hexadecimalColor(hexadecimal:String)->UIColor{
        var cstr = hexadecimal.trimmingCharacters(in:  CharacterSet.whitespacesAndNewlines).uppercased() as NSString;
        if(cstr.length < 6){
            return UIColor.clear;
        }
        if(cstr.hasPrefix("0X")){
            cstr = cstr.substring(from: 2) as NSString
        }
        if(cstr.hasPrefix("#")){
            cstr = cstr.substring(from: 1) as NSString
        }
        if(cstr.length != 6){
            return UIColor.clear;
        }
        var range = NSRange.init()
        range.location = 0
        range.length = 2
        //r
        let rStr = cstr.substring(with: range);
        //g
        range.location = 2;
        let gStr = cstr.substring(with: range)
        //b
        range.location = 4;
        let bStr = cstr.substring(with: range)
        var r :UInt32 = 0x0;
        var g :UInt32 = 0x0;
        var b :UInt32 = 0x0;
        Scanner.init(string: rStr).scanHexInt32(&r);
        Scanner.init(string: gStr).scanHexInt32(&g);
        Scanner.init(string: bStr).scanHexInt32(&b);
        return UIColor.init(red: CGFloat(r)/255.0, green: CGFloat(g)/255.0, blue: CGFloat(b)/255.0, alpha: 1);
    }
}
