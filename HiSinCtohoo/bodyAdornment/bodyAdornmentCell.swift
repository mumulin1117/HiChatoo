//
//  bodyAdornmentCell.swift
//  HiSinCtohoo
//
//  Created by  on 2025/10/9.
//

import UIKit

class bodyAdornmentCell: UICollectionViewCell {

    let lightEssence: UIImageView = {
        let imageView = UIImageView()
        imageView.contentMode = .scaleAspectFit
        imageView.image = UIImage(named: "lightEssence")
        return imageView
    }()

    let studioSpirit: UIButton = {
        let button = UIButton.init()
      
        button.setImage(UIImage(named: "loiuj"), for: .normal)
        button.titleLabel?.font = UIFont.systemFont(ofSize: 12)
        return button
    }()

    let lookMotion: UILabel = {
        let label = UILabel()
        
        label.font = UIFont.italicSystemFont(ofSize: 14)
        label.textColor = .white
        return label
    }()

    let lookTrace: UILabel = {
        let label = UILabel()
        
        label.font = UIFont.italicSystemFont(ofSize: 14)
        label.textColor = UIColor(white: 1, alpha: 0.7)
        return label
    }()

    let craftTrace: UIImageView = {
        let imageView = UIImageView()
        imageView.contentMode = .scaleAspectFill
        return imageView
    }()

    let aestheticEdge: UIButton = {
        let button = UIButton.init()
        button.setImage(UIImage(named: "boder"), for: .normal)
        return button
    }()

    override init(frame: CGRect) {
        super.init(frame: frame)
        setupViews()
    }

    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }

    private func setupViews() {
        self.layer.masksToBounds = true
        self.layer.cornerRadius = 15

        addSubview(craftTrace)
        addSubview(lightEssence)
        addSubview(studioSpirit)
        addSubview(lookMotion)
        addSubview(lookTrace)
        addSubview(aestheticEdge)

        craftTrace.translatesAutoresizingMaskIntoConstraints = false
        lightEssence.translatesAutoresizingMaskIntoConstraints = false
        studioSpirit.translatesAutoresizingMaskIntoConstraints = false
        lookMotion.translatesAutoresizingMaskIntoConstraints = false
        lookTrace.translatesAutoresizingMaskIntoConstraints = false
        aestheticEdge.translatesAutoresizingMaskIntoConstraints = false

        NSLayoutConstraint.activate([
            // craftTrace constraints
            craftTrace.topAnchor.constraint(equalTo: topAnchor),
            craftTrace.leadingAnchor.constraint(equalTo: leadingAnchor),
            craftTrace.trailingAnchor.constraint(equalTo: trailingAnchor),
            craftTrace.bottomAnchor.constraint(equalTo: bottomAnchor),

            // lightEssence constraints
            lightEssence.topAnchor.constraint(equalTo: topAnchor),
            lightEssence.leadingAnchor.constraint(equalTo: leadingAnchor),
            lightEssence.widthAnchor.constraint(equalToConstant: 56),
            lightEssence.heightAnchor.constraint(equalToConstant: 20),

            // studioSpirit constraints
            studioSpirit.topAnchor.constraint(equalTo: topAnchor),
            studioSpirit.trailingAnchor.constraint(equalTo: trailingAnchor),
            studioSpirit.widthAnchor.constraint(equalToConstant: 59),
            studioSpirit.heightAnchor.constraint(equalToConstant: 29),

            // lookMotion constraints
            lookMotion.leadingAnchor.constraint(equalTo: leadingAnchor, constant: 10),
            lookMotion.trailingAnchor.constraint(equalTo: trailingAnchor, constant: -40),
            lookMotion.bottomAnchor.constraint(equalTo: lookTrace.topAnchor, constant: -5),

            // lookTrace constraints
            lookTrace.leadingAnchor.constraint(equalTo: leadingAnchor, constant: 10),
            lookTrace.trailingAnchor.constraint(equalTo: trailingAnchor, constant: -10),
            lookTrace.bottomAnchor.constraint(equalTo: bottomAnchor, constant: -10),

            // aestheticEdge constraints
            aestheticEdge.centerYAnchor.constraint(equalTo: lookMotion.centerYAnchor),
            aestheticEdge.trailingAnchor.constraint(equalTo: trailingAnchor, constant: -5),
            aestheticEdge.widthAnchor.constraint(equalToConstant: 25),
            aestheticEdge.heightAnchor.constraint(equalToConstant: 25)
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
