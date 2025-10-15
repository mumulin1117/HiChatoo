//
//  ExchangeJimoController.swift
//  HiSinCtohoo
//
//  Created by  on 2025/10/10.
//

import UIKit

class ExchangeJimoController: UITabBarController {

    override func viewDidLoad() {
        super.viewDidLoad()
        super.viewDidLayoutSubviews()
        self.tabBar.layer.cornerRadius = 15
        self.tabBar.layer.masksToBounds = true
        self.tabBar.frame = CGRect.init(x: 20, y:UIScreen.main.bounds.height - 80 - 30 , width: UIScreen.main.bounds.width - 40, height: 80)
    }
    
}
