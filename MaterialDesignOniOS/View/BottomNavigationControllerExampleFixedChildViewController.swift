//
// Created by SubaruShiozaki on 2019-08-05.
// Copyright (c) 2019 KazuyaTakahashi. All rights reserved.
//

import UIKit

class BottomNavigationControllerExampleFixedChildViewController: UIViewController {

  override func viewDidLoad() {
    super.viewDidLoad()

  }

  override var prefersHomeIndicatorAutoHidden: Bool {
    return false
  }
  override var preferredStatusBarStyle: UIStatusBarStyle {
    return .default
  }
  override var prefersStatusBarHidden: Bool {
    return false
  }
}
