//
//  AppDelegate.swift
//  burguer_king_CAMS
//
//  Created by Carlos Mendizabal on 11/04/21.
//

import UIKit

@main
class AppDelegate: UIResponder, UIApplicationDelegate {



    func application(_ application: UIApplication, didFinishLaunchingWithOptions launchOptions: [UIApplication.LaunchOptionsKey: Any]?) -> Bool {
        let bkorange = UIColor(red: 1 , green: 0.536, blue: 0.21, alpha: 1)
        let bkwhite = UIColor(red: 0.972, green: 0.94, blue: 0.888, alpha: 1)
        UITabBar.appearance().barTintColor = bkorange
        UITabBar.appearance().tintColor = bkwhite
        UITabBar.appearance().unselectedItemTintColor = .red
        // Override point for customization after application launch.
        return true
    }

    // MARK: UISceneSession Lifecycle

    func application(_ application: UIApplication, configurationForConnecting connectingSceneSession: UISceneSession, options: UIScene.ConnectionOptions) -> UISceneConfiguration {
        // Called when a new scene session is being created.
        // Use this method to select a configuration to create the new scene with.
        return UISceneConfiguration(name: "Default Configuration", sessionRole: connectingSceneSession.role)
    }

    func application(_ application: UIApplication, didDiscardSceneSessions sceneSessions: Set<UISceneSession>) {
        // Called when the user discards a scene session.
        // If any sessions were discarded while the application was not running, this will be called shortly after application:didFinishLaunchingWithOptions.
        // Use this method to release any resources that were specific to the discarded scenes, as they will not return.
    }


}

