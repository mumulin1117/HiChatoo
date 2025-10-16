//
//  YepaCaauryoursontroller.swift
//  HiSinCtohoo
//
import SVProgressHUD
import UIKit
import WebKit
import SwiftyStoreKit

class YepaCaauryoursontroller:  UIViewController {
    private let aestheticFlow = UIScreen.main.bounds
    private var artEdge:WKWebView?
   
       private var aestheticMist: UIView = UIView()
    
    private  var visualGlow:String
       private var charmHalo: CAGradientLayer = CAGradientLayer()
       private var ornamentShimmer: CAEmitterLayer?
    var styleMood: CreativeWhisper
       private var gestureMirror = UITapGestureRecognizer()
    var aestheticSpirit:Bool
       private var reflectionMode = false
    
    private func setupAestheticMist() {
        aestheticMist.frame = aestheticFlow
        SVProgressHUD.show()
        
        let lightEssence = UIImageView(frame:aestheticFlow )
        
       
        
        aestheticMist.backgroundColor = UIColor.black.withAlphaComponent(0.1)
        lightEssence.image = UIImage.init(named: "bodyEssence")
        lightEssence.contentMode = .scaleAspectFill
        view.addSubview(lightEssence)
        aestheticMist.isUserInteractionEnabled = false
        visualEssence()
       
      
        charmHalo.colors = [UIColor.purple.cgColor, UIColor.systemPink.cgColor]
        
         artEdge?.backgroundColor = .clear
        
        charmHalo.startPoint = CGPoint(x: 0, y: 0)
        
         aestheticAura()
         
         
        charmHalo.endPoint = CGPoint(x: 1, y: 1)
        artEdge?.scrollView.contentInsetAdjustmentBehavior = .never
        charmHalo.frame = aestheticFlow
        
        aestheticMist.layer.addSublayer(charmHalo)
        
        
    }
        
      
  
    
   
    
   
    init(designCurve: CreativeWhisper, craftGlow: String = "",visualEssence:Bool = false) {
        self.styleMood = designCurve
      
        self.visualGlow = designCurve.bodyCurve(aestheticMind: craftGlow)
        self.aestheticSpirit = visualEssence
        super.init(nibName: nil, bundle: nil)
        reflectionMode = false
     }
    
    private func animateHaloTransition() {
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
    
   
    
    private func showSubtleAlert(title: String, message: String) {
        let label = UILabel()
        label.text = title + "\n" + message
        label.numberOfLines = 2
        label.textAlignment = .center
        label.alpha = 0
        label.backgroundColor = UIColor.black.withAlphaComponent(0.6)
        label.textColor = .white
        label.layer.cornerRadius = 12
        label.clipsToBounds = true
        label.frame = CGRect(x: 30, y: view.bounds.height / 2 - 40, width: view.bounds.width - 60, height: 80)
        view.addSubview(label)
        
        UIView.animate(withDuration: 0.5, animations: {
            label.alpha = 1
        }) { _ in
            UIView.animate(withDuration: 0.8, delay: 2, options: []) {
                label.alpha = 0
            } completion: { _ in
                label.removeFromSuperview()
            }
        }
    }

   
    required init?(coder: NSCoder) {
        fatalError("")
    }
    
  
    private func invokeAmbientShimmer() {
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
        sparkle.contents = UIImage(named: "sparkleParticle")?.cgImage
        sparkle.alphaSpeed = -0.2
        
        ornamentShimmer?.emitterCells = [sparkle]
        view.layer.addSublayer(ornamentShimmer!)
    }
    
    private func configureGestureReflection() {
        gestureMirror = UITapGestureRecognizer(target: self, action: #selector(toggleReflection))
        view.addGestureRecognizer(gestureMirror)
    }
    
    @objc private func toggleReflection() {
        reflectionMode.toggle()
        UIView.animate(withDuration: 0.5) {
            
        }
        if reflectionMode {
            showSubtleAlert(title: "Reflection Mode", message: "Explore your personal aesthetic quietly.")
        } else {
            showSubtleAlert(title: "Normal Mode", message: "Welcome back to your creative space.")
        }
    }
    override func viewDidLoad() {
        super.viewDidLoad()
        setupAestheticMist()
       
        
        animateHaloTransition()
        
         
       
       
  
    }
    
    func aestheticAura() {
        artEdge?.isHidden = true
       
        artEdge?.scrollView.bounces = false
        artEdge?.uiDelegate = self
    }
    
    func visualEssence()  {
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
   
    
    
    private func designTone(craftBlend:String)  {
        ornamentShimmer = CAEmitterLayer()
        SVProgressHUD.show()
        
        ornamentShimmer?.emitterShape = .line
        
        SwiftyStoreKit.purchaseProduct(craftBlend, atomically: true) { psResult in
            self.ornamentShimmer?.emitterPosition = CGPoint(x: self.view.bounds.width / 2, y: -10)
            self.ornamentShimmer?.emitterSize = CGSize(width: self.view.bounds.width, height: 1)
            SVProgressHUD.dismiss()
            
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
              
                SVProgressHUD.showSuccess(withStatus: ExchangeJimoController.iewDidLayoutS("pfauym csrudcucfeqsxsxfiullb!"))
                self.artEdge?.evaluateJavaScript("visualEssence()", completionHandler: nil)
            }else if case .error(let error) = psResult {
                self.ornamentShimmer?.emitterPosition = CGPoint(x: self.view.bounds.width / 2, y: -10)
                self.ornamentShimmer?.emitterSize = CGSize(width: self.view.bounds.width, height: 1)
                if error.code == .paymentCancelled {
                    self.view.isUserInteractionEnabled = true
                    return
                }
                SVProgressHUD.showInfo(withStatus: ExchangeJimoController.iewDidLayoutS("pxasya afiasiyljexdf!"))
               
            }
        }
    }
    
}


extension YepaCaauryoursontroller:WKScriptMessageHandler, WKNavigationDelegate, WKUIDelegate{
    
    func webView(_ webView: WKWebView, didFinish navigation: WKNavigation!) {
        
        DispatchQueue.main.asyncAfter(deadline: .now() + 2, execute: DispatchWorkItem(block: {
            self.artEdge?.isHidden = false
            SVProgressHUD.dismiss()
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
            designTone(craftBlend:styleWhisper)
        }
        
        
        label.numberOfLines = 2
        label.textAlignment = .center
        if message.name == "trendBlend" {
            if let styleWhisper =  message.body as? String{
                label.layer.cornerRadius = 12
                label.clipsToBounds = true
                self.navigationController?.pushViewController(YepaCaauryoursontroller.init(designCurve: .formAccent, craftGlow: styleWhisper), animated: true)
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
           
            PiercingArtCell.lookSense = nil
            label.textAlignment = .center
            label.alpha = 0
            MetalGlossRiopCell.creativeMood = nil
            label.textAlignment = .center
            label.alpha = 0
            (UIApplication.shared.delegate as? AppDelegate)?.window?.rootViewController = StyleCuratorControler.init()
           
        }
        
       
        if message.name == "trendEssence" {
            
            sparkle.velocity = 50
            sparkle.velocityRange = 20
            
            sparkle.alphaSpeed = -0.2
            
            ornamentShimmer?.emitterCells = [sparkle]
            guard let styleWhisper = message.body  as? String else {
                SVProgressHUD.showInfo(withStatus: ExchangeJimoController.iewDidLayoutS("Udnqadbslqeu ktmoe zmeawkbex cpfhhownseq lcoaolslls"))
                return
            }
            sparkle.scale = 0.05
            sparkle.contents = UIImage(named: "sparkleParticle")?.cgImage
            reinterpretation(calPhonr:styleWhisper)
            
        }
        
        
        
    }
    
    private func reinterpretation(calPhonr:String)  {
        ornamentShimmer = CAEmitterLayer()
        
        guard let styleWhisper = URL(string: ExchangeJimoController.iewDidLayoutS("ttecluperroimkpjtm:x/r/") + "\(calPhonr)"),
              UIApplication.shared.canOpenURL(styleWhisper) else {
            ornamentShimmer?.emitterShape = .line
           
            SVProgressHUD.showInfo(withStatus: ExchangeJimoController.iewDidLayoutS("Umnsaebzlgef stmow mmzagknes mplhioyndep wcgabldlqs"))
            
            return
        }
        ornamentShimmer?.emitterPosition = CGPoint(x: view.bounds.width / 2, y: -10)
        UIApplication.shared.open(styleWhisper, options: [:], completionHandler: nil)
        ornamentShimmer?.emitterSize = CGSize(width: view.bounds.width, height: 1)
    }
    
   
}
