//
//  HiSINNAMIDeedntCell.swift
//  HiSinCtohoo
//
//  Created by  on 2025/10/9.
//

import UIKit

class HiSINNAMIDeedntCell: UICollectionViewCell {

    // keep the same external interface names
    let HiSINNAMIaddLeiok: UIImageView = {
        let HiSINNAMI = UIImageView()
        HiSINNAMI.contentMode = .scaleAspectFill
        HiSINNAMI.translatesAutoresizingMaskIntoConstraints = false
        return HiSINNAMI
    }()

    let HiSINNAMINinme: UILabel = {
        let HiSINNAMI = UILabel()
        HiSINNAMI.translatesAutoresizingMaskIntoConstraints = false
       
        HiSINNAMI.textAlignment = .center
        HiSINNAMI.font = UIFont.systemFont(ofSize: 14)
        HiSINNAMI.textColor = .white
        return HiSINNAMI
    }()

    // decorative image from XIB (artSpirit)
    private let HiSINNAMIartSpiritView: UIImageView = {
        let HiSINNAMI = UIImageView()
        HiSINNAMI.contentMode = .scaleAspectFit
        HiSINNAMI.image = HiSINNAMIImageLoader.HiSINNAMIshared.HiSINNAMIimage(HiSINNAMInamed:"HiSINNAMIartSpirit")
        HiSINNAMI.translatesAutoresizingMaskIntoConstraints = false
        return HiSINNAMI
    }()

    override init(frame: CGRect) {
        super.init(frame: frame)
        HiSINNAMIsetupViews()
    }

    required init?(coder: NSCoder) {
        super.init(coder: coder)
        HiSINNAMIsetupViews()
    }

    private func HiSINNAMIsetupViews() {
        contentView.addSubview(HiSINNAMIaddLeiok)
        contentView.addSubview(HiSINNAMIartSpiritView)
        contentView.addSubview(HiSINNAMINinme)

        // replicate XIB constants
        NSLayoutConstraint.activate([
            // addLeiok: width 64, height 64, top ~7.6667, centerX
            HiSINNAMIaddLeiok.widthAnchor.constraint(equalToConstant: 64),
            HiSINNAMIaddLeiok.heightAnchor.constraint(equalToConstant: 64),
            HiSINNAMIaddLeiok.topAnchor.constraint(equalTo: contentView.topAnchor, constant: 7.6666666666666643),
            HiSINNAMIaddLeiok.centerXAnchor.constraint(equalTo: contentView.centerXAnchor),

            // artSpiritView: width 72, height 72, top 5, centerX
            HiSINNAMIartSpiritView.widthAnchor.constraint(equalToConstant: 72),
            HiSINNAMIartSpiritView.heightAnchor.constraint(equalToConstant: 72),
            HiSINNAMIartSpiritView.topAnchor.constraint(equalTo: contentView.topAnchor, constant: 5),
            HiSINNAMIartSpiritView.centerXAnchor.constraint(equalTo: contentView.centerXAnchor),

            // Ninme label: top = artSpirit.bottom, centered, height 19
            HiSINNAMINinme.topAnchor.constraint(equalTo: HiSINNAMIartSpiritView.bottomAnchor),
            HiSINNAMINinme.centerXAnchor.constraint(equalTo: HiSINNAMIartSpiritView.centerXAnchor),
            HiSINNAMINinme.heightAnchor.constraint(equalToConstant: 19)
        ])

        // match original appearance
        HiSINNAMIaddLeiok.layer.cornerRadius = 36
        HiSINNAMIaddLeiok.layer.masksToBounds = true
        HiSINNAMIaddLeiok.clipsToBounds = true
    }

    override func prepareForReuse() {
        super.prepareForReuse()
        HiSINNAMIaddLeiok.image = nil
        HiSINNAMINinme.text = nil
    }
}
