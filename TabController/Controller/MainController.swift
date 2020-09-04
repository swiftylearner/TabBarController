//
//  ViewController.swift
//  TabController
//
//  Created by MacBook on 9/4/20.
//  Copyright © 2020 Apptive. All rights reserved.
//

import UIKit

class MainController: UITabBarController {

    
    override func viewDidLoad() {
        super.viewDidLoad()
        configureControllers()
        
    }

    
    private func configureControllers() {
        let homeVC = construct(controller: HomeController(), controllerIcon: "house", iconTitle: "Home")
        let favoriteVC = construct(controller: FavoriteController(), controllerIcon: "star", iconTitle: "Favorites")
        let profileVC = construct(controller: ProfileController(), controllerIcon: "person", iconTitle: "Profile")
        let notificationVC = construct(controller: NotificationController(), controllerIcon: "bell", iconTitle: "Notifications")
        let settingVC = construct(controller: SetttingController(), controllerIcon: "gear", iconTitle: "Settings")
        
        let controllers = [homeVC, favoriteVC, profileVC, notificationVC, settingVC]
        
        self.viewControllers = controllers
    }
    
    
    private func construct(controller:UIViewController = UIViewController(),controllerIcon:String,iconTitle:String) -> UINavigationController {
        let navController = UINavigationController(rootViewController: controller)
        navController.tabBarItem.image = UIImage(systemName: controllerIcon)
        navController.tabBarItem.title = iconTitle
        return navController
    }
    

}

