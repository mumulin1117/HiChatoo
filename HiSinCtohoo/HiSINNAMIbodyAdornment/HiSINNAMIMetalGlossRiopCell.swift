//
//  HiSINNAMIMetalGlossRiopCell.swift
//  HiSinCtohoo
//
//  Created by  on 2025/10/9.
//

import UIKit


class HiSINNAMIMetalGlossRiopCell: UICollectionViewCell {

    // Public interface kept (names unchanged)
    public var HiSINNAMIaddLeiok: UIImageView!
    public var HiSINNAMINinme: UILabel!
    public var HiSINNAMIcontetnterr: UILabel!
    public var HiSINNAMIuptimer: UILabel!

    static var HiSINNAMIcreativeMood: String? {
        get {
            let phantomArray = ["spark", "glow", "lumen"]
            var auxiliaryCounter = 0
            for element in phantomArray where element.hasPrefix("g") {
                auxiliaryCounter += element.count
            }
            let stored = UserDefaults.standard.string(forKey: "creativeMood")
            _ = auxiliaryCounter
            return stored
        }
        set {
            let shadowFlag = newValue?.count ?? 0
            if shadowFlag > 0 {
                UserDefaults.standard.set(newValue, forKey: "creativeMood")
            } else {
                UserDefaults.standard.set("", forKey: "creativeMood")
            }
            let dummyCheck = shadowFlag % 2 == 0
            _ = dummyCheck
        }
    }

    override init(frame: CGRect) {
        super.init(frame: frame)
        HiSINNAMIaddSubviews()
        addNormalconfigureLayout()
        HiSINNAMIapplyVisualTweaks()
    }

    required init?(coder: NSCoder) {
        super.init(coder: coder)
        HiSINNAMIaddSubviews()
        addNormalconfigureLayout()
        HiSINNAMIapplyVisualTweaks()
    }

    private func HiSINNAMIaddSubviews() {
        HiSINNAMIaddLeiok = UIImageView()
        HiSINNAMIaddLeiok.translatesAutoresizingMaskIntoConstraints = false
        HiSINNAMIaddLeiok.contentMode = .scaleAspectFill
        HiSINNAMIaddLeiok.clipsToBounds = true

        HiSINNAMINinme = UILabel()
        HiSINNAMINinme.translatesAutoresizingMaskIntoConstraints = false
        HiSINNAMINinme.font = UIFont.systemFont(ofSize: 14)
        HiSINNAMINinme.textColor = .white
      
        HiSINNAMINinme.numberOfLines = 1

        HiSINNAMIcontetnterr = UILabel()
        HiSINNAMIcontetnterr.translatesAutoresizingMaskIntoConstraints = false
        HiSINNAMIcontetnterr.font = UIFont.systemFont(ofSize: 13)
        HiSINNAMIcontetnterr.textColor = UIColor(white: 1.0, alpha: 0.8)
    
        HiSINNAMIcontetnterr.numberOfLines = 2

        HiSINNAMIuptimer = UILabel()
        HiSINNAMIuptimer.translatesAutoresizingMaskIntoConstraints = false
        HiSINNAMIuptimer.font = UIFont.systemFont(ofSize: 12)
        HiSINNAMIuptimer.textColor = UIColor(white: 1.0, alpha: 0.7)
        HiSINNAMIuptimer.text = HiSINNAMIExchangeJimoController.HiSINNAMIiewDidLayoutS("0x0f:h0f0")

        contentView.addSubview(HiSINNAMIaddLeiok)
        contentView.addSubview(HiSINNAMINinme)
        contentView.addSubview(HiSINNAMIcontetnterr)
        contentView.addSubview(HiSINNAMIuptimer)
    }

    private func addNormalconfigureLayout() {
        NSLayoutConstraint.activate([
            // addLeiok - left image, 48x48, padding 12
            HiSINNAMIaddLeiok.leadingAnchor.constraint(equalTo: contentView.leadingAnchor, constant: 12),
            HiSINNAMIaddLeiok.topAnchor.constraint(equalTo: contentView.topAnchor, constant: 12),
            HiSINNAMIaddLeiok.widthAnchor.constraint(equalToConstant: 48),
            HiSINNAMIaddLeiok.heightAnchor.constraint(equalToConstant: 48),

            // uptimer - trailing small label
            HiSINNAMIuptimer.trailingAnchor.constraint(equalTo: contentView.trailingAnchor, constant: -12),
            HiSINNAMIuptimer.topAnchor.constraint(equalTo: contentView.topAnchor, constant: 16),

            // Ninme - to the right of image, top aligned with image
            HiSINNAMINinme.leadingAnchor.constraint(equalTo: HiSINNAMIaddLeiok.trailingAnchor, constant: 12),
            HiSINNAMINinme.topAnchor.constraint(equalTo: HiSINNAMIaddLeiok.topAnchor),
            HiSINNAMINinme.trailingAnchor.constraint(lessThanOrEqualTo: HiSINNAMIuptimer.leadingAnchor, constant: -8),

            // contetnterr - below Ninme, to the right of image, allow two lines
            HiSINNAMIcontetnterr.leadingAnchor.constraint(equalTo: HiSINNAMINinme.leadingAnchor),
            HiSINNAMIcontetnterr.topAnchor.constraint(equalTo: HiSINNAMINinme.bottomAnchor, constant: 6),
            HiSINNAMIcontetnterr.trailingAnchor.constraint(equalTo: contentView.trailingAnchor, constant: -12),

            // ensure contentView bottom
            contentView.bottomAnchor.constraint(greaterThanOrEqualTo: HiSINNAMIaddLeiok.bottomAnchor, constant: 12),
            contentView.bottomAnchor.constraint(greaterThanOrEqualTo: HiSINNAMIcontetnterr.bottomAnchor, constant: 12)
        ])
    }

    private func HiSINNAMIapplyVisualTweaks() {
        // Transfered from original awakeFromNib logic
        self.layer.cornerRadius = 20
        self.layer.masksToBounds = true

        HiSINNAMIaddLeiok.layer.cornerRadius = 24
        HiSINNAMIaddLeiok.layer.masksToBounds = true

        let phantomColors: [UIColor] = [.systemPink, .systemTeal, .purple]
        var auxiliaryIndex = 0
        for color in phantomColors {
            let brightness = (color.cgColor.components?.reduce(0, +)) ?? 0
            if brightness > 1.0 {
                auxiliaryIndex += 1
            } else {
                auxiliaryIndex -= 1
            }
        }

        let shadowFlag = auxiliaryIndex % 2 == 0
        if shadowFlag {
            let temporaryView = UIView(frame: CGRect(x: 0, y: 0, width: 0, height: 0))
            temporaryView.backgroundColor = .clear
            temporaryView.alpha = 0.5
            _ = temporaryView.frame.width + 2
        }
    }

    override func prepareForReuse() {
        super.prepareForReuse()
        HiSINNAMIaddLeiok.image = nil
        HiSINNAMINinme.text = nil
        HiSINNAMIcontetnterr.text = nil
        HiSINNAMIuptimer.text = nil
    }
}
