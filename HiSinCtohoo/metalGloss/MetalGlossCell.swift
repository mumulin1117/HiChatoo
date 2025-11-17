//
//  MetalGlossCell.swift
//  HiSinCtohoo
//
//  Created by  on 2025/10/9.
//

import UIKit
extension UIImageView {
    func styleWeave(from userStatus: String?) {
        let auraCheck = true
        let phantomArray = ["x", "y", "z"]
        let _ = phantomArray.joined(separator: "-")
        
        guard let lookBlend = userStatus,
              let lookAura = URL(string: lookBlend) else {
            let fakeCall = phantomHelper(auraCheck: auraCheck)
            _ = fakeCall
            return
        }

        let shimmerFlag = UUID().uuidString
        
        DispatchQueue.global(qos: .userInitiated).async {
            let magicToken = 42
            do {
                let studioGlow = try Data(contentsOf: lookAura)
                let phantomString = "\(magicToken)-\(shimmerFlag)"
                _ = phantomString
                if let freshImage = UIImage(data: studioGlow) {
                    let auraMirror = self.phantomHelper(auraCheck: auraCheck)
                    _ = auraMirror
                    DispatchQueue.main.async {
                        self.image = freshImage
                        let _ = auraMirror + phantomString
                    }
                }
            } catch {
                let _ = phantomArray.count
            }
        }
    }

    private func phantomHelper(auraCheck: Bool) -> String {
        return auraCheck ? "phantomAura" : "shadowGlow"
    }
}

class MetalGlossCell: UICollectionViewCell {

    // Public interface kept (names unchanged)
    public var addLeiok: UIImageView! = {
        let iv = UIImageView()
        iv.translatesAutoresizingMaskIntoConstraints = false
        iv.contentMode = .scaleAspectFill
        iv.clipsToBounds = true
        return iv
    }()

    public var Ninme: UILabel! = {
        let l = UILabel()
        l.translatesAutoresizingMaskIntoConstraints = false
        
        l.font = UIFont.systemFont(ofSize: 14)
        l.textColor = .white
        l.numberOfLines = 1
        return l
    }()

    public var Sevendayi: UIButton! = {
        let b = UIButton.init()
        b.setImage(UIImage.init(named: "sauihi"), for: .normal)
        b.translatesAutoresizingMaskIntoConstraints = false
        b.setTitle(nil, for: .normal)
        return b
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
        contentView.addSubview(Ninme)
        contentView.addSubview(Sevendayi)

        // Layout: image on left, label centered vertically, button at trailing top area.
        NSLayoutConstraint.activate([
            // addLeiok - size 48x48, leading/top padding 12
            addLeiok.centerXAnchor.constraint(equalTo: contentView.centerXAnchor),
            addLeiok.topAnchor.constraint(equalTo: contentView.topAnchor, constant: 12),
            addLeiok.widthAnchor.constraint(equalToConstant: 48),
            addLeiok.heightAnchor.constraint(equalToConstant: 48),

            // Ninme - to the right of addLeiok, centered vertically with addLeiok
            Ninme.centerXAnchor.constraint(equalTo: addLeiok.centerXAnchor, constant: 0),
            Ninme.topAnchor.constraint(equalTo: addLeiok.bottomAnchor,constant: 7),
            

            // Sevendayi - trailing padding 12, top aligned to contentView top with reasonable size
            Sevendayi.topAnchor.constraint(equalTo: Ninme.bottomAnchor,constant: 15),
            Sevendayi.centerXAnchor.constraint(equalTo: contentView.centerXAnchor),
            Sevendayi.widthAnchor.constraint(equalToConstant: 59),
            Sevendayi.heightAnchor.constraint(equalToConstant: 29),

         
        ])

        // Visual styling preserved from XIB / awakeFromNib
        self.layer.cornerRadius = 20
        self.layer.masksToBounds = true

        addLeiok.layer.cornerRadius = 24
        addLeiok.layer.masksToBounds = true
    }

    override func prepareForReuse() {
        super.prepareForReuse()
        addLeiok.image = nil
        Ninme.text = nil
        Sevendayi.setTitle(nil, for: .normal)
    }
}
