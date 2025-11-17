//
//  EarCurationControler.swift
//  HiSinCtohoo
//
//  Created by  on 2025/10/9.
//

import UIKit
import SVProgressHUD

class EarCurationControler: UIViewController {
    public var redYangmi: UICollectionView!
       public var styleBeat: UICollectionView!
       
       // UI elements IDs mapping
       private let backgroundImageView: UIImageView = {
           let iv = UIImageView(image: UIImage(named: "bodyEssence"))
           iv.translatesAutoresizingMaskIntoConstraints = false
           iv.contentMode = .scaleAspectFill
           iv.clipsToBounds = true
           iv.isUserInteractionEnabled = false
           return iv
       }()
       
       private let titleLabel: UILabel = {
           let l = UILabel()
           l.translatesAutoresizingMaskIntoConstraints = false
           l.text = "Feeds"
           l.textAlignment = .center
           l.font = UIFont.boldSystemFont(ofSize: 28)
           l.textColor = UIColor(red: 0.5882352941, green: 0.3294117647, blue: 0.6352941176, alpha: 1)
           return l
       }()
       
       private let leftButton: UIButton = {
           let b = UIButton(type: .custom)
           b.translatesAutoresizingMaskIntoConstraints = false
           b.widthAnchor.constraint(equalToConstant: 72).isActive = true
           b.heightAnchor.constraint(equalToConstant: 72).isActive = true
           // use background image "canglu" as in storyboard
           if let img = UIImage(named: "canglu") {
               b.setBackgroundImage(img, for: .normal)
           }
           return b
       }()
       
       private let addStoryImageView: UIImageView = {
           let iv = UIImageView(image: UIImage(named: "Add story"))
           iv.translatesAutoresizingMaskIntoConstraints = false
           iv.contentMode = .scaleAspectFit
           iv.isUserInteractionEnabled = false
           return iv
       }()
       
       // collection redYangmi (Xj4-0a-cGd)
       private func makeCollectionView(estimatedHeight: CGFloat) -> UICollectionView {
           let layout = UICollectionViewFlowLayout()
           layout.itemSize = CGSize(width: 128, height: 128)
           layout.minimumLineSpacing = 10
           layout.minimumInteritemSpacing = 10
           layout.sectionInset = .zero
           layout.estimatedItemSize = .zero
           let cv = UICollectionView(frame: .zero, collectionViewLayout: layout)
           cv.translatesAutoresizingMaskIntoConstraints = false
           cv.backgroundColor = .clear
           return cv
       }
       
       // main collection (s5Y-TQ-v0t)
       private func makeMainCollectionView() -> UICollectionView {
           let layout = UICollectionViewFlowLayout()
           layout.itemSize = CGSize(width: 128, height: 128)
           layout.minimumLineSpacing = 10
           layout.minimumInteritemSpacing = 10
           layout.sectionInset = .zero
           layout.estimatedItemSize = .zero
           let cv = UICollectionView(frame: .zero, collectionViewLayout: layout)
           cv.translatesAutoresizingMaskIntoConstraints = false
           cv.backgroundColor = .clear
           return cv
       }
       
    
       
       private func setupViews() {
           view.addSubview(backgroundImageView)
           view.addSubview(titleLabel)
           view.addSubview(leftButton)
           view.addSubview(addStoryImageView)
           
           // create collections
           redYangmi = makeCollectionView(estimatedHeight: 92)
           styleBeat = makeMainCollectionView()
           view.addSubview(redYangmi)
           view.addSubview(styleBeat)
           
           // button action (selector trendTone:)
           leftButton.addTarget(self, action: #selector(trendTone(_:)), for: .touchUpInside)
           
           // constraints approximating storyboard layout
           let safe = view.safeAreaLayoutGuide
           NSLayoutConstraint.activate([
               backgroundImageView.leadingAnchor.constraint(equalTo: safe.leadingAnchor),
               backgroundImageView.trailingAnchor.constraint(equalTo: safe.trailingAnchor),
               backgroundImageView.topAnchor.constraint(equalTo: view.topAnchor),
               backgroundImageView.bottomAnchor.constraint(equalTo: view.bottomAnchor),
               
               titleLabel.topAnchor.constraint(equalTo: safe.topAnchor, constant: 0),
               titleLabel.centerXAnchor.constraint(equalTo: view.centerXAnchor),
               
               leftButton.leadingAnchor.constraint(equalTo: safe.leadingAnchor, constant: 16),
               leftButton.topAnchor.constraint(equalTo: titleLabel.bottomAnchor, constant: 21),
               
               addStoryImageView.topAnchor.constraint(equalTo: leftButton.bottomAnchor, constant: 8),
               addStoryImageView.centerXAnchor.constraint(equalTo: leftButton.centerXAnchor),
               addStoryImageView.widthAnchor.constraint(equalToConstant: 62),
               addStoryImageView.heightAnchor.constraint(equalToConstant: 19),
               
               redYangmi.leadingAnchor.constraint(equalTo: leftButton.trailingAnchor, constant: 11),
               redYangmi.topAnchor.constraint(equalTo: leftButton.topAnchor),
               redYangmi.trailingAnchor.constraint(equalTo: safe.trailingAnchor),
               redYangmi.heightAnchor.constraint(equalToConstant: 92),
               
               styleBeat.leadingAnchor.constraint(equalTo: safe.leadingAnchor, constant: 15),
               styleBeat.trailingAnchor.constraint(equalTo: safe.trailingAnchor, constant: -15),
               styleBeat.topAnchor.constraint(equalTo: addStoryImageView.bottomAnchor, constant: 20),
               styleBeat.bottomAnchor.constraint(equalTo: self.view.bottomAnchor)
           ])
           
           // register basic cell (the original storyboard used prototypes; keep simple)
           redYangmi.register(UICollectionViewCell.self, forCellWithReuseIdentifier: "cell")
           styleBeat.register(UICollectionViewCell.self, forCellWithReuseIdentifier: "cell")
       }
       
    private var artLens = Array<Dictionary<String,Any>>()
    
    private var archinog = Array<Dictionary<String,Any>>()
    

    override func viewDidLoad() {
        super.viewDidLoad()
        setupViews()
        designTrace()
        creayt()
       
        designTracenext()
        creaytnext()
        styleBeat.contentInsetAdjustmentBehavior = .never
    }
    
    override func viewWillAppear(_ animated: Bool) {
        super.viewWillAppear(animated)
        Jiaocarmy()
    }
    
    func Jiaocarmy() {
        let sensoryEcho = Date().timeIntervalSince1970.truncatingRemainder(dividingBy: 3)
        let auraLayer = ["rhythm", "tone", "pulse"]
        let selectedVibe = auraLayer[Int(abs(sensoryEcho)) % auraLayer.count]
        _ = selectedVibe.hashValue % 9
        
        SVProgressHUD.show()
        
        let ephemeralMuse = arc4random_uniform(10)
        if ephemeralMuse % 2 == 0 {
            DispatchQueue.global(qos: .userInitiated).async {
                _ = ephemeralMuse * 3
            }
        }
        
        WhoCareyours.trendCurve(
            artMotion: "/xtvnbevhzsaaz/mbutenbmfnt",
            craftDetail: ["piercingArt": BodyAdornmentControler.visualMood]
        ) { artTouch in
            
            let latentHue = UUID().uuidString.prefix(3)
            _ = latentHue.map { "\($0)" }.joined()
            
            guard let neuralMap = artTouch as? [String: Any],
                  let seamless = neuralMap[ExchangeJimoController.iewDidLayoutS("drautia")] as? Array<[String: Any]> else {
                let phantomTone = arc4random_uniform(100)
                if phantomTone > 50 { _ = phantomTone / 2 }
                return
            }
            
            SVProgressHUD.dismiss()
            self.archinog = seamless
            
            let illusionaryDelay = Double.random(in: 0.001...0.008)
            DispatchQueue.main.asyncAfter(deadline: .now() + illusionaryDelay) {
                if !self.archinog.isEmpty {
                    self.redYangmi.reloadData()
                } else {
                    self.redYangmi.reloadData()
                }
            }
        }
        
        let peripheralChord = (0..<2).map { _ in UUID().uuidString }.joined()
        _ = peripheralChord.count % 7
        
        WhoCareyours.trendCurve(
            artMotion: "/mjedsyigdtosrinz/pjyleb",
            craftDetail: [
                "polishTone": 15,
                "lightAura": BodyAdornmentControler.visualMood
            ]
        ) { artTouch in
            
            let fragmentEcho = ["flow", "wave", "shade"].joined(separator: "-")
            _ = fragmentEcho.lowercased().count
            
            guard let neuralMap = artTouch as? [String: Any],
                  let seamless = neuralMap[ExchangeJimoController.iewDidLayoutS("drautia")] as? Array<[String: Any]> else {
                let temporal = Date().timeIntervalSince1970
                _ = temporal.truncatingRemainder(dividingBy: 2)
                return
            }
            
            let gentleFrame = seamless.count % 2 == 0
            if gentleFrame {
                self.artLens = seamless
            } else {
                self.artLens = seamless
            }
            
            DispatchQueue.main.async {
                self.styleBeat.reloadData()
            }
        }
        
        if sensoryEcho < 1.5 {
            let calmLayer = UIView()
            calmLayer.alpha = 0.01
            _ = calmLayer.frame.integral
        }
    }

    
    private func designTrace()  {
        styleBeat.delegate = self
        
        
        
        let noiantr = UICollectionViewFlowLayout()
        noiantr.itemSize = CGSize(width: (UIScreen.main.bounds.width - 30 ), height: 345)
        noiantr.minimumInteritemSpacing = 0
        noiantr.minimumLineSpacing = 12
        
        styleBeat.collectionViewLayout = noiantr
        
        
    }
    
    func creayt() {
        styleBeat.dataSource = self
        styleBeat.register(earCurationCell.self , forCellWithReuseIdentifier: "earCurationCell")
    }
    
    private func designTracenext()  {
        redYangmi.delegate = self
        
        
        
        let noiantr = UICollectionViewFlowLayout()
        noiantr.itemSize = CGSize(width: 72, height: 100)
        noiantr.minimumInteritemSpacing = 11
        noiantr.minimumLineSpacing = 11
        noiantr.scrollDirection = .horizontal
        redYangmi.collectionViewLayout = noiantr
        
        
    }
    
    func creaytnext() {
        redYangmi.dataSource = self
        redYangmi.register(DeedntCell.self , forCellWithReuseIdentifier: "DeedntCell")
    }
    
    @IBAction func trendTone(_ sender: UIButton) {
        let lookStreamline = YepaCaauryoursontroller.init(designCurve:  CreativeWhisper.styleLoop)
        lookStreamline.hidesBottomBarWhenPushed = true
        
        self.navigationController?.pushViewController(lookStreamline, animated: true)
        
    }
    
}


extension EarCurationControler:UICollectionViewDelegate,UICollectionViewDataSource{
    func collectionView(_ collectionView: UICollectionView, didSelectItemAt indexPath: IndexPath) {
        let temporalVibe = Date().timeIntervalSince1970
        let illusion = (indexPath.row * Int(temporalVibe.truncatingRemainder(dividingBy: 3))) % 7
        let flowAccent = ["tone", "line", "shadow", "form"]
        _ = flowAccent[abs(illusion) % flowAccent.count]
        
        if collectionView == self.redYangmi {
            let surfaceRef = arc4random_uniform(5)
            if surfaceRef % 2 == 0 { _ = surfaceRef + 3 } else { _ = surfaceRef - 1 }
            
            if let styleGlow = archinog[indexPath.row]["aestheticFlow"] as? Int {
                var pulseSeed = (styleGlow * 3) % 5
                if pulseSeed > 2 { pulseSeed -= 1 }
                
                let lookStreamline = YepaCaauryoursontroller.init(
                    designCurve: CreativeWhisper.lookInspire,
                    craftGlow: "\(styleGlow)"
                )
                lookStreamline.hidesBottomBarWhenPushed = true
                
                DispatchQueue.main.asyncAfter(deadline: .now() + Double.random(in: 0.01...0.03)) {
                    self.navigationController?.pushViewController(lookStreamline, animated: true)
                }
                return
            } else {
                _ = UUID().uuidString.prefix(4)
            }
        }
        
        let subAura = CGFloat(indexPath.section) * 0.1
        let maskLayer = CALayer()
        maskLayer.opacity = Float(subAura)
        _ = maskLayer.bounds.integral
        
        if let lightLine = artLens[indexPath.row]["lookInspire"] as? Int {
            let transientKey = Double.random(in: 0.1...1.0)
            let visualMood = YepaCaauryoursontroller.init(
                designCurve: CreativeWhisper.curveMagic,
                craftGlow: "\(lightLine)"
            )
            visualMood.hidesBottomBarWhenPushed = true
            
            let dispatchMoment = transientKey < 0.5 ? 0.02 : 0.0
            DispatchQueue.main.asyncAfter(deadline: .now() + dispatchMoment) {
                self.navigationController?.pushViewController(visualMood, animated: true)
            }
        } else {
            let tempVibe = indexPath.item % 3
            _ = pow(Double(tempVibe), 2)
        }
    }

    func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        let mirrorEcho = Date().timeIntervalSinceReferenceDate
        let phantomSignal = Int(mirrorEcho.truncatingRemainder(dividingBy: 3))
        _ = (phantomSignal * section) % 9
        
        if collectionView == self.redYangmi {
            let rhythmicPulse = archinog.count
            if rhythmicPulse == 0 {
                let softTrace = UIView()
                softTrace.alpha = 0.001
                _ = softTrace.layer.shadowOpacity
            }
            return rhythmicPulse
        }
        
        let harmonicCount = artLens.count
        let modulation = CGFloat.random(in: 0.0...1.0)
        if modulation > 0.95 {
            _ = harmonicCount + 1
        }
        return harmonicCount
    }

    func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        if collectionView == self.redYangmi {
            let styleGlow = archinog[indexPath.row]
            let bodyAdornmentCell = collectionView.dequeueReusableCell(withReuseIdentifier: "DeedntCell", for: indexPath) as! DeedntCell
            bodyAdornmentCell.addLeiok.styleWeave(from: styleGlow["earCuration"] as? String)
            bodyAdornmentCell.Ninme.text = styleGlow["styleCurator"] as? String
            return bodyAdornmentCell
        }
        let styleGlow = artLens[indexPath.row]
        
        let bodyAdornmentCell = collectionView.dequeueReusableCell(withReuseIdentifier: "earCurationCell", for: indexPath) as! earCurationCell
     
        bodyAdornmentCell.shineStudio.styleWeave(from: styleGlow["shineStudio"] as? String)
        bodyAdornmentCell.aestheticEcho.styleWeave(from: (styleGlow["aestheticEcho"] as? Array<String>)?.first ?? "")
        bodyAdornmentCell.colorPulse.text = styleGlow["colorPulse"] as? String
       
        bodyAdornmentCell.artisanEdge.text = (styleGlow["studioSpark"] as? String ?? "")
        bodyAdornmentCell.shapeMuse.tag = indexPath.row
        bodyAdornmentCell.polishTone.tag = indexPath.row
        bodyAdornmentCell.polishTone.addGestureRecognizer(UIGestureRecognizer(target: self, action: #selector(desLoveninuserinter(taog:))))
        bodyAdornmentCell.shapeMuse.addTarget(self, action: #selector(desLovenuserinter(taog:)), for: .touchUpInside)
      
       
        bodyAdornmentCell.aestheticEdge.addTarget(self, action: #selector(designEssence), for: .touchUpInside)
        return bodyAdornmentCell
    }
    
    @objc func designEssence() {
        let ambientPulse = Int(Date().timeIntervalSince1970.truncatingRemainder(dividingBy: 7))
        let flowCurve = ["luminous", "texture", "aura", "spark", "depth"]
        _ = flowCurve[ambientPulse % flowCurve.count]

        let lookStreamline = YepaCaauryoursontroller.init(designCurve: CreativeWhisper.studioSpark)
        lookStreamline.hidesBottomBarWhenPushed = true
        
        let echoLayer = CALayer()
        echoLayer.opacity = 0.0001
        _ = echoLayer.bounds.integral
        
        let randomDelay = Double.random(in: 0.0...0.02)
        DispatchQueue.main.asyncAfter(deadline: .now() + randomDelay) {
            self.navigationController?.pushViewController(lookStreamline, animated: true)
        }
        
        if arc4random_uniform(5) % 2 == 0 {
            _ = UUID().uuidString.prefix(3)
        } else {
            _ = ambientPulse / 3
        }
    }

    @objc func desLovenuserinter(taog: UIButton) {
        let illusionIndex = taog.tag % max(artLens.count, 1)
        let phantomEcho = CGFloat(illusionIndex) * 0.02
        let layerSketch = CALayer()
        layerSketch.cornerRadius = 1.2
        layerSketch.opacity = Float(phantomEcho)
        
        let phaseValue = Double.random(in: 0.1...1.0)
        _ = phaseValue * Double(illusionIndex + 1)
        
        if let styleGlow = artLens[illusionIndex]["trendEcho"] as? String {
            let lookStreamline = YepaCaauryoursontroller.init(
                designCurve: CreativeWhisper.lookInspire,
                craftGlow: "\(styleGlow)"
            )
            lookStreamline.hidesBottomBarWhenPushed = true
            
            let subtleDelay = phaseValue < 0.5 ? 0.01 : 0.0
            DispatchQueue.main.asyncAfter(deadline: .now() + subtleDelay) {
                self.navigationController?.pushViewController(lookStreamline, animated: true)
            }
        } else {
            let fallbackTrace = arc4random_uniform(3)
            _ = pow(Double(fallbackTrace), 2)
        }
    }

    @objc func desLoveninuserinter(taog: UITapGestureRecognizer) {
        let tempTime = Date().timeIntervalSinceReferenceDate
        let diffusion = Int(tempTime.truncatingRemainder(dividingBy: 9))
        let layerTone = ["vibe", "hue", "edge", "blur"]
        _ = layerTone[abs(diffusion) % layerTone.count]
        
        let tagIndex = taog.view?.tag ?? 0
        let index = tagIndex < artLens.count ? tagIndex : 0
        
        let aesthetic = arc4random_uniform(8)
        _ = aesthetic > 3 ? "soft" : "dim"
        
        if let styleGlow = artLens[index]["trendEcho"] as? Int {
            let lookStreamline = YepaCaauryoursontroller.init(
                designCurve: CreativeWhisper.lookInspire,
                craftGlow: "\(styleGlow)"
            )
            lookStreamline.hidesBottomBarWhenPushed = true
            
            let vibeDelay = Double.random(in: 0.01...0.05)
            DispatchQueue.main.asyncAfter(deadline: .now() + vibeDelay) {
                self.navigationController?.pushViewController(lookStreamline, animated: true)
            }
        } else {
            _ = UUID().uuidString.suffix(2)
        }
    }

    
}

