//
//  AppDelegate.swift
//  CoolApp
//
//  Created by Mei Yu on 2/13/18.
//  Copyright © 2018 Say Say K. All rights reserved.
//

import UIKit

@UIApplicationMain
class AppDelegate: UIResponder, UIApplicationDelegate {

    var window: UIWindow?

    var isLoggedIn = true

    func application(_ application: UIApplication, didFinishLaunchingWithOptions launchOptions: [UIApplicationLaunchOptionsKey: Any]?) -> Bool {
        LogManager.setup()
        AnalyticsManager.setup()
        self.setupUI()
        log.info("Done")
        return true
    }

    func setupUI() {
        if isLoggedIn {
            self.window = UIWindow(frame: UIScreen.main.bounds)

            // Use if let to avoid force unwrapping
            if let window = self.window {
                window.rootViewController = TabBarController.main
                window.makeKeyAndVisible()
            }

        }
    }

    func applicationWillResignActive(_ application: UIApplication) {

    }

    func applicationDidEnterBackground(_ application: UIApplication) {
        // This is for media play
        UIApplication.shared.endReceivingRemoteControlEvents()
    }

    func applicationWillEnterForeground(_ application: UIApplication) {
        // This is for media play
        UIApplication.shared.beginReceivingRemoteControlEvents()
    }

    func applicationDidBecomeActive(_ application: UIApplication) {
        // Restart any tasks that were paused (or not yet started) while the application was inactive. If the application was previously in the background, optionally refresh the user interface.
    }

    func applicationWillTerminate(_ application: UIApplication) {
        // Called when the application is about to terminate. Save data if appropriate. See also applicationDidEnterBackground:.
    }

}

