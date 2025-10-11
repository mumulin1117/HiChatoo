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
        styleVision.isUserInteractionEnabled = true
        studioAccent.layer.cornerRadius = 20
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
    
    @IBAction func creativeSense(_ sender: UIButton) {
        if Pali != nil {
            self.Pali?.creativeSenseF(intu: sender.tag)
        }
    }
}
