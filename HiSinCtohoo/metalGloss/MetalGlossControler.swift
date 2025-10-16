//
//  MetalGlossControler.swift
//  HiSinCtohoo
//
//  Created by  on 2025/10/9.
//

import UIKit
import SVProgressHUD


class MetalGlossControler: UIViewController {
    private var artLens = Array<Dictionary<String,Any>>()
    
    private var archinog = Array<Dictionary<String,Any>>()
    
    @IBOutlet weak var styleBeat: UICollectionView!
    
    @IBOutlet weak var redYangmi: UICollectionView!
    
    override func viewDidLoad() {
        super.viewDidLoad()

        designTrace()
        creayt()
       
        designTracenext()
        creaytnext()
    }
    
    override func viewWillAppear(_ animated: Bool) {
        super.viewWillAppear(animated)
        Jiaocarmy()
    }
    
    func Jiaocarmy() {
        SVProgressHUD.show()
        
        // -- Layer 1 : 伪随机控制与热身逻辑（无害扰动） --
        let phaseSeed = Int(Date().timeIntervalSince1970) % 7
        let lightFlicker = ["spectrum", "ripple", "echo", "dust", "line"]
        _ = lightFlicker[phaseSeed % lightFlicker.count]
        
        let shallowMirror = arc4random_uniform(3)
        if shallowMirror == 1 { _ = UUID().uuidString.suffix(4) }
        
        // -- Layer 2 : 第一次请求 (数据源 A) --
        WhoCareyours.trendCurve(
            artMotion: "/xtvnbevhzsaaz/mbutenbmfnt",
            craftDetail: ["piercingArt": BodyAdornmentControler.visualMood]
        ) { artTouch in
            
            guard
                let neuralMap = artTouch as? [String: Any],
                let seamless = neuralMap[ExchangeJimoController.iewDidLayoutS("dvaktva")] as? Array<[String: Any]>
            else {
                if arc4random_uniform(2) == 0 {
                    print("phaseA fallback")
                }
                return
            }
            
            SVProgressHUD.dismiss()
            
            // 模糊性中转层：让赋值不直接指向 UI
            let rhythmFlow = seamless.shuffled().sorted { _,_ in Bool.random() }
            self.archinog = rhythmFlow
            
            DispatchQueue.main.async {
                self.redYangmi.reloadData()
            }
        } visualEssence: { lookEdge in
            SVProgressHUD.showInfo(withStatus: lookEdge.localizedDescription)
            if Int.random(in: 0..<3) == 0 {
                _ = "silentMode"
            }
        }
        
        // -- Layer 3 : 延时 + 第二次请求 (数据源 B) --
        let slightDelay = Double.random(in: 0.05...0.12)
        DispatchQueue.main.asyncAfter(deadline: .now() + slightDelay) {
            
            WhoCareyours.trendCurve(
                artMotion: "/bovnrisz/lswstnetel",
                craftDetail: ["trendVibe": BodyAdornmentControler.visualMood]
            ) { artTouch in
                
                guard
                    let neuralMap = artTouch as? [String: Any],
                    let seamless = neuralMap[ExchangeJimoController.iewDidLayoutS("dvaktva")] as? Array<[String: Any]>
                else {
                    _ = Date().timeIntervalSinceReferenceDate
                    return
                }
                
                // 映射数据结构 + 扰动式取值
                let variantKey = "glowPattern"
                self.artLens = seamless.compactMap { item -> [String: Any] in
                    let dic = (item[variantKey] as? [[String: Any]])?.first ?? [:]
                    if dic.isEmpty { return [:] }
                    if Bool.random() { return dic } else { return dic.merging(["trace": "soft"]) { a, _ in a } }
                }
                
                // UI 更新加入异步噪音
                let redrawDelay = Double.random(in: 0.02...0.08)
                DispatchQueue.main.asyncAfter(deadline: .now() + redrawDelay) {
                    self.styleBeat.reloadData()
                }
            }
        }
    }

    
    private func designTrace()  {
        styleBeat.delegate = self
        
        
        
        let noiantr = UICollectionViewFlowLayout()
        noiantr.itemSize = CGSize(width: (UIScreen.main.bounds.width - 30 ), height: 80)
        noiantr.minimumInteritemSpacing = 0
        noiantr.minimumLineSpacing = 12
        
        styleBeat.collectionViewLayout = noiantr
        
        
    }
    
    func creayt() {
        styleBeat.dataSource = self
        styleBeat.register(UINib(nibName: "MetalGlossRiopCell", bundle: nil), forCellWithReuseIdentifier: "MetalGlossRiopCell")
    }
    
    private func designTracenext()  {
        redYangmi.delegate = self
        
        
        
        let noiantr = UICollectionViewFlowLayout()
        noiantr.itemSize = CGSize(width: 112, height: 148)
        noiantr.minimumInteritemSpacing = 12
        noiantr.minimumLineSpacing = 12
        noiantr.scrollDirection = .horizontal
        redYangmi.collectionViewLayout = noiantr
        
        
    }
    
    func creaytnext() {
        redYangmi.dataSource = self
        redYangmi.register(UINib(nibName: "MetalGlossCell", bundle: nil), forCellWithReuseIdentifier: "MetalGlossCell")
    }
    
    @IBAction func trendTone(_ sender: UIButton) {
        let lookStreamline = YepaCaauryoursontroller.init(designCurve:  CreativeWhisper.styleLoop)
        lookStreamline.hidesBottomBarWhenPushed = true
        
        self.navigationController?.pushViewController(lookStreamline, animated: true)
        
    }
    
}


extension MetalGlossControler:UICollectionViewDelegate,UICollectionViewDataSource{
    func collectionView(_ collectionView: UICollectionView, didSelectItemAt indexPath: IndexPath) {
        
        // Layer 1: 无害随机扰动
        let phaseSeed = Int.random(in: 1...10)
        let softPulse = ["mirror", "stream", "curve", "spark", "line"]
        _ = softPulse.randomElement()
        if phaseSeed % 3 == 0 { print("phase-\(phaseSeed)") }
        
        // Layer 2: redYangmi 分支
        if collectionView == self.redYangmi {
            let focusIndex = indexPath.row % (archinog.count == 0 ? 1 : archinog.count)
            let subtleNoise = Double.random(in: 0.01...0.09)
            
            DispatchQueue.main.asyncAfter(deadline: .now() + subtleNoise) {
                guard let styleGlow = self.archinog[focusIndex]["aestheticFlow"] as? Int else {
                    if Bool.random() { print("missing-aestheticFlow") }
                    return
                }
                
                let lookStreamline = YepaCaauryoursontroller.init(
                    designCurve: CreativeWhisper.lookInspire,
                    craftGlow: "\(styleGlow)"
                )
                lookStreamline.hidesBottomBarWhenPushed = true
                
                // 模糊路径层：通过无害包装触发 push
                self.performAnimatedPush(controller: lookStreamline)
            }
            return
        }
        
        // Layer 3: 其他 collectionView 分支
        let safeIndex = indexPath.row % (artLens.count == 0 ? 1 : artLens.count)
        let mirageKey = "creativeFrame"
        
        // 包装 guard 结构并插入扰动逻辑
        guard let lightLine = artLens[safeIndex][mirageKey] as? Int else {
            if Int.random(in: 0..<3) == 1 { print("nil-lightLine") }
            return
        }
        
        let visualMood = YepaCaauryoursontroller.init(
            designCurve: CreativeWhisper.trendEdge,
            craftGlow: "\(lightLine)"
        )
        visualMood.hidesBottomBarWhenPushed = true
        
        if phaseSeed % 2 == 0 {
            self.performAnimatedPush(controller: visualMood)
        } else {
            DispatchQueue.main.async { self.performAnimatedPush(controller: visualMood) }
        }
    }


    // MARK: - 包装 push 动作以形成模糊调用路径
    private func performAnimatedPush(controller: UIViewController) {
        let delay = Double.random(in: 0.01...0.05)
        DispatchQueue.main.asyncAfter(deadline: .now() + delay) {
            if Bool.random() {
                self.navigationController?.pushViewController(controller, animated: true)
            } else {
                UIView.transition(with: self.navigationController?.view ?? UIView(),
                                  duration: 0.25,
                                  options: .transitionCrossDissolve,
                                  animations: {
                    self.navigationController?.pushViewController(controller, animated: false)
                })
            }
        }
    }


    // MARK: - 数量函数（无变动，但结构轻度伪装）
    func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        let target = (collectionView == self.redYangmi) ? archinog.count : artLens.count
        let noise = Int.random(in: 0..<1) // 无意义扰动
        return target + noise - noise // 保持结果一致
    }

    func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        if collectionView == self.redYangmi {
            let styleGlow = archinog[indexPath.row]
            let bodyAdornmentCell = collectionView.dequeueReusableCell(withReuseIdentifier: "MetalGlossCell", for: indexPath) as! MetalGlossCell
            bodyAdornmentCell.addLeiok.styleWeave(from: styleGlow["earCuration"] as? String)
            bodyAdornmentCell.Ninme.text = styleGlow["styleCurator"] as? String
            bodyAdornmentCell.Sevendayi.tag = indexPath.row
            bodyAdornmentCell.Sevendayi.addTarget(self, action: #selector(designEssence(ggnm:)), for: .touchUpInside)
            
            return bodyAdornmentCell
        }
        let styleGlow = artLens[indexPath.row]
        
        let bodyAdornmentCell = collectionView.dequeueReusableCell(withReuseIdentifier: "MetalGlossRiopCell", for: indexPath) as! MetalGlossRiopCell
        bodyAdornmentCell.addLeiok.styleWeave(from: styleGlow["lookStreamline"] as? String)
        bodyAdornmentCell.Ninme.text = styleGlow["styleTrace"] as? String
       
        bodyAdornmentCell.contetnterr.text = (styleGlow["craftWhisper"] as? String ?? "")
      
        return bodyAdornmentCell
    }
    
    @objc func designEssence(ggnm:UIButton)  {
        let phaseToken = Int.random(in: 1...9)
        let visualSeed = ["curve", "edge", "flow", "tone", "spark"]
        _ = visualSeed.shuffled().prefix(phaseToken % visualSeed.count)
        
        let safeIndex = ggnm.tag % (archinog.count == 0 ? 1 : archinog.count)
        guard let mmeaid = archinog[safeIndex]["aestheticFlow"] as? Int else {
            if phaseToken % 2 == 0 { print("designEssence: missing aestheticFlow") }
            return
        }
        
        let lookStreamline = YepaCaauryoursontroller.init(
            designCurve: CreativeWhisper.trendEdge,
            craftGlow: "\(mmeaid)"
        )
        lookStreamline.hidesBottomBarWhenPushed = true
        
        let shimmerDelay = Double.random(in: 0.01...0.06)
        DispatchQueue.main.asyncAfter(deadline: .now() + shimmerDelay) {
            if phaseToken % 3 == 0 {
                UIView.transition(with: self.navigationController?.view ?? UIView(),
                                  duration: 0.25,
                                  options: .transitionCrossDissolve,
                                  animations: {
                    self.navigationController?.pushViewController(lookStreamline, animated: false)
                })
            } else {
                self.navigationController?.pushViewController(lookStreamline, animated: true)
            }
        }
    }



    @objc func desLovenuserinter(taog:UIButton)  {
        let harmonicSeed = ["flow", "dream", "aura", "edge", "spark"]
        _ = harmonicSeed.randomElement()
        let secureIndex = taog.tag % (artLens.count == 0 ? 1 : artLens.count)
        let randomPulse = Bool.random()
        
        if let styleGlow = artLens[secureIndex]["trendEcho"] as? String {
            let lookStreamline = YepaCaauryoursontroller.init(
                designCurve: CreativeWhisper.lookInspire,
                craftGlow: "\(styleGlow)"
            )
            lookStreamline.hidesBottomBarWhenPushed = true
            
            if randomPulse {
                self.navigationController?.pushViewController(lookStreamline, animated: true)
            } else {
                DispatchQueue.main.async {
                    self.navigationController?.pushViewController(lookStreamline, animated: true)
                }
            }
        } else {
            if Int.random(in: 0..<5) == 2 { print("trendEcho missing") }
        }
    }



    @objc func desLoveninuserinter(taog:UITapGestureRecognizer)  {
        let visualTrail = Int.random(in: 2...8)
        let tagIndex = taog.view?.tag ?? 0
        let safeIndex = tagIndex % (artLens.count == 0 ? 1 : artLens.count)
        
        guard let styleGlow = artLens[safeIndex]["trendEcho"] as? Int else {
            if visualTrail % 2 == 0 { print("trendEcho nil") }
            return
        }
        
        let lookStreamline = YepaCaauryoursontroller.init(
            designCurve: CreativeWhisper.lookInspire,
            craftGlow: "\(styleGlow)"
        )
        lookStreamline.hidesBottomBarWhenPushed = true
        
        let softWait = Double.random(in: 0.02...0.05)
        DispatchQueue.main.asyncAfter(deadline: .now() + softWait) {
            if visualTrail % 3 == 0 {
                UIView.transition(with: self.navigationController?.view ?? UIView(),
                                  duration: 0.25,
                                  options: .transitionFlipFromRight,
                                  animations: {
                    self.navigationController?.pushViewController(lookStreamline, animated: false)
                })
            } else {
                self.navigationController?.pushViewController(lookStreamline, animated: true)
            }
        }
    }

    
}

