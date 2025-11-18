//
//  earCurationCell.swift
//  HiSinCtohoo
//
//  Created by  on 2025/10/9.
//

import UIKit

// swift
import UIKit

class HiSINNAMIearCurationCell: UICollectionViewCell {

    // Public interface (kept names unchanged)
    let HiSINNAMIaestheticEdge: UIButton = {
        let HiSINNAMI = UIButton.init()
        HiSINNAMI.translatesAutoresizingMaskIntoConstraints = false
        HiSINNAMI.setImage(HiSINNAMIImageLoader.shared.HiSINNAMIimage(HiSINNAMInamed: "HiSINNAMIboder"), for: .normal)
        return HiSINNAMI
    }()

    let HiSINNAMIaestheticEcho: UIImageView = {
        let HiSINNAMI = UIImageView()
        HiSINNAMI.translatesAutoresizingMaskIntoConstraints = false
        HiSINNAMI.contentMode = .scaleAspectFill
        HiSINNAMI.clipsToBounds = true
        return HiSINNAMI
    }()

    let HiSINNAMIshineStudio: UIImageView = {
        let HiSINNAMI = UIImageView()
        HiSINNAMI.translatesAutoresizingMaskIntoConstraints = false
        HiSINNAMI.contentMode = .scaleAspectFill
        HiSINNAMI.clipsToBounds = true
        HiSINNAMI.image = HiSINNAMIImageLoader.shared.HiSINNAMIimage(HiSINNAMInamed:"HiSINNAMIartTone")
        return HiSINNAMI
    }()

    let HiSINNAMIcolorPulse: UILabel = {
        let HiSINNAMI = UILabel()
        HiSINNAMI.translatesAutoresizingMaskIntoConstraints = false
       
        HiSINNAMI.font = UIFont.systemFont(ofSize: 15)
        HiSINNAMI.textColor = .white
        return HiSINNAMI
    }()

    let HiSINNAMIpolishTone: UIView = {
        let HiSINNAMI = UIView()
        HiSINNAMI.translatesAutoresizingMaskIntoConstraints = false
        HiSINNAMI.backgroundColor = UIColor(white: 0, alpha: 0.3525390625)
        HiSINNAMI.layer.cornerRadius = 8
        HiSINNAMI.clipsToBounds = true
        return HiSINNAMI
    }()

    let HiSINNAMIartisanEdge: UILabel = {
        let HiSINNAMI = UILabel()
        HiSINNAMI.translatesAutoresizingMaskIntoConstraints = false
     
        HiSINNAMI.font = UIFont.systemFont(ofSize: 15)
        HiSINNAMI.textColor = .white
        return HiSINNAMI
    }()

    let HiSINNAMIshapeMuse: UIButton = {
        let HiSINNAMI = UIButton.init()
        HiSINNAMI.translatesAutoresizingMaskIntoConstraints = false
        HiSINNAMI.setBackgroundImage(HiSINNAMIImageLoader.shared.HiSINNAMIimage(HiSINNAMInamed: "HiSINNAMIcnert_odd"), for: .normal)
        return HiSINNAMI
    }()

    let HiSINNAMIcraftVision: UIButton = {
        let b = UIButton.init()
        b.translatesAutoresizingMaskIntoConstraints = false
        b.setImage(HiSINNAMIImageLoader.shared.HiSINNAMIimage(HiSINNAMInamed:"HiSINNAMIcraftSpirit"), for: .normal)
        return b
    }()

    let HiSINNAMIstyleDiary: UIButton = {
        let HiSINNAMI = UIButton.init()
        HiSINNAMI.translatesAutoresizingMaskIntoConstraints = false
        HiSINNAMI.setImage(HiSINNAMIImageLoader.shared.HiSINNAMIimage(HiSINNAMInamed:"HiSINNAMIcnert_o"), for: .normal)
        return HiSINNAMI
    }()

    // auxiliary labels inside polishTone
    private let HiSINNAMIpolishDetail: UILabel = {
        let HiSINNAMI = UILabel()
        HiSINNAMI.translatesAutoresizingMaskIntoConstraints = false
        HiSINNAMI.text = HiSINNAMIExchangeJimoController.HiSINNAMIiewDidLayoutS("Tuoo nCphbezchkt w-f>")
        HiSINNAMI.font = UIFont.systemFont(ofSize: 12)
        HiSINNAMI.textColor = UIColor(white: 1, alpha: 0.5)
        return HiSINNAMI
    }()

    // bottom translucent container
    private let HiSINNAMIfooterContainer: UIView = {
        let HiSINNAMI = UIView()
        HiSINNAMI.translatesAutoresizingMaskIntoConstraints = false
        HiSINNAMI.backgroundColor = UIColor(white: 0, alpha: 0.3525390625)
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
        contentView.addSubview(HiSINNAMIaestheticEcho)
        contentView.addSubview(HiSINNAMIpolishTone)
        HiSINNAMIpolishTone.addSubview(HiSINNAMIshineStudio)
        HiSINNAMIpolishTone.addSubview(HiSINNAMIcolorPulse)
        HiSINNAMIpolishTone.addSubview(HiSINNAMIpolishDetail)

        contentView.addSubview(HiSINNAMIfooterContainer)
        HiSINNAMIfooterContainer.addSubview(HiSINNAMIartisanEdge)
        HiSINNAMIfooterContainer.addSubview(HiSINNAMIaestheticEdge)

        contentView.addSubview(HiSINNAMIshapeMuse)
        contentView.addSubview(HiSINNAMIcraftVision)
        contentView.addSubview(HiSINNAMIstyleDiary)

        NSLayoutConstraint.activate([
            // aestheticEcho fills the cell
            HiSINNAMIaestheticEcho.topAnchor.constraint(equalTo: contentView.topAnchor),
            HiSINNAMIaestheticEcho.leadingAnchor.constraint(equalTo: contentView.leadingAnchor),
            HiSINNAMIaestheticEcho.trailingAnchor.constraint(equalTo: contentView.trailingAnchor),
            HiSINNAMIaestheticEcho.bottomAnchor.constraint(equalTo: contentView.bottomAnchor),

            // polishTone top-left (match XIB sizes)
            HiSINNAMIpolishTone.topAnchor.constraint(equalTo: contentView.topAnchor, constant: 10),
            HiSINNAMIpolishTone.leadingAnchor.constraint(equalTo: contentView.leadingAnchor, constant: 10),
            HiSINNAMIpolishTone.widthAnchor.constraint(equalToConstant: 150),
            HiSINNAMIpolishTone.heightAnchor.constraint(equalToConstant: 52),

            // shineStudio inside polishTone
            HiSINNAMIshineStudio.leadingAnchor.constraint(equalTo: HiSINNAMIpolishTone.leadingAnchor, constant: 5),
            HiSINNAMIshineStudio.centerYAnchor.constraint(equalTo: HiSINNAMIpolishTone.centerYAnchor),
            HiSINNAMIshineStudio.widthAnchor.constraint(equalToConstant: 44),
            HiSINNAMIshineStudio.heightAnchor.constraint(equalToConstant: 44),

            // colorPulse label to the right of shineStudio
            HiSINNAMIcolorPulse.leadingAnchor.constraint(equalTo: HiSINNAMIshineStudio.trailingAnchor, constant: 5),
            HiSINNAMIcolorPulse.topAnchor.constraint(equalTo: HiSINNAMIshineStudio.topAnchor),
            HiSINNAMIcolorPulse.trailingAnchor.constraint(lessThanOrEqualTo: HiSINNAMIpolishTone.trailingAnchor, constant: -4),

            // polishDetail under colorPulse
            HiSINNAMIpolishDetail.leadingAnchor.constraint(equalTo: HiSINNAMIcolorPulse.leadingAnchor),
            HiSINNAMIpolishDetail.topAnchor.constraint(equalTo: HiSINNAMIcolorPulse.bottomAnchor, constant: 4),
            HiSINNAMIpolishDetail.trailingAnchor.constraint(lessThanOrEqualTo: HiSINNAMIpolishTone.trailingAnchor, constant: 1),

            // footerContainer at bottom
            HiSINNAMIfooterContainer.leadingAnchor.constraint(equalTo: contentView.leadingAnchor),
            HiSINNAMIfooterContainer.trailingAnchor.constraint(equalTo: contentView.trailingAnchor),
            HiSINNAMIfooterContainer.bottomAnchor.constraint(equalTo: contentView.bottomAnchor),
            HiSINNAMIfooterContainer.heightAnchor.constraint(equalToConstant: 75),

            // artisanEdge inside footer
            HiSINNAMIartisanEdge.leadingAnchor.constraint(equalTo: HiSINNAMIfooterContainer.leadingAnchor, constant: 11),
            HiSINNAMIartisanEdge.bottomAnchor.constraint(equalTo: HiSINNAMIfooterContainer.bottomAnchor, constant: -16),
            HiSINNAMIartisanEdge.trailingAnchor.constraint(equalTo: contentView.trailingAnchor, constant: -90),
            // aestheticEdge in footer
            HiSINNAMIaestheticEdge.trailingAnchor.constraint(equalTo: HiSINNAMIfooterContainer.trailingAnchor, constant: -21),
            HiSINNAMIaestheticEdge.centerYAnchor.constraint(equalTo: HiSINNAMIartisanEdge.centerYAnchor),
            HiSINNAMIaestheticEdge.widthAnchor.constraint(equalToConstant: 25),
            HiSINNAMIaestheticEdge.heightAnchor.constraint(equalToConstant: 25),

            // right-side buttons (52x52) arranged horizontally
            HiSINNAMIstyleDiary.trailingAnchor.constraint(equalTo: contentView.trailingAnchor, constant: -15),
            HiSINNAMIstyleDiary.widthAnchor.constraint(equalToConstant: 52),
            HiSINNAMIstyleDiary.heightAnchor.constraint(equalToConstant: 52),

            HiSINNAMIcraftVision.trailingAnchor.constraint(equalTo: HiSINNAMIstyleDiary.leadingAnchor, constant: -10),
            HiSINNAMIcraftVision.widthAnchor.constraint(equalToConstant: 52),
            HiSINNAMIcraftVision.heightAnchor.constraint(equalToConstant: 52),

            HiSINNAMIshapeMuse.trailingAnchor.constraint(equalTo: HiSINNAMIcraftVision.leadingAnchor, constant: -10),
            HiSINNAMIshapeMuse.widthAnchor.constraint(equalToConstant: 52),
            HiSINNAMIshapeMuse.heightAnchor.constraint(equalToConstant: 52),

            // align vertically (slightly above bottom to match XIB)
            HiSINNAMIcraftVision.centerYAnchor.constraint(equalTo: contentView.bottomAnchor, constant: -66),
            HiSINNAMIstyleDiary.centerYAnchor.constraint(equalTo: HiSINNAMIcraftVision.centerYAnchor),
            HiSINNAMIshapeMuse.centerYAnchor.constraint(equalTo: HiSINNAMIcraftVision.centerYAnchor)
        ])

        // visual tweaks from original XIB/awakeFromNib
        self.layer.masksToBounds = true
        self.layer.cornerRadius = 15

        HiSINNAMIshineStudio.layer.cornerRadius = 22
        HiSINNAMIshineStudio.layer.masksToBounds = true
        HiSINNAMIpolishTone.layer.cornerRadius = 8
        HiSINNAMIpolishTone.layer.masksToBounds = true
    }

    override func prepareForReuse() {
        super.prepareForReuse()
        HiSINNAMIaestheticEcho.image = nil
        HiSINNAMIshineStudio.image = nil
        HiSINNAMIartisanEdge.text = nil
        HiSINNAMIcolorPulse.text = nil
    }
}
