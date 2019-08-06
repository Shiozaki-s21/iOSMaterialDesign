//
//  SecondTab.swift
//  MaterialDesignOniOS
//
//  Created by SubaruShiozaki on 2019-07-29.
//  Copyright © 2019 KazuyaTakahashi. All rights reserved.
//

import UIKit

class SecondTab: UITabBarItem {
  override init() {
    super.init()

    self.title = "SecondTab"
    self.image = UIImage(named: "face")
    self.tag = 2
  }

  required init?(coder aDecoder: NSCoder) {
    super.init(coder: aDecoder)
  }
}
