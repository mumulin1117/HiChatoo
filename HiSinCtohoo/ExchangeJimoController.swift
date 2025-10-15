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

//        setupCustomTabBarInsets()
    }
    
}
extension UITabBarController {
    func setupCustomTabBarInsets() {
        
        // 移除默认约束
        self.tabBar.removeConstraints(self.tabBar.constraints)
        
        // 添加自定义约束
        self.tabBar.translatesAutoresizingMaskIntoConstraints = false
        NSLayoutConstraint.activate([
            self.tabBar.leadingAnchor.constraint(equalTo: view.leadingAnchor, constant: 12),
            self.tabBar.trailingAnchor.constraint(equalTo: view.trailingAnchor, constant: -12),
            self.tabBar.bottomAnchor.constraint(equalTo: view.safeAreaLayoutGuide.bottomAnchor, constant: -25),
            self.tabBar.heightAnchor.constraint(equalToConstant: 60)
        ])
    }
}
