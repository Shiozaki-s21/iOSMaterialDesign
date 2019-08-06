//
// Created by SubaruShiozaki on 2019-08-01.
// Copyright (c) 2019 KazuyaTakahashi. All rights reserved.
//

import UIKit
import MaterialComponents.MDCBottomNavigationBar
import MaterialComponentsBeta.MaterialBottomNavigationBeta

class BottomNavigationBarContainerViewController:MDCBottomNavigationBar {
  
  override init(frame: CGRect) {
    super.init(frame: frame)
    
    self.sizeThatFitsIncludesSafeArea = false
    let size = self.sizeThatFits(frame.size)
    var bottomNavBarFrame = CGRect(x: 0, y: frame.height - size.height, width: size.width, height: size.height)

    if #available(iOS 11.0, *) {
      //TODO Have to take safeAreaInstances somehow
//      bottomNavBarFrame.size.height += self.window!.safeAreaInsets.bottom
//      bottomNavBarFrame.origin.y -= self.window!.safeAreaInsets.bottom
    }

    self.frame = bottomNavBarFrame

    self.backgroundColor = .darkGray
    self.tintColor = .red
    self.selectedItemTintColor = .red
    self.selectedItem = self.items.first
    
  }
  
  required init?(coder aDecoder: NSCoder) {
    fatalError("init(coder:) has not been implemented")
  }

  override func view(for item: UITabBarItem) -> UIView? {
    switch item.tag {
    case 1:
      // TODO: To segue to Tab1 viewController
      print("1")
      // Segueing to FirstTabViewController
      let firstTabViewController = FirstTabViewController()
      return firstTabViewController.view

    case 2:
      // TODO: To segue to Tab1 viewController
      print("2")
      let secondTaViewController = SecondTabViewController()
      self.window!.rootViewController?.present(secondTaViewController, animated: true)

    default:
      print("default")
    }
    return super.view(for: item)
  }
}
