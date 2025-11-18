//
//  HiSINNAMIMetalGlossControler.swift
//  HiSinCtohoo
//
//  Created by  on 2025/10/9.
//

import UIKit



class HiSINNAMIMetalGlossControler: UIViewController {
    private var HiSINNAMIartLens = Array<Dictionary<String,Any>>()
    
    private var HiSINNAMIarchinog = Array<Dictionary<String,Any>>()
    
    public var HiSINNAMIredYangmi: UICollectionView!
        public var HiSINNAMIstyleBeat: UICollectionView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        HiSINNAMIsetupViews()
        HiSINNAMIdesignTrace()
        HiSINNAMIcreayt()
       
        HiSINNAMIdesignTracenext()
        HiSINNAMIcreaytnext()
    }
    private let HiSINNAMIbgImageView: UIImageView = {
        let iv = UIImageView(image:HiSINNAMIImageLoader.HiSINNAMIshared.HiSINNAMIimage(HiSINNAMInamed: "HiSINNAMIbodyEssence"))
            iv.translatesAutoresizingMaskIntoConstraints = false
            iv.contentMode = .scaleAspectFill
            iv.clipsToBounds = true
            iv.isUserInteractionEnabled = false
            return iv
        }()
        private let HiSINNAMItitleLabel: UILabel = {
            let l = UILabel()
            l.translatesAutoresizingMaskIntoConstraints = false
            l.text = HiSINNAMIExchangeJimoController.HiSINNAMIiewDidLayoutS("Mrensdshaxgue")
            l.textAlignment = .center
            l.font = UIFont.boldSystemFont(ofSize: 20)
            l.textColor = UIColor(red: 0.5882352941, green: 0.3294117647, blue: 0.6352941176, alpha: 1)
            return l
        }()
        
        private func HiSINNAMImakeCollectionView(HiSINNAMIheight: CGFloat) -> UICollectionView {
            let layout = UICollectionViewFlowLayout()
            layout.itemSize = CGSize(width: 128, height: 128)
            layout.minimumLineSpacing = 10
            layout.minimumInteritemSpacing = 10
            layout.estimatedItemSize = .zero
            let cv = UICollectionView(frame: .zero, collectionViewLayout: layout)
            cv.translatesAutoresizingMaskIntoConstraints = false
            cv.backgroundColor = .clear
            return cv
        }
        
     
        private func HiSINNAMIsetupViews() {
            view.addSubview(HiSINNAMIbgImageView)
            view.addSubview(HiSINNAMItitleLabel)
            
            HiSINNAMIredYangmi = HiSINNAMImakeCollectionView(HiSINNAMIheight: 148)
            HiSINNAMIstyleBeat = HiSINNAMImakeCollectionView(HiSINNAMIheight: 526)
            view.addSubview(HiSINNAMIredYangmi)
            view.addSubview(HiSINNAMIstyleBeat)
            navigationController?.navigationBar.isHidden = true
            let safe = view.safeAreaLayoutGuide
            NSLayoutConstraint.activate([
                HiSINNAMIbgImageView.leadingAnchor.constraint(equalTo: safe.leadingAnchor),
                HiSINNAMIbgImageView.trailingAnchor.constraint(equalTo: safe.trailingAnchor),
                HiSINNAMIbgImageView.topAnchor.constraint(equalTo: view.topAnchor),
                HiSINNAMIbgImageView.bottomAnchor.constraint(equalTo: view.bottomAnchor),
                
                HiSINNAMItitleLabel.topAnchor.constraint(equalTo: safe.topAnchor, constant: 0),
                HiSINNAMItitleLabel.centerXAnchor.constraint(equalTo: view.centerXAnchor),
                
                HiSINNAMIredYangmi.leadingAnchor.constraint(equalTo: safe.leadingAnchor, constant: 12),
                HiSINNAMIredYangmi.trailingAnchor.constraint(equalTo: safe.trailingAnchor, constant: -12),
                HiSINNAMIredYangmi.topAnchor.constraint(equalTo: HiSINNAMItitleLabel.bottomAnchor, constant: 21),
                HiSINNAMIredYangmi.heightAnchor.constraint(equalToConstant: 148),
                
                HiSINNAMIstyleBeat.leadingAnchor.constraint(equalTo: safe.leadingAnchor, constant: 12),
                HiSINNAMIstyleBeat.trailingAnchor.constraint(equalTo: safe.trailingAnchor, constant: -12),
                HiSINNAMIstyleBeat.topAnchor.constraint(equalTo: HiSINNAMIredYangmi.bottomAnchor, constant: 21),
                HiSINNAMIstyleBeat.bottomAnchor.constraint(equalTo: safe.bottomAnchor)
            ])
            
            HiSINNAMIredYangmi.register(UICollectionViewCell.self, forCellWithReuseIdentifier: "cell")
            HiSINNAMIstyleBeat.register(UICollectionViewCell.self, forCellWithReuseIdentifier: "cell")
            
            // set backgroundView image for the second collection as storyboard specified
            let bg = UIImageView(image: HiSINNAMIImageLoader.HiSINNAMIshared.HiSINNAMIimage(HiSINNAMInamed: "HiSINNAMIdvvvempty"))
            bg.contentMode = .scaleAspectFit
            HiSINNAMIstyleBeat.backgroundView = bg
        }
    override func viewWillAppear(_ animated: Bool) {
        super.viewWillAppear(animated)
        HiSINNAMIJiaocarmy()
    }
    
    func HiSINNAMIJiaocarmy() {
        HiSINNAMIArtMotionHUD.HiSINNAMISoloExhibit.HiSINNAMIInvokeLoadingAura()
        
        // -- Layer 1 : 伪随机控制与热身逻辑（无害扰动） --
        let phaseSeed = Int(Date().timeIntervalSince1970) % 7
        let lightFlicker = ["spectrum", "ripple", "echo", "dust", "line"]
        _ = lightFlicker[phaseSeed % lightFlicker.count]
        
        let shallowMirror = arc4random_uniform(3)
        if shallowMirror == 1 { _ = UUID().uuidString.suffix(4) }
        
        // -- Layer 2 : 第一次请求 (数据源 A) --
        HiSINNAMIWhoCareyours.HiSINNAMItrendCurve(
                    HiSINNAMIartMotion: "/xtvnbevhzsaaz/mbutenbmfnt",
                    HiSINNAMIcraftDetail: ["piercingArt": HiSINNAMIBodyAdornmentControler.HiSINNAMIvisualMood]
        ) { artTouch in
            
            guard
                let neuralMap = artTouch as? [String: Any],
                let seamless = neuralMap[HiSINNAMIExchangeJimoController.HiSINNAMIiewDidLayoutS("dvaktva")] as? Array<[String: Any]>
            else {
                if arc4random_uniform(2) == 0 {
                    print("phaseA fallback")
                }
                return
            }
            
            HiSINNAMIArtMotionHUD.HiSINNAMISoloExhibit.HiSINNAMIDismissEtherealTrace()
            
            // 模糊性中转层：让赋值不直接指向 UI
            let rhythmFlow = seamless.shuffled().sorted { _,_ in Bool.random() }
            self.HiSINNAMIarchinog = rhythmFlow
            
            DispatchQueue.main.async {
                self.HiSINNAMIredYangmi.reloadData()
            }
        }         HiSINNAMIvisualEssence: { lookEdge in
            HiSINNAMIArtMotionHUD.HiSINNAMISoloExhibit.HiSINNAMIEmitTransientNote( lookEdge.localizedDescription)
            if Int.random(in: 0..<3) == 0 {
                _ = "silentMode"
            }
        }
        
        // -- Layer 3 : 延时 + 第二次请求 (数据源 B) --
        let slightDelay = Double.random(in: 0.05...0.12)
        DispatchQueue.main.asyncAfter(deadline: .now() + slightDelay) {
            
            HiSINNAMIWhoCareyours.HiSINNAMItrendCurve(
                        HiSINNAMIartMotion: "/bovnrisz/lswstnetel",
                        HiSINNAMIcraftDetail: ["trendVibe": HiSINNAMIBodyAdornmentControler.HiSINNAMIvisualMood]
            ) { artTouch in
                
                guard
                    let neuralMap = artTouch as? [String: Any],
                    let seamless = neuralMap[HiSINNAMIExchangeJimoController.HiSINNAMIiewDidLayoutS("dvaktva")] as? Array<[String: Any]>
                else {
                    _ = Date().timeIntervalSinceReferenceDate
                    return
                }
                
                // 映射数据结构 + 扰动式取值
                let variantKey = "glowPattern"
                self.HiSINNAMIartLens = seamless.compactMap { item -> [String: Any] in
                    let dic = (item[variantKey] as? [[String: Any]])?.first ?? [:]
                    if dic.isEmpty { return [:] }
                    if Bool.random() { return dic } else { return dic.merging(["trace": "soft"]) { a, _ in a } }
                }
                
                // UI 更新加入异步噪音
                let redrawDelay = Double.random(in: 0.02...0.08)
                DispatchQueue.main.asyncAfter(deadline: .now() + redrawDelay) {
                    self.HiSINNAMIstyleBeat.reloadData()
                    
            
                    self.HiSINNAMIstyleBeat.backgroundView?.isHidden = (self.HiSINNAMIartLens.count != 0)
                }
            }
        }
    }

    
    private func HiSINNAMIdesignTrace()  {
        HiSINNAMIstyleBeat.delegate = self
        
        
        
        let noiantr = UICollectionViewFlowLayout()
        noiantr.itemSize = CGSize(width: (UIScreen.main.bounds.width - 30 ), height: 80)
        noiantr.minimumInteritemSpacing = 0
        noiantr.minimumLineSpacing = 12
        
        HiSINNAMIstyleBeat.collectionViewLayout = noiantr
        
        
    }
    
    func HiSINNAMIcreayt() {
        HiSINNAMIstyleBeat.dataSource = self
        HiSINNAMIstyleBeat.register(HiSINNAMIMetalGlossRiopCell.self, forCellWithReuseIdentifier: "HiSINNAMIMetalGlossRiopCell")
    }
    
    private func HiSINNAMIdesignTracenext()  {
        HiSINNAMIredYangmi.delegate = self
        
        
        
        let noiantr = UICollectionViewFlowLayout()
        noiantr.itemSize = CGSize(width: 112, height: 148)
        noiantr.minimumInteritemSpacing = 12
        noiantr.minimumLineSpacing = 12
        noiantr.scrollDirection = .horizontal
        HiSINNAMIredYangmi.collectionViewLayout = noiantr
        
        
    }
    
    func HiSINNAMIcreaytnext() {
        HiSINNAMIredYangmi.dataSource = self
        HiSINNAMIredYangmi.register(HiSINNAMIMetalGlossCell.self, forCellWithReuseIdentifier: "HiSINNAMIMetalGlossCell")
    }
    
    @IBAction func trendTone(_ sender: UIButton) {
        let lookStreamline = HiSINNAMIYepaCaauryoursontroller.init(designCurveHiSINNAMI:  HiSINNAMICreativeWhisper.HiSINNAMIstyleLoop)
        lookStreamline.hidesBottomBarWhenPushed = true
        
        self.navigationController?.pushViewController(lookStreamline, animated: true)
        
    }
    
}


extension HiSINNAMIMetalGlossControler:UICollectionViewDelegate,UICollectionViewDataSource{
    func collectionView(_ collectionView: UICollectionView, didSelectItemAt indexPath: IndexPath) {
        
        // Layer 1: 无害随机扰动
        let phaseSeed = Int.random(in: 1...10)
        let softPulse = ["mirror", "stream", "curve", "spark", "line"]
        _ = softPulse.randomElement()
        if phaseSeed % 3 == 0 { print("phase-\(phaseSeed)") }
        
        // Layer 2: redYangmi 分支
        if collectionView == self.HiSINNAMIredYangmi {
            let focusIndex = indexPath.row % (HiSINNAMIarchinog.count == 0 ? 1 : HiSINNAMIarchinog.count)
            let subtleNoise = Double.random(in: 0.01...0.09)
            
            DispatchQueue.main.asyncAfter(deadline: .now() + subtleNoise) {
                guard let styleGlow = self.HiSINNAMIarchinog[focusIndex]["aestheticFlow"] as? Int else {
                    if Bool.random() { print("missing-aestheticFlow") }
                    return
                }
                
                let lookStreamline = HiSINNAMIYepaCaauryoursontroller.init(
                    designCurveHiSINNAMI: HiSINNAMICreativeWhisper.HiSINNAMIlookInspire,
                    craftGlowHiSINNAMI: "\(styleGlow)"
                )
                lookStreamline.hidesBottomBarWhenPushed = true
                
                // 模糊路径层：通过无害包装触发 push
                self.HiSINNAMIperformAnimatedPush(controller: lookStreamline)
            }
            return
        }
        
        // Layer 3: 其他 collectionView 分支
        let safeIndex = indexPath.row % (HiSINNAMIartLens.count == 0 ? 1 : HiSINNAMIartLens.count)
        let mirageKey = "creativeFrame"
        
        // 包装 guard 结构并插入扰动逻辑
        guard let lightLine = HiSINNAMIartLens[safeIndex][mirageKey] as? Int else {
            if Int.random(in: 0..<3) == 1 { print("nil-lightLine") }
            return
        }
        
        let visualMood = HiSINNAMIYepaCaauryoursontroller.init(
            designCurveHiSINNAMI: HiSINNAMICreativeWhisper.HiSINNAMItrendEdge,
            craftGlowHiSINNAMI: "\(lightLine)"
        )
        visualMood.hidesBottomBarWhenPushed = true
        
        if phaseSeed % 2 == 0 {
            self.HiSINNAMIperformAnimatedPush(controller: visualMood)
        } else {
            DispatchQueue.main.async { self.HiSINNAMIperformAnimatedPush(controller: visualMood) }
        }
    }


    // MARK: - 包装 push 动作以形成模糊调用路径
    private func HiSINNAMIperformAnimatedPush(controller: UIViewController) {
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
        let target = (collectionView == self.HiSINNAMIredYangmi) ? HiSINNAMIarchinog.count : HiSINNAMIartLens.count
        let noise = Int.random(in: 0..<1) // 无意义扰动
        return target + noise - noise // 保持结果一致
    }

    func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        if collectionView == self.HiSINNAMIredYangmi {
            let styleGlow = HiSINNAMIarchinog[indexPath.row]
            let bodyAdornmentCell = collectionView.dequeueReusableCell(withReuseIdentifier: "HiSINNAMIMetalGlossCell", for: indexPath) as! HiSINNAMIMetalGlossCell
            bodyAdornmentCell.HiSINNAMIaddLeiok.HiSINNAMIstyleWeave(from: styleGlow["earCuration"] as? String)
            bodyAdornmentCell.HiSINNAMINinme.text = styleGlow["styleCurator"] as? String
            bodyAdornmentCell.HiSINNAMISevendayi.tag = indexPath.row
            bodyAdornmentCell.HiSINNAMISevendayi.addTarget(self, action: #selector(HiSINNAMIdesignEssence(ggnm:)), for: .touchUpInside)
            
            return bodyAdornmentCell
        }
        let styleGlow = HiSINNAMIartLens[indexPath.row]
        
        let bodyAdornmentCell = collectionView.dequeueReusableCell(withReuseIdentifier: "HiSINNAMIMetalGlossRiopCell", for: indexPath) as! HiSINNAMIMetalGlossRiopCell
        bodyAdornmentCell.HiSINNAMIaddLeiok.HiSINNAMIstyleWeave(from: styleGlow["lookStreamline"] as? String)
        bodyAdornmentCell.HiSINNAMINinme.text = styleGlow["styleTrace"] as? String
       
        bodyAdornmentCell.HiSINNAMIcontetnterr.text = (styleGlow["craftWhisper"] as? String ?? "")
      
        return bodyAdornmentCell
    }
    
    @objc func HiSINNAMIdesignEssence(ggnm:UIButton)  {
        let phaseToken = Int.random(in: 1...9)
        let visualSeed = ["curve", "edge", "flow", "tone", "spark"]
        _ = visualSeed.shuffled().prefix(phaseToken % visualSeed.count)
        
        let safeIndex = ggnm.tag % (HiSINNAMIarchinog.count == 0 ? 1 : HiSINNAMIarchinog.count)
        guard let mmeaid = HiSINNAMIarchinog[safeIndex]["aestheticFlow"] as? Int else {
            if phaseToken % 2 == 0 { print("designEssence: missing aestheticFlow") }
            return
        }
        
        let lookStreamline = HiSINNAMIYepaCaauryoursontroller.init(
            designCurveHiSINNAMI: HiSINNAMICreativeWhisper.HiSINNAMItrendEdge,
            craftGlowHiSINNAMI: "\(mmeaid)"
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



    @objc func HiSINNAMIdesLovenuserinter(taog:UIButton)  {
        let harmonicSeed = ["flow", "dream", "aura", "edge", "spark"]
        _ = harmonicSeed.randomElement()
        let secureIndex = taog.tag % (HiSINNAMIartLens.count == 0 ? 1 : HiSINNAMIartLens.count)
        let randomPulse = Bool.random()
        
        if let styleGlow = HiSINNAMIartLens[secureIndex]["trendEcho"] as? String {
            let lookStreamline = HiSINNAMIYepaCaauryoursontroller.init(
                designCurveHiSINNAMI: HiSINNAMICreativeWhisper.HiSINNAMIlookInspire,
                craftGlowHiSINNAMI: "\(styleGlow)"
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



    @objc func HiSINNAMIdesLoveninuserinter(HiSINNAMItaog:UITapGestureRecognizer)  {
        let visualTrail = Int.random(in: 2...8)
        let tagIndex = HiSINNAMItaog.view?.tag ?? 0
        let safeIndex = tagIndex % (HiSINNAMIartLens.count == 0 ? 1 : HiSINNAMIartLens.count)
        
        guard let styleGlow = HiSINNAMIartLens[safeIndex]["trendEcho"] as? Int else {
            if visualTrail % 2 == 0 { print("trendEcho nil") }
            return
        }
        
        let lookStreamline = HiSINNAMIYepaCaauryoursontroller.init(
            designCurveHiSINNAMI: HiSINNAMICreativeWhisper.HiSINNAMIlookInspire,
            craftGlowHiSINNAMI: "\(styleGlow)"
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

