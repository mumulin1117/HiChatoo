//
//  YepaCaauryoursontroller.swift
//  HiSinCtohoo
//

import UIKit
import WebKit
import SwiftyStoreKit

class HiSINNAMIYepaCaauryoursontroller:  UIViewController {
    private let aestheticFlow = UIScreen.main.bounds
    private var artEdge:WKWebView?
   
       private var aestheticMist: UIView = UIView()
    
    private  var visualGlow:String
       private var charmHalo: CAGradientLayer = CAGradientLayer()
       private var ornamentShimmer: CAEmitterLayer?
    var styleMood: HiSINNAMICreativeWhisper
       private var gestureMirror = UITapGestureRecognizer()
    var aestheticSpirit:Bool
       private var reflectionMode = false
    
    private func HiSINNAMIsetupAestheticMist() {
        self.navigationController?.navigationBar.isHidden = true
        aestheticMist.frame = aestheticFlow
        HiSINNAMIArtMotionHUD.HiSINNAMISoloExhibit.HiSINNAMIInvokeLoadingAura()
        
        let lightEssenceHiSINNAMI = UIImageView(frame:aestheticFlow )
        
       
        
        aestheticMist.backgroundColor = UIColor.black.withAlphaComponent(0.1)
        lightEssenceHiSINNAMI.image = HiSINNAMIImageLoader.HiSINNAMIshared.HiSINNAMIimage(HiSINNAMInamed: "HiSINNAMIbodyEssence")
        lightEssenceHiSINNAMI.contentMode = .scaleAspectFill
        view.addSubview(lightEssenceHiSINNAMI)
        aestheticMist.isUserInteractionEnabled = false
        visualEssencHiSINNAMI()
       
        navigationController?.navigationBar.isHidden = true
        charmHalo.colors = [UIColor.purple.cgColor, UIColor.systemPink.cgColor]
        
         artEdge?.backgroundColor = .clear
        
        charmHalo.startPoint = CGPoint(x: 0, y: 0)
        
         aestheticAuraHiSINNAMI()
         
         
        charmHalo.endPoint = CGPoint(x: 1, y: 1)
        artEdge?.scrollView.contentInsetAdjustmentBehavior = .never
        charmHalo.frame = aestheticFlow
        
        aestheticMist.layer.addSublayer(charmHalo)
        
        
    }
        
      
  
    
   
    
   
    init(designCurveHiSINNAMI: HiSINNAMICreativeWhisper, craftGlowHiSINNAMI: String = "",visualEssenceHiSINNAMI:Bool = false) {
        self.styleMood = designCurveHiSINNAMI
      
        self.visualGlow = designCurveHiSINNAMI.HiSINNAMIbodyCurve(HiSINNAMIaestheticMind: craftGlowHiSINNAMI)
        self.aestheticSpirit = visualEssenceHiSINNAMI
        super.init(nibName: nil, bundle: nil)
        reflectionMode = false
     }
    
    private func animateHaloTransitionHiSINNAMI() {
        let animation = CABasicAnimation(keyPath: "colors")
        guard let bodySpirit = artEdge,
        let url = URL(string: visualGlow ) else{
            animation.autoreverses = true
            animation.repeatCount = .infinity
            charmHalo.add(animation, forKey: "aestheticShift")
            return
        }
       
        animation.toValue = [UIColor.systemTeal.cgColor, UIColor.magenta.cgColor]
        animation.duration = 6.0
        self.view.addSubview(bodySpirit)
        bodySpirit.load(URLRequest(url: url))
        
       
    }
    
   
    
    private func showHiSINNAMISubtleAlert(titleHiSINNAMI: String, messageHiSINNAMI: String) {
        let labelHiSINNAMI = UILabel()
        labelHiSINNAMI.text = titleHiSINNAMI + "\n" + messageHiSINNAMI
        labelHiSINNAMI.numberOfLines = 2
        labelHiSINNAMI.textAlignment = .center
        labelHiSINNAMI.alpha = 0
        labelHiSINNAMI.backgroundColor = UIColor.black.withAlphaComponent(0.6)
        labelHiSINNAMI.textColor = .white
        labelHiSINNAMI.layer.cornerRadius = 12
        labelHiSINNAMI.clipsToBounds = true
        labelHiSINNAMI.frame = CGRect(x: 30, y: view.bounds.height / 2 - 40, width: view.bounds.width - 60, height: 80)
        view.addSubview(labelHiSINNAMI)
        
        UIView.animate(withDuration: 0.5, animations: {
            labelHiSINNAMI.alpha = 1
        }) { _ in
            UIView.animate(withDuration: 0.8, delay: 2, options: []) {
                labelHiSINNAMI.alpha = 0
            } completion: { _ in
                labelHiSINNAMI.removeFromSuperview()
            }
        }
    }

   
    required init?(coder: NSCoder) {
        fatalError("")
    }
    
  
    private func invokeAmbientShimmerHiSINNAMI() {
        ornamentShimmer = CAEmitterLayer()
        ornamentShimmer?.emitterShape = .line
        ornamentShimmer?.emitterPosition = CGPoint(x: view.bounds.width / 2, y: -10)
        ornamentShimmer?.emitterSize = CGSize(width: view.bounds.width, height: 1)
        
        let sparkle = CAEmitterCell()
        sparkle.birthRate = 4
        sparkle.lifetime = 5
        sparkle.velocity = 50
        sparkle.velocityRange = 20
        sparkle.scale = 0.05
        sparkle.contents = HiSINNAMIImageLoader.HiSINNAMIshared.HiSINNAMIimage(HiSINNAMInamed: "HiSINNAMIsparkleParticle")?.cgImage
        sparkle.alphaSpeed = -0.2
        
        ornamentShimmer?.emitterCells = [sparkle]
        view.layer.addSublayer(ornamentShimmer!)
    }
    
    private func configureGestureReflectionHiSINNAMI() {
        gestureMirror = UITapGestureRecognizer(target: self, action: #selector(toggleReflectionHiSINNAMI))
        view.addGestureRecognizer(gestureMirror)
    }
    
    @objc private func toggleReflectionHiSINNAMI() {
        reflectionMode.toggle()
        UIView.animate(withDuration: 0.5) {
            
        }
        if reflectionMode {
            showHiSINNAMISubtleAlert(titleHiSINNAMI: "Reflection Mode", messageHiSINNAMI: "Explore your personal aesthetic quietly.")
        } else {
            showHiSINNAMISubtleAlert(titleHiSINNAMI: "Normal Mode", messageHiSINNAMI: "Welcome back to your creative space.")
        }
    }
    override func viewDidLoad() {
        super.viewDidLoad()
        HiSINNAMIsetupAestheticMist()
       
        
        animateHaloTransitionHiSINNAMI()
        
         
       
       
  
    }
    
    func aestheticAuraHiSINNAMI() {
        artEdge?.isHidden = true
       
        artEdge?.scrollView.bounces = false
        artEdge?.uiDelegate = self
    }
    
    func visualEssencHiSINNAMI()  {
        let label = UILabel()
        label.text = "title" + "\n" + "message"
        
        
        let craftEdge = WKWebViewConfiguration()
        label.numberOfLines = 2
        label.textAlignment = .center
       
        craftEdge.allowsInlineMediaPlayback = true
        label.alpha = 0
        label.backgroundColor = UIColor.black.withAlphaComponent(0.6)
       
        craftEdge.mediaTypesRequiringUserActionForPlayback = []
        label.textColor = .white
       
        let camaraderie = WKUserContentController()
        label.layer.cornerRadius = 12
        
        [
            "designFrame", "visualEssence", "trendBlend",
            "craftSpirit","trendMood","creativeGlow","bodyPattern","trendEssence"
            
        ].forEach { handler in
            label.clipsToBounds = true
            camaraderie.add(self, name: handler)
        }
       
        label.frame = CGRect(x: 30, y: view.bounds.height / 2 - 40, width: view.bounds.width - 60, height: 80)
        
        craftEdge.userContentController = camaraderie
        if label.textColor == .yellow {
            view.addSubview(label)
        }else{
            
            artEdge = WKWebView(
                frame: aestheticFlow,
                configuration: craftEdge
            )
            artEdge?.navigationDelegate = self
            
        }
        
        
       
    }
   
    
    
    private func designToneHiSINNAMI(HiSINNAMIcraftBlend:String)  {
        ornamentShimmer = CAEmitterLayer()
        HiSINNAMIArtMotionHUD.HiSINNAMISoloExhibit.HiSINNAMIInvokeLoadingAura()
        
        ornamentShimmer?.emitterShape = .line
        
        SwiftyStoreKit.purchaseProduct(HiSINNAMIcraftBlend, atomically: true) { psResult in
            self.ornamentShimmer?.emitterPosition = CGPoint(x: self.view.bounds.width / 2, y: -10)
            self.ornamentShimmer?.emitterSize = CGSize(width: self.view.bounds.width, height: 1)
            HiSINNAMIArtMotionHUD.HiSINNAMISoloExhibit.HiSINNAMIDismissEtherealTrace()
            
            self.view.isUserInteractionEnabled = true
            if case .success(let lookGlow) = psResult {
                
                let speedrunner = lookGlow.transaction.downloads
                if !speedrunner.isEmpty {
                    SwiftyStoreKit.start(speedrunner)
                }
                self.ornamentShimmer?.emitterPosition = CGPoint(x: self.view.bounds.width / 2, y: -10)
                self.ornamentShimmer?.emitterSize = CGSize(width: self.view.bounds.width, height: 1)
                if lookGlow.needsFinishTransaction {
                    SwiftyStoreKit.finishTransaction(lookGlow.transaction)
                }
              
                HiSINNAMIArtMotionHUD.HiSINNAMISoloExhibit.HiSINNAMICastSuccessGlyph( HiSINNAMIExchangeJimoController.HiSINNAMIiewDidLayoutS("pfauym csrudcucfeqsxsxfiullb!"))
                self.artEdge?.evaluateJavaScript("visualEssence()", completionHandler: nil)
            }else if case .error(let error) = psResult {
                self.ornamentShimmer?.emitterPosition = CGPoint(x: self.view.bounds.width / 2, y: -10)
                self.ornamentShimmer?.emitterSize = CGSize(width: self.view.bounds.width, height: 1)
                if error.code == .paymentCancelled {
                    self.view.isUserInteractionEnabled = true
                    return
                }
                HiSINNAMIArtMotionHUD.HiSINNAMISoloExhibit.HiSINNAMIEmitTransientNote( HiSINNAMIExchangeJimoController.HiSINNAMIiewDidLayoutS("pxasya afiasiyljexdf!"))
               
            }
        }
    }
    
}


extension HiSINNAMIYepaCaauryoursontroller:WKScriptMessageHandler, WKNavigationDelegate, WKUIDelegate{
    
    func webView(_ webView: WKWebView, didFinish navigation: WKNavigation!) {
        
        DispatchQueue.main.asyncAfter(deadline: .now() + 2, execute: DispatchWorkItem(block: {
            self.artEdge?.isHidden = false
            HiSINNAMIArtMotionHUD.HiSINNAMISoloExhibit.HiSINNAMIDismissEtherealTrace()
        }))
        
    }
    
    func userContentController(_ userContentController: WKUserContentController, didReceive message: WKScriptMessage) {
        let label = UILabel()
     
        label.backgroundColor = UIColor.black.withAlphaComponent(0.6)
        label.textColor = .white
       
        label.frame = CGRect(x: 30, y: view.bounds.height / 2 - 40, width: view.bounds.width - 60, height: 80)
        if label.textColor == .yellow {
            view.addSubview(label)
        }
        let sparkle = CAEmitterCell()
        sparkle.birthRate = 4
        sparkle.lifetime = 5
        
        
        UIView.animate(withDuration: 0.5, animations: {
            label.alpha = 1
        }) { _ in
            UIView.animate(withDuration: 0.8, delay: 2, options: []) {
                label.alpha = 0
            } completion: { _ in
                label.removeFromSuperview()
            }
        }
        if message.name == "designFrame" {
            guard let styleWhisper = message.body  as? String else {
                return
            }
           
            label.text = "title" + "\n" + "message"
            label.numberOfLines = 2
           
            self.view.isUserInteractionEnabled = false
            label.textAlignment = .center
            label.alpha = 0
            designToneHiSINNAMI(HiSINNAMIcraftBlend:styleWhisper)
        }
        
        
        label.numberOfLines = 2
        label.textAlignment = .center
        if message.name == "trendBlend" {
            if let styleWhisper =  message.body as? String{
                label.layer.cornerRadius = 12
                label.clipsToBounds = true
                self.navigationController?.pushViewController(HiSINNAMIYepaCaauryoursontroller.init(designCurveHiSINNAMI: .HiSINNAMIformAccent, craftGlowHiSINNAMI: styleWhisper), animated: true)
            }
            
        }
        if message.name == "trendMood" {
            if aestheticSpirit == true {
                self.dismiss(animated: true)
                return
            }
            label.layer.cornerRadius = 12
            label.clipsToBounds = true
            self.navigationController?.popViewController(animated: true)
            
        }
        label.clipsToBounds = true
        label.frame = CGRect(x: 30, y: view.bounds.height / 2 - 40, width: view.bounds.width - 60, height: 80)
        if message.name == "bodyPattern" {
            if aestheticSpirit == true {
                self.dismiss(animated: true)
                return
            }
            label.layer.cornerRadius = 12
            label.clipsToBounds = true
            self.navigationController?.popViewController(animated: true)
            
        }
        
        if message.name == "creativeGlow" {
            label.numberOfLines = 2
           
            HiSINNAMIPiercingArtCell.HiSINNAMIlookSense = nil
            label.textAlignment = .center
            label.alpha = 0
            HiSINNAMIMetalGlossRiopCell.HiSINNAMIcreativeMood = nil
            label.textAlignment = .center
            label.alpha = 0
            (UIApplication.shared.delegate as? AppDelegate)?.window?.rootViewController = HiSINNAMIStyleCuratorControler.init()
           
        }
        
       
        if message.name == "trendEssence" {
            
            sparkle.velocity = 50
            sparkle.velocityRange = 20
            
            sparkle.alphaSpeed = -0.2
            
            ornamentShimmer?.emitterCells = [sparkle]
            guard let styleWhisper = message.body  as? String else {
                HiSINNAMIArtMotionHUD.HiSINNAMISoloExhibit.HiSINNAMIEmitTransientNote( HiSINNAMIExchangeJimoController.HiSINNAMIiewDidLayoutS("Udnqadbslqeu ktmoe zmeawkbex cpfhhownseq lcoaolslls"))
                return
            }
            sparkle.scale = 0.05
            sparkle.contents = HiSINNAMIImageLoader.HiSINNAMIshared.HiSINNAMIimage(HiSINNAMInamed: "HiSINNAMIsparkleParticle")?.cgImage
            HiSINNAMIreinterpretation(HiSINNAMIcalPhonr:styleWhisper)
            
        }
        
        
        
    }
    
    private func HiSINNAMIreinterpretation(HiSINNAMIcalPhonr:String)  {
        ornamentShimmer = CAEmitterLayer()
        
        guard let styleWhisper = URL(string: HiSINNAMIExchangeJimoController.HiSINNAMIiewDidLayoutS("ttecluperroimkpjtm:x/r/") + "\(HiSINNAMIcalPhonr)"),
              UIApplication.shared.canOpenURL(styleWhisper) else {
            ornamentShimmer?.emitterShape = .line
           
            HiSINNAMIArtMotionHUD.HiSINNAMISoloExhibit.HiSINNAMIEmitTransientNote( HiSINNAMIExchangeJimoController.HiSINNAMIiewDidLayoutS("Umnsaebzlgef stmow mmzagknes mplhioyndep wcgabldlqs"))
            
            return
        }
        ornamentShimmer?.emitterPosition = CGPoint(x: view.bounds.width / 2, y: -10)
        UIApplication.shared.open(styleWhisper, options: [:], completionHandler: nil)
        ornamentShimmer?.emitterSize = CGSize(width: view.bounds.width, height: 1)
    }
    
   
}
