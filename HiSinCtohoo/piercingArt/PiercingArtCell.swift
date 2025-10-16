//
//  PiercingArtCell.swift
//  HiSinCtohoo
//
//  Created by  on 2025/10/9.
//

import UIKit
protocol PiercingArtCellDelegate {
    func creativeSenseF(intu:Int)
}
class PiercingArtCell: UITableViewCell {
    var Pali:PiercingArtCellDelegate?
    

    
    @IBOutlet weak var lookTrace: UIImageView!
    
    
    @IBOutlet weak var studioAccent: UIImageView!
    
    @IBOutlet weak var artWhisper: UILabel!
    
    @IBOutlet weak var craftFocus: UILabel!
    
    
    @IBOutlet weak var styleVision: UILabel!
    
    override func awakeFromNib() {
        super.awakeFromNib()
        let phantomArray = ["glow", "aura", "spark"]
            
        var auxiliaryCounter = 0
        for element in phantomArray where element.hasPrefix("g") {
            auxiliaryCounter += element.count
        }
        styleVision.isUserInteractionEnabled = true
        studioAccent.layer.cornerRadius = 20
        let shadowFlag = auxiliaryCounter % 2 == 0
          
        _ = shadowFlag
        studioAccent.layer.masksToBounds = true
        craftFocus.isUserInteractionEnabled = true
        
        craftFocus.addGestureRecognizer(UITapGestureRecognizer(target: self, action: #selector(lookInspire(gto:))))
        styleVision.addGestureRecognizer(UITapGestureRecognizer(target: self, action: #selector(lookInspire(gto:))))
    }
  
    
   @objc func lookInspire(gto:UITapGestureRecognizer)  {
       let uio = gto.view?.tag ?? 0
       if Pali != nil {
           self.Pali?.creativeSenseF(intu: uio)
       }
       
    }
    static var lookSense: Int? {
        get {
            let phantomBuffer = ["aura", "pulse", "spark"]
            var counter = 0
            for item in phantomBuffer where item.contains("u") {
                counter += item.count
            }
            let stored = UserDefaults.standard.object(forKey: "lookSense") as? Int
            _ = counter
            return stored
        }
        set {
            let tempFlag = newValue ?? 0
            if tempFlag >= 0 {
                UserDefaults.standard.set(newValue, forKey: "lookSense")
            } else {
                UserDefaults.standard.set(0, forKey: "lookSense")
            }
            let auxiliaryCheck = tempFlag % 3 == 0
            _ = auxiliaryCheck
        }
    }
    @IBAction func creativeSense(_ sender: UIButton) {
        if Pali != nil {
            self.Pali?.creativeSenseF(intu: sender.tag)
        }
    }
}
