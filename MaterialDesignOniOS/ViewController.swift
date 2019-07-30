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
import MaterialComponents.MaterialButtons

class ViewController: UIViewController , MDCBottomNavigationBarDelegate {

    let bottomNavBar:MDCBottomNavigationBar = MDCBottomNavigationBar()
    let writeButton:MDCButton = MDCFloatingButton()

    override func viewDidLoad() {
        super.viewDidLoad()

        createBottomNavigationBar()
        bottomNavBar.delegate = self

//        view.addSubview(bottomNavBar)
//        createWriteButton()
//        view.addSubview(writeButton)
//
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
        let thirdTab = FirstTab()
        let forthTab = FirstTab()
        thirdTab.title = "thirdTab"
        forthTab.title = "forthTab"
        let test:UIViewController = TestViewController()
        test.tabBarItem.title = "test"

        bottomNavBar.items = [firstTab, secondTab, thirdTab, forthTab, test.tabBarItem]

        bottomNavBar.selectedItem = firstTab
        bottomNavBar.backgroundColor = .darkGray
        bottomNavBar.tintColor = .red
        bottomNavBar.selectedItemTintColor = .red
      
        // TODO: How to put the badges
        firstTab.accessibilityValue = "10 unread"
        firstTab.accessibilityLabel = "10"
    }



    private func createWriteButton() {

        writeButton.setTitle("+", for: .normal)
        // TODO To adjusting automatically for screen
        writeButton.setTitleFont(UIFont.systemFont(ofSize: 30), for: .normal)
        // TODO To set open WritingScreen function
//        writeButton.addTarget(#selector("Any"), action: <#T##Selector##ObjectiveC.Selector#>, for: <#T##Event##UIKit.UIControl.Event#>)
        writeButton.translatesAutoresizingMaskIntoConstraints = false
        view.addSubview(writeButton)
        writeButton.sizeToFit()
        writeButton.backgroundColor = .red
        writeButton.tintColor = .white
        // TODO put button right bottom or movable
        // TODO Or put it on the bottomNavBar
        writeButton.centerXAnchor.constraint(equalTo: self.view.centerXAnchor).isActive = true
        writeButton.centerYAnchor.constraint(equalTo: self.view.centerYAnchor).isActive = true
    }

    // TODO To put segue here
    func bottomNavigationBar(_ bottomNavigationBar: MDCBottomNavigationBar, didSelect item: UITabBarItem) {
        switch item.tag {
        case 1:
            print("1")
        default:
            print("default")
        }
    }
}


// TODO Create each VeiwClass and add it on delegate to rootview
