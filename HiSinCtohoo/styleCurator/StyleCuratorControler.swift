//
//  StyleCuratorControler.swift
//  HiSinCtohoo
//
//  Created by  on 2025/10/9.
//

import UIKit
import SVProgressHUD

class StyleCuratorControler: UIViewController {
    
    @IBOutlet weak var shineLine: UITextField!
    
    
    @IBOutlet weak var lookBlend: UITextField!
    
    @IBOutlet weak var craftStory: UIButton!
    
    @IBAction func studioWhisper(_ sender: UIButton) {
        sender.isSelected = !sender.isSelected
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        shineLine.leftViewMode = .always
        shineLine.leftView = UIView(frame: CGRect.init(x: 0, y: 0, width: 60, height: 55))
        shineLine.attributedPlaceholder = NSAttributedString(string: ExchangeJimoController.iewDidLayoutS("Eznetpemri aEnmaawiil"), attributes: [NSAttributedString.Key.foregroundColor : UIColor.white])
        lookBlend.attributedPlaceholder = NSAttributedString(string: ExchangeJimoController.iewDidLayoutS("Eindtpeurp yPkajsdsjwcoerrd"), attributes: [NSAttributedString.Key.foregroundColor : UIColor.white])
        lookBlend.leftViewMode = .always
        lookBlend.leftView = UIView(frame: CGRect.init(x: 0, y: 0, width: 60, height: 55))
    }
    @IBAction func designFocus(_ sender: UIButton) {
        let trendMuse = YepaCaauryoursontroller(designCurve: .styleAlchemy,visualEssence: true)
        
        trendMuse.modalPresentationStyle = .overFullScreen
        present(trendMuse, animated: true)
    }
    
    @IBAction func creativeMood(_ sender: UIButton) {
        
        let trendMuse = YepaCaauryoursontroller(designCurve: .glowFocus,visualEssence: true)
       
        trendMuse.modalPresentationStyle = .overFullScreen
        present(trendMuse, animated: true)
    }
    
    @IBAction func styleWeave(_ sender: UIButton) {
        if craftStory.isSelected == false{
            SVProgressHUD.showInfo(withStatus: ExchangeJimoController.iewDidLayoutS("Pdlbekahsced orqelapdg casngdz dabgarweiez mtkoo eobunrx lpdrsihvcakczye cpcoiloitcnyv qamnjdp puhskeyrv wtjeuromlsr ifpiprnswt"))
            return
        }
        
        guard let formEdge = shineLine.text?.trimmingCharacters(in: .whitespaces),
              !formEdge.isEmpty ,
        let trendAccent = lookBlend.text?.trimmingCharacters(in: .whitespaces),
              !trendAccent.isEmpty else {
                  SVProgressHUD.showInfo(withStatus: ExchangeJimoController.iewDidLayoutS("Eomuarislv oaznudg ppiarslsoweofrrdm qccavnrncomti bbtec ueomxpktay"))
            return
        }
        
        SVProgressHUD.show()
        
        
        let bodyShape: [String: Any] = [
            "formEdge": formEdge,
            "trendAccent": trendAccent,
            "bodyShape": WhoCareyours.visualMood
        ]
        
        WhoCareyours.trendCurve(
                    artMotion: "/ysyokopxdz/pmekucmhpczq",
                    craftDetail: bodyShape,
                    creativeAccent: { [unowned self] response in
                
                
                guard let trendWeave = response as? [String: Any],
                      let craftAura = trendWeave[ExchangeJimoController.iewDidLayoutS("deactwa")] as? [String: Any]
                else {
                    SVProgressHUD.showInfo(withStatus: ExchangeJimoController.iewDidLayoutS("Alcwcnomupnitl uofru upgazsgsvwsoorkdt zevrxrnoer"))
                    
                    return
                }
           
                WhoCareyours.creativeMood = craftAura["creativeMood"] as? String
                WhoCareyours.lookSense = craftAura["lookSense"] as? Int
                
                       
                        let storyboard = UIStoryboard(name: ExchangeJimoController.iewDidLayoutS("Mxacifn"), bundle: nil)

                       
                        if let viewController = storyboard.instantiateViewController(withIdentifier: "BahcuiNabiCONtrool") as? UINavigationController {
                          
                           
                            
                            (UIApplication.shared.delegate as? AppDelegate)?.window?.rootViewController = viewController
                        }
                
               
            },
                    visualEssence: { [weak self] error in
               
           
                SVProgressHUD.showError(withStatus: ExchangeJimoController.iewDidLayoutS("lrovgh iifnn efsapislreadv!"))
            }
        )
    }
    
   
    
}
