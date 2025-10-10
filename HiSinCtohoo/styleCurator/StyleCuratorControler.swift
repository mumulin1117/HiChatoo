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
            SVProgressHUD.showInfo(withStatus: "Please read and agree to our privacy policy and user terms first")
            return
        }
        
        guard let formEdge = shineLine.text?.trimmingCharacters(in: .whitespaces),
              !formEdge.isEmpty ,
        let trendAccent = lookBlend.text?.trimmingCharacters(in: .whitespaces),
              !trendAccent.isEmpty else {
                  SVProgressHUD.showInfo(withStatus: "Email and password cannot be empty")
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
                      let craftAura = trendWeave["data"] as? [String: Any]
                else {
                    SVProgressHUD.showInfo(withStatus: "Account or password error")
                    
                    return
                }
           
                WhoCareyours.creativeMood = craftAura["creativeMood"] as? String
                WhoCareyours.lookSense = craftAura["lookSense"] as? Int
                
                       
                        let storyboard = UIStoryboard(name: "Main", bundle: nil)

                       
                        if let viewController = storyboard.instantiateViewController(withIdentifier: "BahcuiNabiCONtrool") as? UINavigationController {
                          
                           
                            
                            (UIApplication.shared.delegate as? AppDelegate)?.window?.rootViewController = viewController
                        }
                
               
            },
                    visualEssence: { [weak self] error in
               
           
                SVProgressHUD.showError(withStatus: "log in failed!")
            }
        )
    }
    
   
    
}
