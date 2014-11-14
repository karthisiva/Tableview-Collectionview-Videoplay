//
//  AppDelegate.swift
//  HelloSwift
//
//  Created by Subramani B R on 11/12/14.
//  Copyright (c) 2014 Subramani B R. All rights reserved.
//

import UIKit

@UIApplicationMain
class AppDelegate: UIResponder, UIApplicationDelegate {

    var window: UIWindow?


    func application(application: UIApplication, didFinishLaunchingWithOptions launchOptions: [NSObject: AnyObject]?) -> Bool
    {
        var comma:NSString!="2012345697851201"
        var get:NSString!
        var test :NSMutableArray = []
        var newArray :NSMutableArray = []

        var intValue :Int = comma.length
        if intValue>3
        {
            while intValue>0
            {
                if intValue>2
                {
                    get = comma .substringFromIndex(comma.length-3)
                    comma = comma.substringToIndex(comma.length-3)
                    test .addObject(get)
                    intValue = comma.length
                    
                }
                else
                {
                    get = comma .substringFromIndex(comma.length-intValue)
                    comma = comma.substringToIndex(comma.length-intValue)
                    test .addObject(get)
                    intValue = comma.length
                }
            }
            println(test)
            get=NSString()
            comma=NSString()
            var value :Int=test.count
            for var index = value-1; index >= 0; index--
            {
                
                comma=test .objectAtIndex(index) as NSString
                newArray.addObject(comma)
            }
            println(newArray)
            newArray.removeObject("")
            comma=NSString()
            comma=newArray.componentsJoinedByString(",")
            println(comma)
        }
        else
        {
            let myAlert = UIAlertView(title: "Comma",
                message: "Cannot Add",
                delegate: nil, cancelButtonTitle: "Ok")
            myAlert.show()

        }
        

        return true
    }

    func applicationWillResignActive(application: UIApplication) {
        // Sent when the application is about to move from active to inactive state. This can occur for certain types of temporary interruptions (such as an incoming phone call or SMS message) or when the user quits the application and it begins the transition to the background state.
        // Use this method to pause ongoing tasks, disable timers, and throttle down OpenGL ES frame rates. Games should use this method to pause the game.
    }

    func applicationDidEnterBackground(application: UIApplication) {
        // Use this method to release shared resources, save user data, invalidate timers, and store enough application state information to restore your application to its current state in case it is terminated later.
        // If your application supports background execution, this method is called instead of applicationWillTerminate: when the user quits.
    }

    func applicationWillEnterForeground(application: UIApplication) {
        // Called as part of the transition from the background to the inactive state; here you can undo many of the changes made on entering the background.
    }

    func applicationDidBecomeActive(application: UIApplication) {
        // Restart any tasks that were paused (or not yet started) while the application was inactive. If the application was previously in the background, optionally refresh the user interface.
    }

    func applicationWillTerminate(application: UIApplication) {
        // Called when the application is about to terminate. Save data if appropriate. See also applicationDidEnterBackground:.
    }


}

