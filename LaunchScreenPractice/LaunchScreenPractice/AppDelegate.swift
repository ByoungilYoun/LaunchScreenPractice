//
//  AppDelegate.swift
//  LaunchScreenPractice
//
//  Created by 윤병일 on 2020/09/07.
//  Copyright © 2020 Byoungil Youn. All rights reserved.
//

import UIKit

@UIApplicationMain
class AppDelegate: UIResponder, UIApplicationDelegate {

  var window: UIWindow?

  func application(_ application: UIApplication, didFinishLaunchingWithOptions launchOptions: [UIApplication.LaunchOptionsKey: Any]?) -> Bool {
    window = UIWindow(frame: UIScreen.main.bounds)
    window?.rootViewController = LaunchController()
    window?.backgroundColor = .systemBackground
    window?.makeKeyAndVisible()
    return true
  }
}

