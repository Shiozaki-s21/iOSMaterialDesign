//
//  FirstTabViewController.swift
//  MaterialDesignOniOS
//
//  Created by SubaruShiozaki on 2019-07-30.
//  Copyright © 2019 KazuyaTakahashi. All rights reserved.
//

import UIKit

class FirstTabViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()

        self.view.backgroundColor = .green

        let label:UILabel = UILabel()
        label.translatesAutoresizingMaskIntoConstraints = false
        view.addSubview(label)
        label.text = "FirstTab"
        label.centerXAnchor.constraint(equalTo: view.centerXAnchor).isActive = true
        label.centerYAnchor.constraint(equalTo: view.centerYAnchor).isActive = true
    }


    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
    }

}
