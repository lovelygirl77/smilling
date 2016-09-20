//
//  MyTabViewController.swift
//  PresentSpeak
//
//  Created by qianfeng on 16/9/20.
//  Copyright © 2016年 zqq. All rights reserved.
//

import UIKit

class MyTabViewController: UITabBarController {

    override func viewDidLoad() {
        super.viewDidLoad()
    
    self.creatTabBarControllers()

    }
    
    func creatTabBarControllers(){
     let vc1 = FirstViewController()
     vc1.title = "段子"
     let nav1 = UINavigationController.init(rootViewController: vc1)
     nav1.tabBarItem = UITabBarItem.init(title: nil, image: UIImage.init(named: "iconfont-duanzi 17-41-52-457"), selectedImage: UIImage.init(named: "iconfont-duanzi-2")?.imageWithRenderingMode(.AlwaysOriginal))
    let vc2 = SecondViewController()
    let nav2 = UINavigationController.init(rootViewController: vc2)
    nav2.tabBarItem = UITabBarItem.init(title: nil, image: UIImage.init(named: "iconfont-iconfonttupian"), selectedImage: UIImage.init(named: "iconfont-iconfonttupian-2")?.imageWithRenderingMode(.AlwaysOriginal))
    let vc3 = ThirdViewController()
     vc3.title = "视频"
     let nav3 = UINavigationController.init(rootViewController: vc3)
     nav3.tabBarItem = UITabBarItem.init(title: nil, image: UIImage.init(named: "iconfont-shipin"), selectedImage: UIImage.init(named: "iconfont-shipin-2")?.imageWithRenderingMode(.AlwaysOriginal))
     let vc4 = FourthViewController()
     vc4.title = "我的"
     let nav4 = UINavigationController.init(rootViewController: vc4)
    nav4.tabBarItem = UITabBarItem.init(title: nil, image: UIImage.init(named: "iconfont-wode"), selectedImage: UIImage.init(named: "iconfont-wode-2")?.imageWithRenderingMode(.AlwaysOriginal))
   self.viewControllers = [nav1,nav2,nav3,nav4]
   
        
  }
    

}
