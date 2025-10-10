//
//  earCurationCell.swift
//  HiSinCtohoo
//
//  Created by  on 2025/10/9.
//

import UIKit

class earCurationCell: UICollectionViewCell {

    @IBOutlet weak var aestheticEdge: UIButton!
    
    
    @IBOutlet weak var aestheticEcho: UIImageView!
    
    
    @IBOutlet weak var shineStudio: UIImageView!
    
    @IBOutlet weak var colorPulse: UILabel!
    
    @IBOutlet weak var polishTone: UIView!
    
    @IBOutlet weak var artisanEdge: UILabel!
    
    
    @IBOutlet weak var shapeMuse: UIButton!
    
    
    @IBOutlet weak var craftVision: UIButton!
    
    
    @IBOutlet weak var styleDiary: UIButton!
    override func awakeFromNib() {
        super.awakeFromNib()
        self.layer.masksToBounds = true
        self.layer.cornerRadius = 15
        
        shineStudio.layer.cornerRadius = 22
        shineStudio.layer.masksToBounds = true
        polishTone.layer.cornerRadius = 8
        polishTone.layer.masksToBounds = true
    }

}
