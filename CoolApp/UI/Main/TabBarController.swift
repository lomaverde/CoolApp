//
//  TabBarController.swift
//  CoolApp
//
//  Created by Mei Yu on 4/25/18.
//  Copyright © 2018 Mei. All rights reserved.
//

import UIKit

class TabBarController: UITabBarController {

    static let main = TabBarController()

    override func viewDidLoad() {
        super.viewDidLoad()
        self.setupViewControllers()
    }

}

// MARK - Children ViewControllers
extension TabBarController {

    // Bar Item Tags
    // Using getter instead of let so they can be displayed in the extension
    
    var videosTag: Int { return 0 }
    var downloadsTag: Int { return 1 }

    func setupViewControllers() {
        let controllers = [videosVC, downloadsVC]
        self.viewControllers = controllers
        self.viewControllers = controllers.map { UINavigationController(rootViewController: $0)}
    }

    var videosVC: MyViewController {
        let tag = videosTag
        let viewController = MyViewController()
        viewController.title = "Top Rated Videos"
        viewController.view.backgroundColor = UIColor.orange
        viewController.tabBarItem = UITabBarItem(tabBarSystemItem: .topRated, tag: tag)
        return viewController
    }

    var downloadsVC: MyViewController {
        let tag = downloadsTag
        let viewController = MyViewController()
        viewController.title = "Downloads"
        viewController.view.backgroundColor = UIColor.orange
        viewController.tabBarItem = UITabBarItem(tabBarSystemItem: .topRated, tag: tag)
        return viewController
    }

}
