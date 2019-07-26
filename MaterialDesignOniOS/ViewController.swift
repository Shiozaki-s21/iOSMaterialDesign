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

        bottomNavBar.acc
    }
}
