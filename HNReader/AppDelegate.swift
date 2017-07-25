//
//  AppDelegate.swift
//  HNReader
//
//  Created by Chad Moyer on 7/24/17.
//  Copyright © 2017 Chad Moyer. All rights reserved.
//

import UIKit
import CoreData

@UIApplicationMain
class AppDelegate: UIResponder, UIApplicationDelegate {

    var window: UIWindow?


    func application(_ application: UIApplication, didFinishLaunchingWithOptions launchOptions: [UIApplicationLaunchOptionsKey: Any]?) -> Bool {
        // Override point for customization after application launch.
        
        // Set our main colors
        let activeOrangeColor = UIColor(red: 250.0/255.0, green: 170.0/255.0, blue: 20.0/255.0, alpha: 1.0)
        let inactiveGreyColor = UIColor(red: 164.0/255.0, green: 170.0/255.0, blue: 179.0/255.0, alpha: 1.0)
        let tabBarGreyColor = UIColor(red: 250.0/255.0, green: 250.0/255.0, blue: 250.0/255.0, alpha: 1.0)
        
        // Setup our navbar
        UINavigationBar.appearance().setBackgroundImage(UIImage(named: "NavBarBackground"), for: .default)
        UINavigationBar.appearance().titleTextAttributes = [NSForegroundColorAttributeName: UIColor.white]
        UINavigationBar.appearance().tintColor = UIColor.white
        
        // Set the status bar color to white
        UINavigationBar.appearance().barStyle = .blackOpaque
        
        // Setup the tabbar
        UITabBar.appearance().barTintColor = tabBarGreyColor
        UITabBar.appearance().tintColor = activeOrangeColor
        UITabBarItem.appearance().setTitleTextAttributes([NSForegroundColorAttributeName: activeOrangeColor], for: .selected)
        UITabBarItem.appearance().setTitleTextAttributes([NSForegroundColorAttributeName: inactiveGreyColor], for: .normal)
        
        
        // Setup the individual tabs
        let tabBarController = self.window!.rootViewController as! UITabBarController
        let tabBar = tabBarController.tabBar as UITabBar
        
        let storiesTab = tabBar.items![0] as UITabBarItem
        storiesTab.image = UIImage(named: "StoriesInactive")?.withRenderingMode(.alwaysOriginal)
        storiesTab.selectedImage = UIImage(named: "StoriesActive")?.withRenderingMode(.alwaysOriginal)
        
        let showHNTab = tabBar.items![1] as UITabBarItem
        showHNTab.image = UIImage(named: "ShowHNInactive")?.withRenderingMode(.alwaysOriginal)
        showHNTab.selectedImage = UIImage(named: "ShowHNActive")?.withRenderingMode(.alwaysOriginal)
        
        let askHNTab = tabBar.items![2] as UITabBarItem
        askHNTab.image = UIImage(named: "AskHNInactive")?.withRenderingMode(.alwaysOriginal)
        showHNTab.selectedImage = UIImage(named: "AskHNActive")?.withRenderingMode(.alwaysOriginal)
        
        let jobsTab = tabBar.items![3] as UITabBarItem
        jobsTab.image = UIImage(named: "JobsInactive")?.withRenderingMode(.alwaysOriginal)
        jobsTab.selectedImage = UIImage(named: "JobsActive")?.withRenderingMode(.alwaysOriginal)
        
        let settingsTab = tabBar.items![4] as UITabBarItem
        settingsTab.image = UIImage(named: "SettingsInactive")?.withRenderingMode(.alwaysOriginal)
        settingsTab.selectedImage = UIImage(named: "SettingsActive")?.withRenderingMode(.alwaysOriginal)
        
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
        // Saves changes in the application's managed object context before the application terminates.
        self.saveContext()
    }

    // MARK: - Core Data stack

    lazy var persistentContainer: NSPersistentContainer = {
        /*
         The persistent container for the application. This implementation
         creates and returns a container, having loaded the store for the
         application to it. This property is optional since there are legitimate
         error conditions that could cause the creation of the store to fail.
        */
        let container = NSPersistentContainer(name: "HNReader")
        container.loadPersistentStores(completionHandler: { (storeDescription, error) in
            if let error = error as NSError? {
                // Replace this implementation with code to handle the error appropriately.
                // fatalError() causes the application to generate a crash log and terminate. You should not use this function in a shipping application, although it may be useful during development.
                 
                /*
                 Typical reasons for an error here include:
                 * The parent directory does not exist, cannot be created, or disallows writing.
                 * The persistent store is not accessible, due to permissions or data protection when the device is locked.
                 * The device is out of space.
                 * The store could not be migrated to the current model version.
                 Check the error message to determine what the actual problem was.
                 */
                fatalError("Unresolved error \(error), \(error.userInfo)")
            }
        })
        return container
    }()

    // MARK: - Core Data Saving support

    func saveContext () {
        let context = persistentContainer.viewContext
        if context.hasChanges {
            do {
                try context.save()
            } catch {
                // Replace this implementation with code to handle the error appropriately.
                // fatalError() causes the application to generate a crash log and terminate. You should not use this function in a shipping application, although it may be useful during development.
                let nserror = error as NSError
                fatalError("Unresolved error \(nserror), \(nserror.userInfo)")
            }
        }
    }

}

