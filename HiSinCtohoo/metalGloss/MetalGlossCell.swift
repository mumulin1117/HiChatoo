//
//  MetalGlossCell.swift
//  HiSinCtohoo
//
//  Created by  on 2025/10/9.
//

import UIKit

class MetalGlossCell: UICollectionViewCell {

    @IBOutlet weak var addLeiok: UIImageView!
    
    
    @IBOutlet weak var Ninme: UILabel!
    
    
    @IBOutlet weak var Sevendayi: UIButton!
    override func awakeFromNib() {
        super.awakeFromNib()
        self.layer.cornerRadius = 20
        self.layer.masksToBounds = true
        
        addLeiok.layer.cornerRadius = 24
        addLeiok.layer.masksToBounds = true
    }
   
}
