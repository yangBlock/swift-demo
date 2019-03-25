source 'https://github.com/CocoaPods/Specs.git'
platform :ios, '9.0'


# swift这里比OC要多导入(但是导入后会有大量警告，不导入这个就要在桥接文件里导入三方库头文件,处理大量警告见笔记)
#swift 项目中通过pod导入swift项目，必须要使用use_frameworks！，在需要使用的到地方 import AFNetworking
#swift 项目中通过pod导入OC项目
#1） 使用use_frameworks，在桥接文件里加上#import "AFNetworking/AFNetworking.h"
#2）不使用frameworks，桥接文件加上 #import "AFNetworking.h"
#最重要的就是在Podfile里面加上use_frameworks!   因为swift使用的是框架而不是静态库

use_frameworks!



target 'SwiftTest' do
    
    
pod 'AFNetworking'
pod 'SDWebImage'
pod 'SDWebImage/GIF'
pod 'YYModel'
pod 'SVProgressHUD'
pod 'MJRefresh'

#===================swift模块导入的三方库=================================

#自动布局,iOS11之前，不能升级到4.0
 pod 'SnapKit'


end
