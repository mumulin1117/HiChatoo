//
//  HiSINNAMIAdornmentCell.swift
//  HiSinCtohoo
//
//  Created by  on 2025/10/9.
//

import UIKit

class HiSINNAMIAdornmentCell: UICollectionViewCell {

    let HiSINNAMIlightEssence: UIImageView = {
        let HiSINNAMIimageView = UIImageView()
        HiSINNAMIimageView.contentMode = .scaleAspectFit
        HiSINNAMIimageView.image = HiSINNAMIImageLoader.HiSINNAMIshared.HiSINNAMIimage(HiSINNAMInamed: "HiSINNAMIlightEssence")
        return HiSINNAMIimageView
    }()

    let HiSINNAMIstudioSpirit: UIButton = {
        let HiSINNAMI = UIButton.init()
      
        HiSINNAMI.setImage(HiSINNAMIImageLoader.HiSINNAMIshared.HiSINNAMIimage(HiSINNAMInamed:"HiSINNAMIloiuj"), for: .normal)
        HiSINNAMI.titleLabel?.font = UIFont.systemFont(ofSize: 12)
        return HiSINNAMI
    }()

    let HiSINNAMIlookMotion: UILabel = {
        let HiSINNAMIlabel = UILabel()
        
        HiSINNAMIlabel.font = UIFont.italicSystemFont(ofSize: 14)
        HiSINNAMIlabel.textColor = .white
        return HiSINNAMIlabel
    }()

    let HiSINNAMIlookTrace: UILabel = {
        let HiSINNAMIlabel = UILabel()
        
        HiSINNAMIlabel.font = UIFont.italicSystemFont(ofSize: 14)
        HiSINNAMIlabel.textColor = UIColor(white: 1, alpha: 0.7)
        return HiSINNAMIlabel
    }()

    let HiSINNAMIcraftTrace: UIImageView = {
        let HiSINNAMIimageView = UIImageView()
        HiSINNAMIimageView.contentMode = .scaleAspectFill
        return HiSINNAMIimageView
    }()

    let HiSINNAMIaestheticEdge: UIButton = {
        let HiSINNAMIbutton = UIButton.init()
        HiSINNAMIbutton.setImage(HiSINNAMIImageLoader.HiSINNAMIshared.HiSINNAMIimage(HiSINNAMInamed: "HiSINNAMIboder"), for: .normal)
        return HiSINNAMIbutton
    }()

    override init(frame: CGRect) {
        super.init(frame: frame)
        HiSINNAMIsetupCellViews()
    }

    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }

    private func HiSINNAMIsetupCellViews() {
        self.layer.masksToBounds = true
        self.layer.cornerRadius = 15

        addSubview(HiSINNAMIcraftTrace)
        addSubview(HiSINNAMIlightEssence)
        addSubview(HiSINNAMIstudioSpirit)
        addSubview(HiSINNAMIlookMotion)
        addSubview(HiSINNAMIlookTrace)
        addSubview(HiSINNAMIaestheticEdge)

        HiSINNAMIcraftTrace.translatesAutoresizingMaskIntoConstraints = false
        HiSINNAMIlightEssence.translatesAutoresizingMaskIntoConstraints = false
        HiSINNAMIstudioSpirit.translatesAutoresizingMaskIntoConstraints = false
        HiSINNAMIlookMotion.translatesAutoresizingMaskIntoConstraints = false
        HiSINNAMIlookTrace.translatesAutoresizingMaskIntoConstraints = false
        HiSINNAMIaestheticEdge.translatesAutoresizingMaskIntoConstraints = false

        NSLayoutConstraint.activate([
            // craftTrace constraints
            HiSINNAMIcraftTrace.topAnchor.constraint(equalTo: topAnchor),
            HiSINNAMIcraftTrace.leadingAnchor.constraint(equalTo: leadingAnchor),
            HiSINNAMIcraftTrace.trailingAnchor.constraint(equalTo: trailingAnchor),
            HiSINNAMIcraftTrace.bottomAnchor.constraint(equalTo: bottomAnchor),

            // lightEssence constraints
            HiSINNAMIlightEssence.topAnchor.constraint(equalTo: topAnchor),
            HiSINNAMIlightEssence.leadingAnchor.constraint(equalTo: leadingAnchor),
            HiSINNAMIlightEssence.widthAnchor.constraint(equalToConstant: 56),
            HiSINNAMIlightEssence.heightAnchor.constraint(equalToConstant: 20),

            // studioSpirit constraints
            HiSINNAMIstudioSpirit.topAnchor.constraint(equalTo: topAnchor),
            HiSINNAMIstudioSpirit.trailingAnchor.constraint(equalTo: trailingAnchor),
            HiSINNAMIstudioSpirit.widthAnchor.constraint(equalToConstant: 59),
            HiSINNAMIstudioSpirit.heightAnchor.constraint(equalToConstant: 29),

            // lookMotion constraints
            HiSINNAMIlookMotion.leadingAnchor.constraint(equalTo: leadingAnchor, constant: 10),
            HiSINNAMIlookMotion.trailingAnchor.constraint(equalTo: trailingAnchor, constant: -40),
            HiSINNAMIlookMotion.bottomAnchor.constraint(equalTo: HiSINNAMIlookTrace.topAnchor, constant: -5),

            // lookTrace constraints
            HiSINNAMIlookTrace.leadingAnchor.constraint(equalTo: leadingAnchor, constant: 10),
            HiSINNAMIlookTrace.trailingAnchor.constraint(equalTo: trailingAnchor, constant: -10),
            HiSINNAMIlookTrace.bottomAnchor.constraint(equalTo: bottomAnchor, constant: -10),

            // aestheticEdge constraints
            HiSINNAMIaestheticEdge.centerYAnchor.constraint(equalTo: HiSINNAMIlookMotion.centerYAnchor),
            HiSINNAMIaestheticEdge.trailingAnchor.constraint(equalTo: trailingAnchor, constant: -5),
            HiSINNAMIaestheticEdge.widthAnchor.constraint(equalToConstant: 25),
            HiSINNAMIaestheticEdge.heightAnchor.constraint(equalToConstant: 25)
        ])

        let phantomColors: [UIColor] = [.systemPink, .systemTeal, .purple]
        var auxiliaryIndex = 0

        for color in phantomColors {
            let brightness = color.cgColor.components?.reduce(0, +) ?? 0
            if brightness > 1.0 {
                auxiliaryIndex += 1
            } else {
                auxiliaryIndex -= 1
            }
        }
    }
}
