//
//  AppDelegate.swift
//  Parstagram-CodePath
//
//  Created by Vasant Saladi on 10/14/22.
//

import UIKit
import Parse

@main
class AppDelegate: UIResponder, UIApplicationDelegate {

    var window: UIWindow?

    func application(_ application: UIApplication, didFinishLaunchingWithOptions launchOptions: [UIApplication.LaunchOptionsKey: Any]?) -> Bool {
        
        // Override point for customization after application launch.
        
        let parseConfig = ParseClientConfiguration {
            $0.applicationId = "95qhp6FYHqETr57SV9UiE8MA1HVIMqtw4oCl02Dg" // <- UPDATE
            $0.clientKey = "coWU840l93mneZhrRIVUFnTQznCG046lIofNDjgi" // <- UPDATE
            $0.server = "https://parseapi.back4app.com"
        }
        
        Parse.initialize(with: parseConfig)

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

