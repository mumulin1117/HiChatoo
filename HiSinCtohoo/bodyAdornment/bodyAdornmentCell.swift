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
        self.layer.masksToBounds = true
        self.layer.cornerRadius = 15
    }

  
}
