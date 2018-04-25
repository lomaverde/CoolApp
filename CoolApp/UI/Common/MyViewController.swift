//
//  MyViewController.swift
//  CoolApp
//
//  Created by Mei Yu on 4/23/18.
//  Copyright © 2018 Mei. All rights reserved.
//

import UIKit

class MyViewController: UIViewController {

    override func viewDidLoad() {
        let button: UIButton = UIButton(frame: CGRect(x: view.bounds.width / 2-50, y: view.bounds.height / 2, width: 100, height: 50))
        button.backgroundColor = UIColor.black
        button.addTarget(self, action: #selector(pushToNextVC), for: .touchUpInside)
        self.view.addSubview(button)
    }

    @objc func pushToNextVC() {
        let newVC = UIViewController()
        newVC.view.backgroundColor = UIColor.red
        self.navigationController?.pushViewController(newVC, animated:
            true)
    }
}

