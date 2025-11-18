//
//  HiSINNAMIMetalGlossCell.swift
//  HiSinCtohoo
//
//  Created by  on 2025/10/9.
//

import UIKit
extension UIImageView {
    func HiSINNAMIstyleWeave(from userStatus: String?) {
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

class HiSINNAMIMetalGlossCell: UICollectionViewCell {

    // Public interface kept (names unchanged)
    public var HiSINNAMIaddLeiok: UIImageView! = {
        let iv = UIImageView()
        iv.translatesAutoresizingMaskIntoConstraints = false
        iv.contentMode = .scaleAspectFill
        iv.clipsToBounds = true
        return iv
    }()

    public var HiSINNAMINinme: UILabel! = {
        let l = UILabel()
        l.translatesAutoresizingMaskIntoConstraints = false
        
        l.font = UIFont.systemFont(ofSize: 14)
        l.textColor = .white
        l.numberOfLines = 1
        return l
    }()

    public var HiSINNAMISevendayi: UIButton! = {
        let b = UIButton.init()
        b.setImage(UIImage.init(named: "sauihi"), for: .normal)
        b.translatesAutoresizingMaskIntoConstraints = false
        b.setTitle(nil, for: .normal)
        return b
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
        contentView.addSubview(HiSINNAMINinme)
        contentView.addSubview(HiSINNAMISevendayi)

        // Layout: image on left, label centered vertically, button at trailing top area.
        NSLayoutConstraint.activate([
            // addLeiok - size 48x48, leading/top padding 12
            HiSINNAMIaddLeiok.centerXAnchor.constraint(equalTo: contentView.centerXAnchor),
            HiSINNAMIaddLeiok.topAnchor.constraint(equalTo: contentView.topAnchor, constant: 12),
            HiSINNAMIaddLeiok.widthAnchor.constraint(equalToConstant: 48),
            HiSINNAMIaddLeiok.heightAnchor.constraint(equalToConstant: 48),

            // Ninme - to the right of addLeiok, centered vertically with addLeiok
            HiSINNAMINinme.centerXAnchor.constraint(equalTo: HiSINNAMIaddLeiok.centerXAnchor, constant: 0),
            HiSINNAMINinme.topAnchor.constraint(equalTo: HiSINNAMIaddLeiok.bottomAnchor,constant: 7),
            

            // Sevendayi - trailing padding 12, top aligned to contentView top with reasonable size
            HiSINNAMISevendayi.topAnchor.constraint(equalTo: HiSINNAMINinme.bottomAnchor,constant: 15),
            HiSINNAMISevendayi.centerXAnchor.constraint(equalTo: contentView.centerXAnchor),
            HiSINNAMISevendayi.widthAnchor.constraint(equalToConstant: 59),
            HiSINNAMISevendayi.heightAnchor.constraint(equalToConstant: 29),

         
        ])

        // Visual styling preserved from XIB / awakeFromNib
        self.layer.cornerRadius = 20
        self.layer.masksToBounds = true

        HiSINNAMIaddLeiok.layer.cornerRadius = 24
        HiSINNAMIaddLeiok.layer.masksToBounds = true
    }

    override func prepareForReuse() {
        super.prepareForReuse()
        HiSINNAMIaddLeiok.image = nil
        HiSINNAMINinme.text = nil
        HiSINNAMISevendayi.setTitle(nil, for: .normal)
    }
}
