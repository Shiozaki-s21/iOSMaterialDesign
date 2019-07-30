//
//  ViewController.swift
//  MaterialDesignOniOS
//
//  Created by SubaruShiozaki on 2019-07-25.
//  Copyright © 2019 KazuyaTakahashi. All rights reserved.
//

import UIKit

// Material Components
import MaterialComponents.MaterialBottomNavigation

class ViewController: UIViewController {

    let bottomNavBar:MDCBottomNavigationBar = MDCBottomNavigationBar()

    override func viewDidLoad() {
        super.viewDidLoad()

        createBottomNavigationBar()
        view.addSubview(bottomNavBar)

    }

    private func createBottomNavigationBar() {
        bottomNavBar.sizeThatFitsIncludesSafeArea = false
        let size = bottomNavBar.sizeThatFits(view.bounds.size)
        var bottomNavBarFrame = CGRect(x: 0, y: view.bounds.height - size.height, width: size.width, height: size.height)
        if #available(iOS 11.0, *) {
            bottomNavBarFrame.size.height += view.safeAreaInsets.bottom
            bottomNavBarFrame.origin.y -= view.safeAreaInsets.bottom
        }

        bottomNavBar.frame = bottomNavBarFrame

        let firstTab = FirstTab()
        let secondTab = SecondTab()
        firstTab.title = "FirstTab"
        firstTab.accessibilityLabel = "FirstTab"
        firstTab.tag = 1
        firstTab.image = UIImage(named: "star")
        secondTab.title = "SecondTab"
        secondTab.tag = 2
        secondTab.image = UIImage(named: "face")
        bottomNavBar.items = [firstTab, secondTab]
        bottomNavBar.selectedItem = firstTab
        bottomNavBar.backgroundColor = .darkGray
        bottomNavBar.tintColor = .red
        bottomNavBar.selectedItemTintColor = .red
      
        // TODO: How to put the badges
        firstTab.accessibilityValue = "10 unread"
        firstTab.accessibilityLabel = "10"

        
    }
}
