//
//  AppDelegate.swift
//  ZXYWebView
//
//  Created by 张小杨 on 2020/12/8.
//

import UIKit
import RTRootNavigationController
@main
class AppDelegate: UIResponder, UIApplicationDelegate {
    var window: UIWindow?
    

    func application(_ application: UIApplication, didFinishLaunchingWithOptions launchOptions: [UIApplication.LaunchOptionsKey: Any]?) -> Bool {
        // Override point for customization after application launch.
        window = UIWindow(frame: UIScreen.main.bounds)
        window?.backgroundColor = .white
        
//        let vc = ViewController()
        let navtion = RTRootNavigationController.init(rootViewController: ViewController())
        window?.rootViewController = navtion
        window?.makeKeyAndVisible()
        return true
    }



}

