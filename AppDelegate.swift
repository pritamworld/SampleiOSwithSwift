//
//  AppDelegate.swift
//  SampleiOSwithSwift
//
//  Created by Pritesh Patel on 2017-12-13.
//  Copyright © 2017 MoxDroid. All rights reserved.
//

import UIKit
import KYDrawerController
//http://sapandiwakar.in/programatically-set-the-initial-view-controller-using-storyboards/
//https://github.com/ykyouhei/KYDrawerController/

@UIApplicationMain
class AppDelegate: UIResponder, UIApplicationDelegate {

    var window: UIWindow?


    func application(_ application: UIApplication, didFinishLaunchingWithOptions launchOptions: [UIApplicationLaunchOptionsKey: Any]?) -> Bool {
        // Override point for customization after application launch.
        Thread.sleep(forTimeInterval: 3.0)
        print("This changes are made for sample branch.")
        
        let mainViewController   = MainViewController()
        let drawerViewController = DrawerViewController()
        let drawerController     = KYDrawerController(drawerDirection: .left, drawerWidth: 300)
        drawerController.mainViewController = UINavigationController(
            rootViewController: mainViewController
        )
        drawerController.drawerViewController = drawerViewController
        
        window = UIWindow(frame: UIScreen.main.bounds)
        window?.rootViewController = drawerController
        window?.makeKeyAndVisible()
        
        /*
        var navigationController: UINavigationController? = (self.window?.rootViewController as? UINavigationController)
        var storyboard = UIStoryboard(name: "Main", bundle: nil)
        if self.isUserLoggedIn() {
            // Show the dashboard
            navigationController?.pushViewController(storyboard.instantiateViewController(withIdentifier: "SDDashboardViewController"), animated: false)
        }
        else {
            // Login
            navigationController?.pushViewController(storyboard.instantiateViewController(withIdentifier: "SDLoginViewController"), animated: false)
        }
 */

        return true
    }

    func applicationWillResignActive(_ application: UIApplication) {
        // Sent when the application is about to move from active to inactive state. This can occur for certain types of temporary interruptions (such as an incoming phone call or SMS message) or when the user quits the application and it begins the transition to the background state.
        // Use this method to pause ongoing tasks, disable timers, and invalidate graphics rendering callbacks. Games should use this method to pause the game.
    }

    func applicationDidEnterBackground(_ application: UIApplication) {
        // Use this method to release shared resources, save user data, invalidate timers, and store enough application state information to restore your application to its current state in case it is terminated later.
        // If your application supports background execution, this method is called instead of applicationWillTerminate: when the user quits.
    }

    func applicationWillEnterForeground(_ application: UIApplication) {
        // Called as part of the transition from the background to the active state; here you can undo many of the changes made on entering the background.
    }

    func applicationDidBecomeActive(_ application: UIApplication) {
        // Restart any tasks that were paused (or not yet started) while the application was inactive. If the application was previously in the background, optionally refresh the user interface.
    }

    func applicationWillTerminate(_ application: UIApplication) {
        // Called when the application is about to terminate. Save data if appropriate. See also applicationDidEnterBackground:.
    }
    
    class func sharedInstance() -> AppDelegate{
        return UIApplication.shared.delegate as! AppDelegate
    }


}

