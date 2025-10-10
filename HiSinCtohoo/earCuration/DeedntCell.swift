//
//  DeedntCell.swift
//  HiSinCtohoo
//
//  Created by  on 2025/10/9.
//

import UIKit

class DeedntCell: UICollectionViewCell {

    @IBOutlet weak var addLeiok: UIImageView!
    
    
    @IBOutlet weak var Ninme: UILabel!
    
    
    override func awakeFromNib() {
        super.awakeFromNib()
        addLeiok.layer.cornerRadius = 36
        addLeiok.layer.masksToBounds = true
    }

}
