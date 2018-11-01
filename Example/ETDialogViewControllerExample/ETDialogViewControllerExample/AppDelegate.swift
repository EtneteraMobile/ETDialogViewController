//
//  AppDelegate.swift
//  ETDialogViewControllerExample
//
//  Created by Beles on 17/08/2018.
//  Copyright © 2018 Beles. All rights reserved.
//

import UIKit
import ETDialogViewController

@UIApplicationMain
class AppDelegate: UIResponder, UIApplicationDelegate {

    var window: UIWindow?


    func application(_ application: UIApplication, didFinishLaunchingWithOptions launchOptions: [UIApplicationLaunchOptionsKey: Any]?) -> Bool {
        window = UIWindow(frame: UIScreen.main.bounds)
        let homeViewController = HomeViewController()
        window!.rootViewController = homeViewController
        window!.makeKeyAndVisible()

        let style = DialogStyleConfig()

        let dialogTitleStyle = DialogTitleStyleConfig(font: UIFont.boldSystemFont(ofSize: 26), color: UIColor(red: 78/255, green: 205/255, blue: 196/255, alpha: 1))
        let buttonStyle = ButtonStyleConfig(backgroundColor: UIColor(red: 85/255, green: 98/255, blue: 112/255, alpha: 1),
                                            normalStyle: ButtonTitleConfig(color: .custom(value: UIColor(red: 1, green: 107/255, blue: 107/255, alpha: 1))),
                                            preferredStyle: ButtonTitleConfig(color: .custom(value: UIColor(red: 199/255, green: 244/255, blue: 100/255, alpha: 1))),
                                            borderColor: UIColor(red: 116/255, green: 133/255, blue: 153/255, alpha: 1))

        let style2 = DialogStyleConfig(backgroundColor: UIColor(red: 85/255, green: 98/255, blue: 112/255, alpha: 1),
                                       opacity: 1,
                                       cornerRadius: 30,
                                    blurEffect: UIBlurEffect(style: .extraLight), titleStyle: dialogTitleStyle, buttonStyle: buttonStyle)


        let dialogTitleStyle2 = DialogTitleStyleConfig(font: UIFont.boldSystemFont(ofSize: 20), color: UIColor(red: 0, green: 106/255, blue: 176/255, alpha: 1))
        let buttonStyle2 = ButtonStyleConfig(backgroundColor: UIColor(red: 217/255, green: 206/255, blue: 178/255, alpha: 1),
                                            borderColor: UIColor(red: 148/255, green: 140/255, blue: 117/255, alpha: 1))

        let style3 = DialogStyleConfig(backgroundColor: UIColor(red: 217/255, green: 206/255, blue: 178/255, alpha: 1),
                                       opacity: 1,
                                       cornerRadius: 10,
                                       blurEffect: UIBlurEffect(style: .dark), titleStyle: dialogTitleStyle2, buttonStyle: buttonStyle2)

        let alertViewController = AlertViewController3(style: style3)
        alertViewController.modalPresentationStyle = .overCurrentContext
        homeViewController.present(alertViewController, animated: true, completion: nil)

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


}

