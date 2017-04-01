//
//  AppDelegate.swift
//  TabBarControllerMSB
//
//  Created by Iggy Mwangi on 4/1/17.
//  Copyright © 2017 Iggy Mwangi. All rights reserved.
//

import UIKit

@UIApplicationMain
class AppDelegate: UIResponder, UIApplicationDelegate {

    var window: UIWindow?
    let arrayOfImages = [ "1", "2", "3", "4", "5", "6", "7"]
    let arrayOfTitles = [ "Google", "Bing", "YouTube", "Apple", "Github", "Wikipedia", "GoogleNews"]

    func application(_ application: UIApplication, didFinishLaunchingWithOptions launchOptions: [UIApplicationLaunchOptionsKey: Any]?) -> Bool {
        // Override point for customization after application launch.
        
        let tabBar = UITabBarController()
        tabBar.viewControllers = self.getArrayOfViewControllers()
        self.customiseTabItems(tabBar: tabBar.tabBar)
        // set tabBar as root
        
        self.window?.rootViewController = tabBar
        self.window?.makeKeyAndVisible()
        return true
    }

    
    func getArrayOfViewControllers() -> [ViewController] {
        
        let googleVC = UIStoryboard.init(name: "Google", bundle: Bundle.main).instantiateInitialViewController()
        let bingVC = UIStoryboard.init(name: "Bing", bundle: Bundle.main).instantiateInitialViewController()
        let gooogleNewsVC = UIStoryboard.init(name: "GoogleNews", bundle: Bundle.main).instantiateInitialViewController()
        let youtubeVC = UIStoryboard.init(name: "YouTube", bundle: Bundle.main).instantiateInitialViewController()
        let wikipediaVC = UIStoryboard.init(name: "Wikipedia", bundle: Bundle.main).instantiateInitialViewController()
        let appleVC = UIStoryboard.init(name: "Apple", bundle: Bundle.main).instantiateInitialViewController()
        let githubVC = UIStoryboard.init(name: "Github", bundle: Bundle.main).instantiateInitialViewController()
        
        let arrayOfVC:[UIViewController] = [googleVC!, bingVC!,gooogleNewsVC!,
                                            youtubeVC!,wikipediaVC!, appleVC!, githubVC!]
        
        return arrayOfVC as! [ViewController]
        
    }
    func customiseTabItems(tabBar: UITabBar) {
        for item in tabBar.items! {
            item.image = UIImage(named: arrayOfImages[tabBar.items!.index(of: item)!])
            item.title = arrayOfTitles[tabBar.items!.index(of: item)!]
        }
    }

  
    
    

}

