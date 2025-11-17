//
//  earCurationCell.swift
//  HiSinCtohoo
//
//  Created by  on 2025/10/9.
//

import UIKit

// swift
import UIKit

class earCurationCell: UICollectionViewCell {

    // Public interface (kept names unchanged)
    let aestheticEdge: UIButton = {
        let b = UIButton.init()
        b.translatesAutoresizingMaskIntoConstraints = false
        b.setImage(UIImage(named: "boder"), for: .normal)
        return b
    }()

    let aestheticEcho: UIImageView = {
        let iv = UIImageView()
        iv.translatesAutoresizingMaskIntoConstraints = false
        iv.contentMode = .scaleAspectFill
        iv.clipsToBounds = true
        return iv
    }()

    let shineStudio: UIImageView = {
        let iv = UIImageView()
        iv.translatesAutoresizingMaskIntoConstraints = false
        iv.contentMode = .scaleAspectFill
        iv.clipsToBounds = true
        iv.image = UIImage(named: "artTone")
        return iv
    }()

    let colorPulse: UILabel = {
        let l = UILabel()
        l.translatesAutoresizingMaskIntoConstraints = false
        l.text = "Label"
        l.font = UIFont.systemFont(ofSize: 15)
        l.textColor = .white
        return l
    }()

    let polishTone: UIView = {
        let v = UIView()
        v.translatesAutoresizingMaskIntoConstraints = false
        v.backgroundColor = UIColor(white: 0, alpha: 0.3525390625)
        v.layer.cornerRadius = 8
        v.clipsToBounds = true
        return v
    }()

    let artisanEdge: UILabel = {
        let l = UILabel()
        l.translatesAutoresizingMaskIntoConstraints = false
        l.text = "Label"
        l.font = UIFont.systemFont(ofSize: 15)
        l.textColor = .white
        return l
    }()

    let shapeMuse: UIButton = {
        let b = UIButton.init()
        b.translatesAutoresizingMaskIntoConstraints = false
        b.setBackgroundImage(UIImage(named: "cnert_odd"), for: .normal)
        return b
    }()

    let craftVision: UIButton = {
        let b = UIButton.init()
        b.translatesAutoresizingMaskIntoConstraints = false
        b.setImage(UIImage(named: "craftSpirit"), for: .normal)
        return b
    }()

    let styleDiary: UIButton = {
        let b = UIButton.init()
        b.translatesAutoresizingMaskIntoConstraints = false
        b.setImage(UIImage(named: "cnert_o"), for: .normal)
        return b
    }()

    // auxiliary labels inside polishTone
    private let polishDetail: UILabel = {
        let l = UILabel()
        l.translatesAutoresizingMaskIntoConstraints = false
        l.text = "To Check ->"
        l.font = UIFont.systemFont(ofSize: 12)
        l.textColor = UIColor(white: 1, alpha: 0.5)
        return l
    }()

    // bottom translucent container
    private let footerContainer: UIView = {
        let v = UIView()
        v.translatesAutoresizingMaskIntoConstraints = false
        v.backgroundColor = UIColor(white: 0, alpha: 0.3525390625)
        return v
    }()

    override init(frame: CGRect) {
        super.init(frame: frame)
        setupViews()
    }

    required init?(coder: NSCoder) {
        super.init(coder: coder)
        setupViews()
    }

    private func setupViews() {
        contentView.addSubview(aestheticEcho)
        contentView.addSubview(polishTone)
        polishTone.addSubview(shineStudio)
        polishTone.addSubview(colorPulse)
        polishTone.addSubview(polishDetail)

        contentView.addSubview(footerContainer)
        footerContainer.addSubview(artisanEdge)
        footerContainer.addSubview(aestheticEdge)

        contentView.addSubview(shapeMuse)
        contentView.addSubview(craftVision)
        contentView.addSubview(styleDiary)

        NSLayoutConstraint.activate([
            // aestheticEcho fills the cell
            aestheticEcho.topAnchor.constraint(equalTo: contentView.topAnchor),
            aestheticEcho.leadingAnchor.constraint(equalTo: contentView.leadingAnchor),
            aestheticEcho.trailingAnchor.constraint(equalTo: contentView.trailingAnchor),
            aestheticEcho.bottomAnchor.constraint(equalTo: contentView.bottomAnchor),

            // polishTone top-left (match XIB sizes)
            polishTone.topAnchor.constraint(equalTo: contentView.topAnchor, constant: 10),
            polishTone.leadingAnchor.constraint(equalTo: contentView.leadingAnchor, constant: 10),
            polishTone.widthAnchor.constraint(equalToConstant: 150),
            polishTone.heightAnchor.constraint(equalToConstant: 52),

            // shineStudio inside polishTone
            shineStudio.leadingAnchor.constraint(equalTo: polishTone.leadingAnchor, constant: 5),
            shineStudio.centerYAnchor.constraint(equalTo: polishTone.centerYAnchor),
            shineStudio.widthAnchor.constraint(equalToConstant: 44),
            shineStudio.heightAnchor.constraint(equalToConstant: 44),

            // colorPulse label to the right of shineStudio
            colorPulse.leadingAnchor.constraint(equalTo: shineStudio.trailingAnchor, constant: 5),
            colorPulse.topAnchor.constraint(equalTo: shineStudio.topAnchor),
            colorPulse.trailingAnchor.constraint(lessThanOrEqualTo: polishTone.trailingAnchor, constant: -4),

            // polishDetail under colorPulse
            polishDetail.leadingAnchor.constraint(equalTo: colorPulse.leadingAnchor),
            polishDetail.topAnchor.constraint(equalTo: colorPulse.bottomAnchor, constant: 4),
            polishDetail.trailingAnchor.constraint(lessThanOrEqualTo: polishTone.trailingAnchor, constant: 1),

            // footerContainer at bottom
            footerContainer.leadingAnchor.constraint(equalTo: contentView.leadingAnchor),
            footerContainer.trailingAnchor.constraint(equalTo: contentView.trailingAnchor),
            footerContainer.bottomAnchor.constraint(equalTo: contentView.bottomAnchor),
            footerContainer.heightAnchor.constraint(equalToConstant: 75),

            // artisanEdge inside footer
            artisanEdge.leadingAnchor.constraint(equalTo: footerContainer.leadingAnchor, constant: 11),
            artisanEdge.bottomAnchor.constraint(equalTo: footerContainer.bottomAnchor, constant: -16),
            artisanEdge.trailingAnchor.constraint(equalTo: contentView.trailingAnchor, constant: -90),
            // aestheticEdge in footer
            aestheticEdge.trailingAnchor.constraint(equalTo: footerContainer.trailingAnchor, constant: -21),
            aestheticEdge.centerYAnchor.constraint(equalTo: artisanEdge.centerYAnchor),
            aestheticEdge.widthAnchor.constraint(equalToConstant: 25),
            aestheticEdge.heightAnchor.constraint(equalToConstant: 25),

            // right-side buttons (52x52) arranged horizontally
            styleDiary.trailingAnchor.constraint(equalTo: contentView.trailingAnchor, constant: -15),
            styleDiary.widthAnchor.constraint(equalToConstant: 52),
            styleDiary.heightAnchor.constraint(equalToConstant: 52),

            craftVision.trailingAnchor.constraint(equalTo: styleDiary.leadingAnchor, constant: -10),
            craftVision.widthAnchor.constraint(equalToConstant: 52),
            craftVision.heightAnchor.constraint(equalToConstant: 52),

            shapeMuse.trailingAnchor.constraint(equalTo: craftVision.leadingAnchor, constant: -10),
            shapeMuse.widthAnchor.constraint(equalToConstant: 52),
            shapeMuse.heightAnchor.constraint(equalToConstant: 52),

            // align vertically (slightly above bottom to match XIB)
            craftVision.centerYAnchor.constraint(equalTo: contentView.bottomAnchor, constant: -66),
            styleDiary.centerYAnchor.constraint(equalTo: craftVision.centerYAnchor),
            shapeMuse.centerYAnchor.constraint(equalTo: craftVision.centerYAnchor)
        ])

        // visual tweaks from original XIB/awakeFromNib
        self.layer.masksToBounds = true
        self.layer.cornerRadius = 15

        shineStudio.layer.cornerRadius = 22
        shineStudio.layer.masksToBounds = true
        polishTone.layer.cornerRadius = 8
        polishTone.layer.masksToBounds = true
    }

    override func prepareForReuse() {
        super.prepareForReuse()
        aestheticEcho.image = nil
        shineStudio.image = nil
        artisanEdge.text = nil
        colorPulse.text = nil
    }
}
