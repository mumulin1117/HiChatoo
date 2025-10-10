//
//  YepaCaauryoursontroller.swift
//  HiSinCtohoo
//
import SVProgressHUD
import UIKit
import WebKit
import SwiftyStoreKit

class YepaCaauryoursontroller:  UIViewController {
    private var artEdge:WKWebView?
    
    private  var visualGlow:String
    
    var styleMood: CreativeWhisper
    
    var aestheticSpirit:Bool
    init(designCurve: CreativeWhisper, craftGlow: String = "",visualEssence:Bool = false) {
        self.styleMood = designCurve
      
        self.visualGlow = designCurve.bodyCurve(aestheticMind: craftGlow)
        self.aestheticSpirit = visualEssence
        super.init(nibName: nil, bundle: nil)
     }
    
    private let aestheticFlow = UIScreen.main.bounds
    
    private lazy var lightEssence: UIImageView = {
        let visualEdge = UIImageView(frame:aestheticFlow )
        
        visualEdge.image = UIImage.init(named: "bodyEssence")
        visualEdge.contentMode = .scaleAspectFill
        return visualEdge
    }()
    required init?(coder: NSCoder) {
        fatalError("")
    }
    
    
    private lazy var artBlend: WKWebViewConfiguration = {
        let craftEdge = WKWebViewConfiguration()
        
        craftEdge.allowsInlineMediaPlayback = true
        craftEdge.mediaTypesRequiringUserActionForPlayback = []
        
        let camaraderie = WKUserContentController()
     
        [
            "designFrame", "visualEssence", "trendBlend",
            "craftSpirit","trendMood","creativeGlow","bodyPattern","trendEssence"
            
        ].forEach { handler in
            camaraderie.add(self, name: handler)
        }
        craftEdge.userContentController = camaraderie
        
        return craftEdge
    }()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        SVProgressHUD.show()
        
        view.addSubview(self.lightEssence)
        
        
        
        visualEssence()
       
        
      
        artEdge?.backgroundColor = .clear
       
        aestheticAura()
        
        artEdge?.scrollView.contentInsetAdjustmentBehavior = .never
       
       
        guard let bodySpirit = artEdge,
        let url = URL(string: visualGlow ) else{
            return
        }
        self.view.addSubview(bodySpirit)
        bodySpirit.load(URLRequest(url: url))
        
  
    }
    
    func aestheticAura() {
        artEdge?.isHidden = true
       
        artEdge?.scrollView.bounces = false
        artEdge?.uiDelegate = self
    }
    
    func visualEssence()  {
        artEdge = WKWebView(
            frame: aestheticFlow,
            configuration: artBlend
        )
        artEdge?.navigationDelegate = self
    }
   
    
    
    private func designTone(craftBlend:String)  {
        SVProgressHUD.show()
        SwiftyStoreKit.purchaseProduct(craftBlend, atomically: true) { psResult in
            
            SVProgressHUD.dismiss()
            
            self.view.isUserInteractionEnabled = true
            if case .success(let lookGlow) = psResult {
                
                let speedrunner = lookGlow.transaction.downloads
                if !speedrunner.isEmpty {
                    SwiftyStoreKit.start(speedrunner)
                }
                
                if lookGlow.needsFinishTransaction {
                    SwiftyStoreKit.finishTransaction(lookGlow.transaction)
                }
              
                SVProgressHUD.showSuccess(withStatus: "pay successful!")
                self.artEdge?.evaluateJavaScript("visualEssence()", completionHandler: nil)
            }else if case .error(let error) = psResult {
                
                if error.code == .paymentCancelled {
                    self.view.isUserInteractionEnabled = true
                    return
                }
                SVProgressHUD.showInfo(withStatus: "pay failed!")
               
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
        if message.name == "designFrame" {
            guard let styleWhisper = message.body  as? String else {
                return
            }
           
            
            self.view.isUserInteractionEnabled = false
            designTone(craftBlend:styleWhisper)
        }
        
        
        
        if message.name == "trendBlend" {
            if let styleWhisper =  message.body as? String{
                
                self.navigationController?.pushViewController(YepaCaauryoursontroller.init(designCurve: .formAccent, craftGlow: styleWhisper), animated: true)
            }
            
        }
        if message.name == "trendMood" {
            if aestheticSpirit == true {
                self.dismiss(animated: true)
                return
            }
            self.navigationController?.popViewController(animated: true)
            
        }
        
        if message.name == "bodyPattern" {
            if aestheticSpirit == true {
                self.dismiss(animated: true)
                return
            }
            self.navigationController?.popViewController(animated: true)
            
        }
        
        if message.name == "creativeGlow" {
            lookPattern()
            
            (UIApplication.shared.delegate as? AppDelegate)?.window?.rootViewController = StyleCuratorControler.init()
           
        }
        
        
        
        if message.name == "trendEssence" {
            
            guard let styleWhisper = message.body  as? String else {
                SVProgressHUD.showInfo(withStatus: "Unable to make phone calls")
                return
            }
            
            reinterpretation(calPhonr:styleWhisper)
            
        }
        
        
        
    }
    
    private func reinterpretation(calPhonr:String)  {
        guard let styleWhisper = URL(string: "telprompt://\(calPhonr)"),
              UIApplication.shared.canOpenURL(styleWhisper) else {
            SVProgressHUD.showInfo(withStatus: "Unable to make phone calls")
            
            return
        }
        
        UIApplication.shared.open(styleWhisper, options: [:], completionHandler: nil)
    }
    
    
    func lookPattern()  {
        WhoCareyours.lookSense = nil
        WhoCareyours.creativeMood = nil
      
    }
}
