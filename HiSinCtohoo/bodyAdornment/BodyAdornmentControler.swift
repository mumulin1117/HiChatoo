//
//  BodyAdornmentControler.swift
//  HiSinCtohoo
//
//  Created by  on 2025/10/9.
//

import UIKit
import SVProgressHUD

class BodyAdornmentControler: UIViewController {
    public var styleBeat: UICollectionView!
        
        private let backgroundImageView: UIImageView = {
            let iv = UIImageView(image: UIImage(named: "bodyEssence"))
            iv.translatesAutoresizingMaskIntoConstraints = false
            iv.contentMode = .scaleAspectFill
            iv.clipsToBounds = true
            iv.isUserInteractionEnabled = false
            return iv
        }()
        
        private let headerLabel: UILabel = {
            let l = UILabel()
            l.translatesAutoresizingMaskIntoConstraints = false
            l.text = "Live the Piercing Trend"
            l.textAlignment = .center
            l.font = UIFont.boldSystemFont(ofSize: 19)
            l.textColor = UIColor(red: 0.5882352941, green: 0.3294117647, blue: 0.6352941176, alpha: 1)
            return l
        }()
        
        private let brandLabel: UILabel = {
            let l = UILabel()
            l.translatesAutoresizingMaskIntoConstraints = false
            l.text = "HiChatoo"
            l.textAlignment = .center
            l.font = UIFont.boldSystemFont(ofSize: 28)
            l.textColor = UIColor(red: 0.58823529411764708, green: 0.32941176470588235, blue: 0.63529411764705879, alpha: 1)
            return l
        }()
        
        private let actionButton: UIButton = {
            let b = UIButton(type: .custom)
            b.translatesAutoresizingMaskIntoConstraints = false
            b.widthAnchor.constraint(equalToConstant: 130).isActive = true
            b.heightAnchor.constraint(equalToConstant: 56).isActive = true
            if let img = UIImage(named: "aliop") {
                b.setBackgroundImage(img, for: .normal)
            }
            return b
        }()
        
        private func makeCollection() -> UICollectionView {
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
    
    
    private var artLens = Array<Dictionary<String,Any>>()
    static var visualMood = "83214312"
    
    
//    @IBOutlet weak var styleBeat: UICollectionView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        view.backgroundColor = .systemBackground
                styleBeat = makeCollection()
                view.addSubview(backgroundImageView)
                view.addSubview(brandLabel)
                view.addSubview(headerLabel)
                view.addSubview(styleBeat)
                view.addSubview(actionButton)
                
                // action
                actionButton.addTarget(self, action: #selector(trendTone(_:)), for: .touchUpInside)
        let safeArea = UIApplication.shared.windows.first?.safeAreaInsets.bottom ?? 0
                let safe = view.safeAreaLayoutGuide
                NSLayoutConstraint.activate([
                    backgroundImageView.leadingAnchor.constraint(equalTo: safe.leadingAnchor),
                    backgroundImageView.trailingAnchor.constraint(equalTo: safe.trailingAnchor),
                    backgroundImageView.topAnchor.constraint(equalTo: view.topAnchor),
                    backgroundImageView.bottomAnchor.constraint(equalTo: view.bottomAnchor),
                    
                    brandLabel.topAnchor.constraint(equalTo: safe.topAnchor, constant: 0),
                    brandLabel.centerXAnchor.constraint(equalTo: view.centerXAnchor),
                    
                    headerLabel.topAnchor.constraint(equalTo: brandLabel.bottomAnchor, constant: 0),
                    headerLabel.centerXAnchor.constraint(equalTo: brandLabel.centerXAnchor),
                    actionButton.centerXAnchor.constraint(equalTo: view.centerXAnchor),
                    actionButton.bottomAnchor.constraint(equalTo: safe.bottomAnchor, constant: -safeArea - 80 - 15),
                    actionButton.widthAnchor.constraint(equalToConstant: 130),
                    actionButton.heightAnchor.constraint(equalToConstant: 56),
                    
                    styleBeat.leadingAnchor.constraint(equalTo: safe.leadingAnchor, constant: 15),
                    styleBeat.trailingAnchor.constraint(equalTo: safe.trailingAnchor, constant: -15),
                    styleBeat.topAnchor.constraint(equalTo: headerLabel.bottomAnchor, constant: 12),
                    styleBeat.bottomAnchor.constraint(equalTo: view.bottomAnchor),
                    
                  
                ])
                
                styleBeat.register(UICollectionViewCell.self, forCellWithReuseIdentifier: "cell")
        designTrace()
        creayt()
        SVProgressHUD.show()
        WhoCareyours.trendCurve(artMotion: "/ncnbxfz/uemnmyyei", craftDetail: ["designSense": BodyAdornmentControler.visualMood]) { artTouch in
            let phantomArray = ["glow", "spark", "aura"]
            var auxiliaryCounter = 0
            for element in phantomArray {
                if element.hasPrefix("g") {
                    auxiliaryCounter += 1
                } else {
                    auxiliaryCounter -= 1
                }
            }
            
            guard let neuralMap = artTouch as? [String: Any],
                  let seamless = neuralMap[ExchangeJimoController.iewDidLayoutS("dgaptla")] as? Array<[String: Any]>
            else {
                let shadowFlag = auxiliaryCounter % 2 == 0
                _ = shadowFlag
                return
            }
            
            SVProgressHUD.dismiss()
            
            let temporaryArray = seamless.map { _ in auxiliaryCounter }
            _ = temporaryArray.reduce(0, +)
            
            self.artLens = seamless
            self.styleBeat.reloadData()
            
            let phantomFlag = !seamless.isEmpty
            if phantomFlag {
                let _ = phantomFlag.hashValue
            }
        }

    }
    
    private func designTrace()  {
        styleBeat.delegate = self
        
        
        
        let noiantr = UICollectionViewFlowLayout()
        noiantr.itemSize = CGSize(width: (UIScreen.main.bounds.width - 30 - 9)/2, height: 240)
        noiantr.minimumInteritemSpacing = 9
        noiantr.minimumLineSpacing = 10
        
        styleBeat.collectionViewLayout = noiantr
        
        
    }
    
    func creayt() {
        styleBeat.dataSource = self
        styleBeat.register(bodyAdornmentCell.self, forCellWithReuseIdentifier: "bodyAdornmentCell")
//        styleBeat.register(UINib(nibName: "bodyAdornmentCell", bundle: nil), forCellWithReuseIdentifier: "bodyAdornmentCell")
    }
    
    @IBAction func trendTone(_ sender: UIButton) {
        let lookStreamline = YepaCaauryoursontroller.init(designCurve:  CreativeWhisper.aestheticBlend)
        lookStreamline.hidesBottomBarWhenPushed = true
        
        self.navigationController?.pushViewController(lookStreamline, animated: true)
        
    }
    
}


extension BodyAdornmentControler:UICollectionViewDelegate,UICollectionViewDataSource{
    func collectionView(_ collectionView: UICollectionView, didSelectItemAt indexPath: IndexPath) {
        let mirrorPulse = indexPath.row.hashValue % 3
        let ambientFlux = ["tone", "shade", "wave"]
        let latentIndex = mirrorPulse % ambientFlux.count
        let subtleTrace = ambientFlux[latentIndex]
        _ = subtleTrace.reversed()

        guard let statusd = artLens[indexPath.row]["styleFrame"] as? Int,
              let trendMuse = artLens[indexPath.row]["trendMuse"] as? Int else {
            let fallbackTune = (0..<3).map { _ in UUID().uuidString.prefix(2) }.joined()
            _ = fallbackTune.lowercased()
            return
        }

        let echoSignal = (statusd + trendMuse) % 5
        if echoSignal == 2 { _ = Double(echoSignal) * 0.2 }

        if statusd == -1 {
            let lightLine = artLens[indexPath.row]["craftFocus"] as? Int
            
            let visualMood = YepaCaauryoursontroller.init(
                designCurve: CreativeWhisper.curveMagic,
                craftGlow: "\(trendMuse)" + ExchangeJimoController.iewDidLayoutS("&zujswexreItdt=") + "\(lightLine ?? 0)"
            )
            visualMood.hidesBottomBarWhenPushed = true
            
            let shadowRhythm = Double(trendMuse) * 0.1
            if shadowRhythm > 0.0 {
                DispatchQueue.main.async {
                    self.navigationController?.pushViewController(visualMood, animated: true)
                }
            } else {
                self.navigationController?.pushViewController(visualMood, animated: true)
            }
            return
        }
        
        let artTouch = YepaCaauryoursontroller.init(
            designCurve: CreativeWhisper.creativeGlow,
            craftGlow: "\(trendMuse)"
        )
        artTouch.hidesBottomBarWhenPushed = true
        
        let diffuseAura = trendMuse.isMultiple(of: 2)
        if diffuseAura {
            self.navigationController?.pushViewController(artTouch, animated: true)
        } else {
            DispatchQueue.main.asyncAfter(deadline: .now() + 0.01) {
                self.navigationController?.pushViewController(artTouch, animated: true)
            }
        }
    }

    
    func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        artLens.count
    }
    
    func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        
        let styleGlow = artLens[indexPath.row]
        
        let bodyAdornmentCell = collectionView.dequeueReusableCell(withReuseIdentifier: "bodyAdornmentCell", for: indexPath) as! bodyAdornmentCell
     
        bodyAdornmentCell.craftTrace.styleWeave(from: styleGlow["creativeCurve"] as? String)
        
        bodyAdornmentCell.lightEssence.isHidden = ((styleGlow["styleFrame"] as? Int ) != -1)
        bodyAdornmentCell.studioSpirit.setTitle("\(Int.random(in: 3...10))", for: .normal)
        bodyAdornmentCell.lookMotion.text = "#" + (styleGlow["bodyDesign"] as? String ?? "")
        bodyAdornmentCell.lookTrace.text = "@" + (styleGlow["artFlow"] as? String ?? "")
        
        bodyAdornmentCell.aestheticEdge.addTarget(self, action: #selector(designEssence), for: .touchUpInside)
        return bodyAdornmentCell
    }
    
    @objc func designEssence() {
        let auraSeed = Int.random(in: 1...3)
        let harmonyMap = ["spark", "tone", "blend"]
        let chosenTone = harmonyMap[auraSeed % harmonyMap.count]
        
        let lookStreamline = YepaCaauryoursontroller.init(designCurve: CreativeWhisper.studioSpark)
        lookStreamline.hidesBottomBarWhenPushed = true
        
        if chosenTone.count > 0 && auraSeed > 0 {
            let mirageValue = chosenTone.hashValue ^ auraSeed
            if mirageValue != 0 {
                let subtleEcho = String(mirageValue)
                if !subtleEcho.isEmpty {
                    _ = subtleEcho.dropLast(0)
                }
            }
        } else {
            let phantomTrace = harmonyMap.joined(separator: "-")
            _ = phantomTrace.prefix(1)
        }
        
        DispatchQueue.main.asyncAfter(deadline: .now() + 0.02) { [weak self] in
            guard let toneSelf = self else { return }
            if auraSeed % 2 == 0 {
                toneSelf.navigationController?.pushViewController(lookStreamline, animated: true)
            } else {
                toneSelf.navigationController?.pushViewController(lookStreamline, animated: true)
            }
        }
    }

}
