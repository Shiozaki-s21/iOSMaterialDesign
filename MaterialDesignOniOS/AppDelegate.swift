//
//  AppDelegate.swift
//  MaterialDesignOniOS
//
//  Created by SubaruShiozaki on 2019-07-25.
//  Copyright © 2019 KazuyaTakahashi. All rights reserved.
//

import UIKit
import MaterialComponents.MDCBottomNavigationBar

@UIApplicationMain
class AppDelegate: UIResponder, UIApplicationDelegate, MDCBottomNavigationBarDelegate {

  var window: UIWindow?

  var bottomNavigationBar: BottomNavigationBarContainerViewController = BottomNavigationBarContainerViewController()
  let test = UIViewController()
  // TODO:Test
  var navb:BottomNavigationBarContainerViewController = BottomNavigationBarContainerViewController()

  func application(_ application: UIApplication, didFinishLaunchingWithOptions launchOptions: [UIApplication.LaunchOptionsKey: Any]?) -> Bool {

    self.window = UIWindow(frame: UIScreen.main.bounds)
    // ViewControllerをインスタンス化、windowのrootに設定する

    navb =  BottomNavigationBarContainerViewController(frame: test.view.bounds)
    navb.items = [FirstTab(), SecondTab()]
    test.view.addSubview(navb)
    test.view.backgroundColor = .white

    // 作ったControllerの中で遷移する？？？
    // TODO To download sample from material ios
    
    self.window!.rootViewController = test

    bottomNavigationBar.items = [FirstTab(), SecondTab()]
    let bottomNav = BottomNavigationBar()
    self.window!.rootViewController? = bottomNav

//    createBottomNavigationBar()
//    navb.delegate = self

    self.window!.makeKeyAndVisible()

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


  private func createBottomNavigationBar() {

    bottomNavigationBar.sizeThatFitsIncludesSafeArea = false
    let size = bottomNavigationBar.sizeThatFits(self.window!.bounds.size)
    var bottomNavBarFrame = CGRect(x: 0, y: self.window!.bounds.height - size.height, width: size.width, height: size.height)
    if #available(iOS 11.0, *) {
    bottomNavBarFrame.size.height += self.window!.safeAreaInsets.bottom
    bottomNavBarFrame.origin.y -= self.window!.safeAreaInsets.bottom
  }

    bottomNavigationBar.frame = bottomNavBarFrame

    bottomNavigationBar.backgroundColor = .darkGray
    bottomNavigationBar.tintColor = .red
    bottomNavigationBar.selectedItemTintColor = .red

    let firstTab = FirstTab()
    let secondTab = SecondTab()

    bottomNavigationBar.items = [firstTab, secondTab]

    bottomNavigationBar.selectedItem = firstTab
  }

  func bottomNavigationBar(_ bottomNavigationBar: MDCBottomNavigationBar, didSelect item: UITabBarItem) {
    switch item.tag {
    case 1:
      // TODO: To segue to Tab1 viewController
      print("1")

      

        let firstTabViewController = FirstTabViewController()
        self.window!.rootViewController?.present(firstTabViewController, animated: true)

    case 2:
      // TODO: To segue to Tab1 viewController
      print("2")
      let secondTaViewController = SecondTabViewController()
//      self.window!.rootViewController?

    default:
      print("default")
    }
  }
}
