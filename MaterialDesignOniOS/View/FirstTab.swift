//
//  FirstTab.swift
//  MaterialDesignOniOS
//
//  Created by SubaruShiozaki on 2019-07-29.
//  Copyright © 2019 KazuyaTakahashi. All rights reserved.
//

import UIKit

class FirstTab: UITabBarItem {

  override init() {
    super.init()
    self.title = "FirstTab"
    self.image = UIImage(named: "star")
    self.tag = 1
  }

  required init?(coder aDecoder: NSCoder) {
    fatalError("init(coder:) has not been implemented")
  }


}
