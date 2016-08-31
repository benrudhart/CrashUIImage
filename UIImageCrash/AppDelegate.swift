//
//  AppDelegate.swift
//  UIImageCrash
//
//  Created by Ben Rudhart on 31/08/16.
//  Copyright © 2016 benrudhart. All rights reserved.
//

import UIKit

@UIApplicationMain
class AppDelegate: UIResponder, UIApplicationDelegate {

    var window: UIWindow?


    func application(_ application: UIApplication, didFinishLaunchingWithOptions launchOptions: [UIApplicationLaunchOptionsKey: Any]?) -> Bool {
        // this will crash when running on an iOS 8 device/ simulator and
        // the apps deployment target is set to iOS 8.3 or 8.4
        // using iOS 8.0-8.2 as deployment target will not cause a crash
        // this crash occurs when the app is build and run from Xcode 8 beta 6 (8S201h)
        _ = UIImage(named: "image")

        return true
    }
}
