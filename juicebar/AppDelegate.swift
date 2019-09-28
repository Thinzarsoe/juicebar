//
//  AppDelegate.swift
//  juicebar
//
//  Created by Thinzar Soe on 9/24/19.
//  Copyright © 2019 Thinzar Soe. All rights reserved.
//

import UIKit

@UIApplicationMain
class AppDelegate: UIResponder, UIApplicationDelegate {

    var window: UIWindow?


    func application(_ application: UIApplication, didFinishLaunchingWithOptions launchOptions: [UIApplication.LaunchOptionsKey: Any]?) -> Bool {
        
            // Override point for customization after application launch.
            // Sets background to a blank/empty image
            UINavigationBar.appearance().setBackgroundImage(UIImage(), for: .default)
            // Sets shadow (line below the bar) to a blank image
            UINavigationBar.appearance().shadowImage = UIImage()
            // Sets the translucent background color
            UINavigationBar.appearance().backgroundColor = .clear
        UINavigationBar.appearance().tintColor = UIColor.black
            // Set translucent. (Default value is already true, so this can be removed if desired.)
            UINavigationBar.appearance().isTranslucent = true
            return true
        
    }

    func applicationWillResignActive(_ application: UIApplication) {
        // Sent when the application is about to move from active to inactive state. This can occur for certain types of temporary interruptions (such as an incoming phone call or SMS message) or when the user quits the application and it begins the transition to the background state.
        // Use this method to pause ongoing tasks, disable timers, and invalidate graphics rendering callbacks. Games should use this method to pause the game.
    }

    func applicationDidEnterBackground(_ application: UIApplication) {
        
    }

    func applicationWillEnterForeground(_ application: UIApplication) {
        
    }

    func applicationDidBecomeActive(_ application: UIApplication) {
        
    }

    func applicationWillTerminate(_ application: UIApplication) {
        
    }


}

