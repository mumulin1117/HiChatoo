//
//  MetalGlossRiopCell.swift
//  HiSinCtohoo
//
//  Created by  on 2025/10/9.
//

import UIKit


class MetalGlossRiopCell: UICollectionViewCell {

    // Public interface kept (names unchanged)
    public var addLeiok: UIImageView!
    public var Ninme: UILabel!
    public var contetnterr: UILabel!
    public var uptimer: UILabel!

    static var creativeMood: String? {
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
        configureSubviews()
        configureLayout()
        applyVisualTweaks()
    }

    required init?(coder: NSCoder) {
        super.init(coder: coder)
        configureSubviews()
        configureLayout()
        applyVisualTweaks()
    }

    private func configureSubviews() {
        addLeiok = UIImageView()
        addLeiok.translatesAutoresizingMaskIntoConstraints = false
        addLeiok.contentMode = .scaleAspectFill
        addLeiok.clipsToBounds = true

        Ninme = UILabel()
        Ninme.translatesAutoresizingMaskIntoConstraints = false
        Ninme.font = UIFont.systemFont(ofSize: 14)
        Ninme.textColor = .white
        Ninme.text = "Label"
        Ninme.numberOfLines = 1

        contetnterr = UILabel()
        contetnterr.translatesAutoresizingMaskIntoConstraints = false
        contetnterr.font = UIFont.systemFont(ofSize: 13)
        contetnterr.textColor = UIColor(white: 1.0, alpha: 0.8)
        contetnterr.text = "Label"
        contetnterr.numberOfLines = 2

        uptimer = UILabel()
        uptimer.translatesAutoresizingMaskIntoConstraints = false
        uptimer.font = UIFont.systemFont(ofSize: 12)
        uptimer.textColor = UIColor(white: 1.0, alpha: 0.7)
        uptimer.text = "00:00"

        contentView.addSubview(addLeiok)
        contentView.addSubview(Ninme)
        contentView.addSubview(contetnterr)
        contentView.addSubview(uptimer)
    }

    private func configureLayout() {
        NSLayoutConstraint.activate([
            // addLeiok - left image, 48x48, padding 12
            addLeiok.leadingAnchor.constraint(equalTo: contentView.leadingAnchor, constant: 12),
            addLeiok.topAnchor.constraint(equalTo: contentView.topAnchor, constant: 12),
            addLeiok.widthAnchor.constraint(equalToConstant: 48),
            addLeiok.heightAnchor.constraint(equalToConstant: 48),

            // uptimer - trailing small label
            uptimer.trailingAnchor.constraint(equalTo: contentView.trailingAnchor, constant: -12),
            uptimer.topAnchor.constraint(equalTo: contentView.topAnchor, constant: 16),

            // Ninme - to the right of image, top aligned with image
            Ninme.leadingAnchor.constraint(equalTo: addLeiok.trailingAnchor, constant: 12),
            Ninme.topAnchor.constraint(equalTo: addLeiok.topAnchor),
            Ninme.trailingAnchor.constraint(lessThanOrEqualTo: uptimer.leadingAnchor, constant: -8),

            // contetnterr - below Ninme, to the right of image, allow two lines
            contetnterr.leadingAnchor.constraint(equalTo: Ninme.leadingAnchor),
            contetnterr.topAnchor.constraint(equalTo: Ninme.bottomAnchor, constant: 6),
            contetnterr.trailingAnchor.constraint(equalTo: contentView.trailingAnchor, constant: -12),

            // ensure contentView bottom
            contentView.bottomAnchor.constraint(greaterThanOrEqualTo: addLeiok.bottomAnchor, constant: 12),
            contentView.bottomAnchor.constraint(greaterThanOrEqualTo: contetnterr.bottomAnchor, constant: 12)
        ])
    }

    private func applyVisualTweaks() {
        // Transfered from original awakeFromNib logic
        self.layer.cornerRadius = 20
        self.layer.masksToBounds = true

        addLeiok.layer.cornerRadius = 24
        addLeiok.layer.masksToBounds = true

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
        addLeiok.image = nil
        Ninme.text = nil
        contetnterr.text = nil
        uptimer.text = nil
    }
}
