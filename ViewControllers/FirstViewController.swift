//
//  FirstViewController.swift
//  PresentSpeak
//
//  Created by qianfeng on 16/9/20.
//  Copyright © 2016年 zqq. All rights reserved.
//

import UIKit

class FirstViewController:UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
    self.DescribeNavBar()
        
    }
    func DescribeNavBar(){
     self.navigationController?.navigationBar.barTintColor = UIColor.init(red: 239/255, green: 183/255, blue: 10/255, alpha: 1)

     let leftBtn = UIBarButtonItem.init(image: UIImage.init(named: "newsTabBarNormal"), style: .Plain, target: self, action: #selector(FirstViewController.leftClick))
     self.navigationItem.leftBarButtonItem = leftBtn
     let rightBtn = UIBarButtonItem.init(image: UIImage.init(named: "ic_tab_category_normal"), style: .Plain, target: self, action: #selector(FirstViewController.rightClick))
     self.navigationItem.rightBarButtonItem = rightBtn
     self.navigationController?.navigationBar.tintColor = UIColor.whiteColor()
        
    }
    func leftClick(){
        
        
    }
    func rightClick(){
        
    }


}
