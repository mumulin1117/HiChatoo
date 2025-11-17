//
//  DeedntCell.swift
//  HiSinCtohoo
//
//  Created by  on 2025/10/9.
//

import UIKit

class DeedntCell: UICollectionViewCell {

    // keep the same external interface names
    let addLeiok: UIImageView = {
        let iv = UIImageView()
        iv.contentMode = .scaleAspectFill
        iv.translatesAutoresizingMaskIntoConstraints = false
        return iv
    }()

    let Ninme: UILabel = {
        let label = UILabel()
        label.translatesAutoresizingMaskIntoConstraints = false
        label.text = "Label"
        label.textAlignment = .center
        label.font = UIFont.systemFont(ofSize: 14)
        label.textColor = .white
        return label
    }()

    // decorative image from XIB (artSpirit)
    private let artSpiritView: UIImageView = {
        let iv = UIImageView()
        iv.contentMode = .scaleAspectFit
        iv.image = UIImage(named: "artSpirit")
        iv.translatesAutoresizingMaskIntoConstraints = false
        return iv
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
        contentView.addSubview(addLeiok)
        contentView.addSubview(artSpiritView)
        contentView.addSubview(Ninme)

        // replicate XIB constants
        NSLayoutConstraint.activate([
            // addLeiok: width 64, height 64, top ~7.6667, centerX
            addLeiok.widthAnchor.constraint(equalToConstant: 64),
            addLeiok.heightAnchor.constraint(equalToConstant: 64),
            addLeiok.topAnchor.constraint(equalTo: contentView.topAnchor, constant: 7.6666666666666643),
            addLeiok.centerXAnchor.constraint(equalTo: contentView.centerXAnchor),

            // artSpiritView: width 72, height 72, top 5, centerX
            artSpiritView.widthAnchor.constraint(equalToConstant: 72),
            artSpiritView.heightAnchor.constraint(equalToConstant: 72),
            artSpiritView.topAnchor.constraint(equalTo: contentView.topAnchor, constant: 5),
            artSpiritView.centerXAnchor.constraint(equalTo: contentView.centerXAnchor),

            // Ninme label: top = artSpirit.bottom, centered, height 19
            Ninme.topAnchor.constraint(equalTo: artSpiritView.bottomAnchor),
            Ninme.centerXAnchor.constraint(equalTo: artSpiritView.centerXAnchor),
            Ninme.heightAnchor.constraint(equalToConstant: 19)
        ])

        // match original appearance
        addLeiok.layer.cornerRadius = 36
        addLeiok.layer.masksToBounds = true
        addLeiok.clipsToBounds = true
    }

    override func prepareForReuse() {
        super.prepareForReuse()
        addLeiok.image = nil
        Ninme.text = nil
    }
}
