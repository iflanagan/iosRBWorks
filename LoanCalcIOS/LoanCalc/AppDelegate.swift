//
//  AppDelegate.swift
//  LoanCalc
//

import UIKit
import Rollbar

@UIApplicationMain
class AppDelegate: UIResponder, UIApplicationDelegate {

    var window: UIWindow?

    func application(_ application: UIApplication, didFinishLaunchingWithOptions launchOptions: [UIApplication.LaunchOptionsKey: Any]?) -> Bool {
        
            // Override point for customization after application launch.
            // to obtain the Rollabr <post_client_item> login to the GUI (if project is setup) then click on settings and Access Tokens
        // if project is not setup use the token in the wizard
        
        let config: RollbarConfiguration = RollbarConfiguration()
           config.environment = "PROD"
           config.setServerHost("Ians-MacBook-Pro.local", root: "LoanCalc", branch: "my_branch",codeVersion: "1.2")
            Rollbar.initWithAccessToken("<post_client_item>",configuration: config)
            Rollbar.info(withMessage: "Test message to Rollbar")
            Rollbar.critical("test now")
            //Rest of your code here...
            return true
        }
 
    func applicationWillResignActive(_ application: UIApplication) {
        // Sent when the application is about to move from active to inactive state. This can occur for certain types of temporary interruptions (such as an incoming phone call or SMS message) or when the user quits the application and it begins the transition to the background state.
        // Use this method to pause ongoing tasks, disable timers, and invalidate graphics rendering callbacks. Games should use this method to pause the game.
        Rollbar.info("From applicationWillResignActive...")
    }


    func applicationDidEnterBackground(_ application: UIApplication) {
        // Use this method to release shared resources, save user data, invalidate timers, and store enough application state information to restore your application to its current state in case it is terminated later.
        // If your application supports background execution, this method is called instead of applicationWillTerminate: when the user quits.
        Rollbar.info("From applicationDidEnterBackground...")
    }

    func applicationWillEnterForeground(_ application: UIApplication) {
        // Called as part of the transition from the background to the active state; here you can undo many of the changes made on entering the background.
        Rollbar.info("From applicationWillEnterForeground...")
    }

    func applicationDidBecomeActive(_ application: UIApplication) {
        // Restart any tasks that were paused (or not yet started) while the application was inactive. If the application was previously in the background, optionally refresh the user interface.
        Rollbar.info("From applicationDidBecomeActive...")
    }

    func applicationWillTerminate(_ application: UIApplication) {
        // Called when the application is about to terminate. Save data if appropriate. See also applicationDidEnterBackground:.
        Rollbar.info("From applicationWillTerminate...")
    }
     
}


