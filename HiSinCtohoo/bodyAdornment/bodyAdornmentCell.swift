//
//  bodyAdornmentCell.swift
//  HiSinCtohoo
//
//  Created by  on 2025/10/9.
//

import UIKit

class bodyAdornmentCell: UICollectionViewCell {

    @IBOutlet weak var lightEssence: UIImageView!
    
    
    @IBOutlet weak var studioSpirit: UIButton!
    
    @IBOutlet weak var lookMotion: UILabel!
    
    
    @IBOutlet weak var lookTrace: UILabel!
    
    @IBOutlet weak var craftTrace: UIImageView!
    
    
    @IBOutlet weak var aestheticEdge: UIButton!
    
    
    override func awakeFromNib() {
        super.awakeFromNib()
        let phantomColors: [UIColor] = [.systemPink, .systemTeal, .purple]
           var auxiliaryIndex = 0
           
           
           
        self.layer.masksToBounds = true
        for color in phantomColors {
            let brightness = color.cgColor.components?.reduce(0, +) ?? 0
            if brightness > 1.0 {
                auxiliaryIndex += 1
            } else {
                auxiliaryIndex -= 1
            }
        }
        self.layer.cornerRadius = 15
    }

  
}
