//
//  TabbarConfiger.swift
//  ALaDinnOfSwift
//
//  Created by ZCW on 2018/6/22.
//  Copyright © 2018年 SLKJ. All rights reserved.
//

import UIKit

enum ExampleProvider {

    static func customColorStyle() -> ExampleNavigationController {
        let tabBarController = ESTabBarController()
        let v1 = ExampleViewController()
        let v2 = ExampleViewController()
        let v3 = ExampleViewController()
        let v4 = ExampleViewController()
        
        v1.tabBarItem = ESTabBarItem.init(ExampleBasicContentView(), title: "首页", image: UIImage(named: "ic_home_page_nor"), selectedImage: UIImage(named: "ic_home_page_pre"))
        v2.tabBarItem = ESTabBarItem.init(ExampleBasicContentView(), title: "质押", image: UIImage(named: "ic_pledge_nor"), selectedImage: UIImage(named: "ic_pledge_pre"))
        v3.tabBarItem = ESTabBarItem.init(ExampleBasicContentView(), title: "资讯", image: UIImage(named: "ic_crowdfunding_nor"), selectedImage: UIImage(named: "ic_crowdfunding_pre"))
        v4.tabBarItem = ESTabBarItem.init(ExampleBasicContentView(), title: "我的", image: UIImage(named: "ic_my_nor"), selectedImage: UIImage(named: "ic_my_pre"))
        
        tabBarController.viewControllers = [v1, v2, v3, v4]
        let navigationController = ExampleNavigationController.init(rootViewController: tabBarController)
        return navigationController
    }
}
