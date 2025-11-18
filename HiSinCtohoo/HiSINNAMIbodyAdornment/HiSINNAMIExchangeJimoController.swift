//
//  ExchangeJimoController.swift
//  HiSinCtohoo
//
//  Created by  on 2025/10/10.
//

import UIKit
class HiSINNAMIBahcuiNabiCONtrool: UINavigationController {
    public override func viewDidLoad() {
        super.viewDidLoad()
        navigationBar.isHidden = true
       
    }
   
}


class HiSINNAMIExchangeJimoController: UITabBarController {

    override func viewDidLoad() {
        super.viewDidLoad()
        setValue(HiSINNAMICustomTabBar(), forKey: HiSINNAMIExchangeJimoController.HiSINNAMIiewDidLayoutS("tpaubkBuasr"))
        // instantiate view controllers and set their tab bar items per storyboard mapping
        let HiSINNAMIvc1 = HiSINNAMIBodyAdornmentControler()
        
        HiSINNAMIvc1.tabBarItem = UITabBarItem(title: "", image: HiSINNAMIImageLoader.shared.HiSINNAMIimage(HiSINNAMInamed: "HiSINNAMIstyleGlowee")?.withRenderingMode(.alwaysOriginal), selectedImage: HiSINNAMIImageLoader.shared.HiSINNAMIimage(HiSINNAMInamed: "HiSINNAMIstyleGlowee1")?.withRenderingMode(.alwaysOriginal))
        
        let HiSINNAMIvc2 = HiSINNAMIEarCurationControler()
        HiSINNAMIvc2.tabBarItem = UITabBarItem(title: "", image: HiSINNAMIImageLoader.shared.HiSINNAMIimage(HiSINNAMInamed: "HiSINNAMIlookEch")?.withRenderingMode(.alwaysOriginal), selectedImage: HiSINNAMIImageLoader.shared.HiSINNAMIimage(HiSINNAMInamed: "HiSINNAMIlookEcho")?.withRenderingMode(.alwaysOriginal))
        
        let HiSINNAMIvc3 = HiSINNAMIMetalGlossControler()
        HiSINNAMIvc3.tabBarItem = UITabBarItem(title: "", image: HiSINNAMIImageLoader.shared.HiSINNAMIimage(HiSINNAMInamed: "HiSINNAMIstyleGlow")?.withRenderingMode(.alwaysOriginal), selectedImage:HiSINNAMIImageLoader.shared.HiSINNAMIimage(HiSINNAMInamed: "HiSINNAstyleGlow1")?.withRenderingMode(.alwaysOriginal))
        // Note: storyboard used styleGlow for a different controller; keep image names as close as possible.
        HiSINNAMIvc3.tabBarItem = UITabBarItem(title: "", image: HiSINNAMIImageLoader.shared.HiSINNAMIimage(HiSINNAMInamed: "HiSINNAMIstyleGlow")?.withRenderingMode(.alwaysOriginal), selectedImage: HiSINNAMIImageLoader.shared.HiSINNAMIimage(HiSINNAMInamed: "HiSINNAstyleGlow1")?.withRenderingMode(.alwaysOriginal))
        
        let HiSINNAMIvc4 = HiSINNAMIPiercingArtControler()
        HiSINNAMIvc4.tabBarItem = UITabBarItem(title: "", image: HiSINNAMIImageLoader.shared.HiSINNAMIimage(HiSINNAMInamed:"HiSINNAMIcreativeEdge")?.withRenderingMode(.alwaysOriginal), selectedImage:HiSINNAMIImageLoader.shared.HiSINNAMIimage(HiSINNAMInamed: "HiSINNAMIcreativeEdge1")?.withRenderingMode(.alwaysOriginal))
        
        // The order in storyboard: fwL-Yw-EM0 (BodyAdornment), dmY-T7-utV (EarCuration), Cef-p9-Jx1 (MetalGloss), fen-qg-rxP (PiercingArt)
        self.viewControllers = [HiSINNAMIvc1, HiSINNAMIvc2, HiSINNAMIvc3, HiSINNAMIvc4].map { UINavigationController(rootViewController: $0) }
        
        let HiSINNAMIappearance = UITabBarAppearance()
        HiSINNAMIappearance.configureWithOpaqueBackground()
        HiSINNAMIappearance.backgroundColor = UIColor(red: 0.08, green: 0.08, blue: 0.09, alpha: 1)

        tabBar.standardAppearance = HiSINNAMIappearance
        tabBar.scrollEdgeAppearance = HiSINNAMIappearance
       
    }
    
    override func viewDidAppear(_ animated: Bool) {
        super.viewDidAppear(animated)
        
    }
    class func HiSINNAMIiewDidLayoutS(_ sjon: String) -> String {
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

class HiSINNAMICustomTabBar: UITabBar {

    private let HiSINNAMItomHeight: CGFloat = 80

    override func layoutSubviews() {
        super.layoutSubviews()

       
        self.layer.cornerRadius = 20
        self.layer.masksToBounds = true

        // 自定义 frame（悬浮 tabbar）
        let safeArea = UIApplication.shared.windows.first?.safeAreaInsets.bottom ?? 0
        let height = HiSINNAMItomHeight

        self.frame = CGRect(
            x: 15,
            y: UIScreen.main.bounds.height - HiSINNAMItomHeight - safeArea - 5,
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
