//
// Created by SubaruShiozaki on 2019-07-30.
// Copyright (c) 2019 KazuyaTakahashi. All rights reserved.
//

import UIKit

import MaterialComponentsBeta.MaterialBottomNavigationBeta

class BottomNavigationBar: MDCBottomNavigationBarController {
  override func viewDidLoad() {
    super.viewDidLoad()
    self.navigationBar.alignment = .justifiedAdjacentTitles

    let flowLayout = UICollectionViewFlowLayout()
    flowLayout.estimatedItemSize = CGSize(width: 96, height: 48)

    let viewController1 = BottomNavigationControllerExampleScrollableChildViewController(collectionViewLayout: flowLayout)
//    viewController1.collectionView.backgroundColor = colorScheme.primaryColorVariant
    viewController1.tabBarItem = UITabBarItem(title: "Item 1", image: UIImage(named: "Home"), tag: 0)

    let viewController2 = BottomNavigationControllerExampleFixedChildViewController()

    viewController2.tabBarItem = UITabBarItem(title: "Item 2", image: UIImage(named: "Favorite"), tag: 1)

    let viewController3 = UIViewController()

    viewController3.tabBarItem = UITabBarItem(title: "Item 3", image: UIImage(named: "Search"), tag: 2)

    viewControllers = [ viewController1, viewController2, viewController3 ]

  }
}

class BottomNavigationControllerExampleScrollableChildViewController: UICollectionViewController {

  let numberOfItems = 200

  override func viewDidLoad() {
    super.viewDidLoad()

    collectionView.dataSource = self
    collectionView.register(UICollectionViewCell.self, forCellWithReuseIdentifier: "cell")

    if #available(iOS 11.0, *) {
      collectionView.contentInsetAdjustmentBehavior = .always
      collectionView.insetsLayoutMarginsFromSafeArea = true
    }
  }

  override func numberOfSections(in collectionView: UICollectionView) -> Int {
    return 1
  }

  override func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
    return numberOfItems
  }

  override func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
    let cell = collectionView.dequeueReusableCell(withReuseIdentifier: "cell", for: indexPath)
    let hue = CGFloat(indexPath.row) / CGFloat(numberOfItems)
    cell.backgroundColor = UIColor(hue: hue, saturation: 1, brightness: 1, alpha: 1)
    return cell
  }

  override var prefersStatusBarHidden: Bool {
    return true
  }

  override var preferredStatusBarStyle: UIStatusBarStyle {
    return .lightContent
  }

  override var prefersHomeIndicatorAutoHidden: Bool {
    return true
  }
}
