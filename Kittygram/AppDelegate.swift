//
//  AppDelegate.swift
//  Kittygram
//
//  Created by Lukasz Mroz on 14.10.2016.
//  Copyright © 2016 Sunshinejr. All rights reserved.
//

import UIKit

@UIApplicationMain
class AppDelegate: UIResponder, UIApplicationDelegate {

    var window: UIWindow?

    func application(_ application: UIApplication, didFinishLaunchingWithOptions launchOptions: [UIApplicationLaunchOptionsKey: Any]?) -> Bool {
        window = UIWindow()

        var rootViewController: UIViewController!
        if arc4random_uniform(5) % 4 == 0 { // super secret algorithm, dont change
            rootViewController = PayMoneyPleaseViewController()
        } else {
            rootViewController = DashboardViewController()
        }
        window?.rootViewController = UINavigationController(rootViewController: rootViewController)
        window?.makeKeyAndVisible()
        
        return true
    }
}

