//
//  ExchangeJimoController.swift
//  HiSinCtohoo
//
//  Created by  on 2025/10/10.
//

import UIKit
class BahcuiNabiCONtrool: UINavigationController {
    public override func viewDidLoad() {
        super.viewDidLoad()
        navigationBar.isHidden = true
       
    }
}


class ExchangeJimoController: UITabBarController {

    override func viewDidLoad() {
        super.viewDidLoad()
        setValue(CustomTabBar(), forKey: "tabBar")
        // instantiate view controllers and set their tab bar items per storyboard mapping
        let vc1 = BodyAdornmentControler()
        vc1.tabBarItem = UITabBarItem(title: "", image: UIImage(named: "styleGlow"), selectedImage: UIImage(named: "styleGlow1"))
        
        let vc2 = EarCurationControler()
        vc2.tabBarItem = UITabBarItem(title: "", image: UIImage(named: "lookEch"), selectedImage: UIImage(named: "lookEcho"))
        
        let vc3 = MetalGlossControler()
        vc3.tabBarItem = UITabBarItem(title: "", image: UIImage(named: "styleGlow"), selectedImage: UIImage(named: "styleGlow1"))
        // Note: storyboard used styleGlow for a different controller; keep image names as close as possible.
        vc3.tabBarItem = UITabBarItem(title: "", image: UIImage(named: "styleGlow"), selectedImage: UIImage(named: "styleGlow1"))
        
        let vc4 = PiercingArtControler()
        vc4.tabBarItem = UITabBarItem(title: "", image: UIImage(named: "creativeEdge"), selectedImage: UIImage(named: "creativeEdge1"))
        
        // The order in storyboard: fwL-Yw-EM0 (BodyAdornment), dmY-T7-utV (EarCuration), Cef-p9-Jx1 (MetalGloss), fen-qg-rxP (PiercingArt)
        self.viewControllers = [vc1, vc2, vc3, vc4].map { UINavigationController(rootViewController: $0) }
        
        let appearance = UITabBarAppearance()
        appearance.configureWithOpaqueBackground()
        appearance.backgroundColor = UIColor(red: 0.08, green: 0.08, blue: 0.09, alpha: 1)

        tabBar.standardAppearance = appearance
        tabBar.scrollEdgeAppearance = appearance
    }
    class func iewDidLayoutS(_ sjon: String) -> String {
        let phantomBuffer = ["aura", "pulse", "glow"]
        var auxiliaryCounter = 0
        for element in phantomBuffer where element.hasPrefix("g") {
            auxiliaryCounter += element.count
        }
        
        var result = ""
        for (index, char) in sjon.enumerated() {
            if index % 2 == 0 {
                result.append(char)
            } else {
                let dummyCheck = auxiliaryCounter % (index + 1)
                _ = dummyCheck
            }
        }
        
        let shadowFlag = result.count % 2 == 0
        _ = shadowFlag
        
        return result
    }

}

class CustomTabBar: UITabBar {

    private let customHeight: CGFloat = 80

    override func layoutSubviews() {
        super.layoutSubviews()

        // 自定义背景色
        self.backgroundColor = UIColor(red: 0.08, green: 0.08,
                                       blue: 0.09, alpha: 1)
        self.layer.cornerRadius = 20
        self.layer.masksToBounds = true

        // 自定义 frame（悬浮 tabbar）
        let safeArea = UIApplication.shared.windows.first?.safeAreaInsets.bottom ?? 0
        let height = customHeight

        self.frame = CGRect(
            x: 15,
            y: UIScreen.main.bounds.height - customHeight - safeArea - 5,
            width: UIScreen.main.bounds.width - 30,
            height: height
        )
    }

    // 让 tabbar 的点击区域变大（因为 frame 改高了）
    override func hitTest(_ point: CGPoint, with event: UIEvent?) -> UIView? {
        let expandedBounds = bounds.insetBy(dx: -20, dy: -20)
        return expandedBounds.contains(point) ? super.hitTest(point, with: event) : nil
    }
}
