//
//  MainViewController.swift
//  DYZB
//
//  Created by mac on 2018/7/5.
//  Copyright © 2018 mengting.wei. All rights reserved.
//

import UIKit

class MainViewController: UITabBarController {

    override func viewDidLoad() {
        super.viewDidLoad()
        //添加子控制器
        addChildVCS()
        
       
    }

   

}

extension MainViewController {
    //添加子控制器
     func addChildVCS() {
        addChildVC(nameStoryboard: "Home")
        addChildVC(nameStoryboard: "Live")
        addChildVC(nameStoryboard: "Follow")
        addChildVC(nameStoryboard: "Profile")
    }
   
    //添加子控制器函数
     func addChildVC (nameStoryboard: String) {
        //通过Storyboard获取控制器
        let childVC = UIStoryboard(name: nameStoryboard, bundle: nil).instantiateInitialViewController()!
        
        //childVC作为子控制器
        addChildViewController(childVC)
    }
}
