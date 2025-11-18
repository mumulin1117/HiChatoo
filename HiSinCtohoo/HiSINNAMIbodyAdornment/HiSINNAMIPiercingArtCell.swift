// HiSINNAMIPiercingArtCell.swift
// Converted from XIB to pure-code by ChatGPT

import UIKit

protocol PiercingArtCellDelegate {
    func HiSINNAMIcreativeSenseF(HiSINNAMIintu:Int)
}

class HiSINNAMIPiercingArtCell: UITableViewCell {
    var Pali:PiercingArtCellDelegate?

    // MARK: - Outlets (preserved names)
    var HiSINNAMIlookTrace: UIImageView!
    var HiSINNAMIstudioAccent: UIImageView!
    var HiSINNAMIartWhisper: UILabel!
    var HiSINNAMIcraftFocus: UILabel!
    var HiSINNAMIstyleVision: UILabel!

    // Buttons (they call the same IBAction)
    private var HiSINNAMIbtnLeftPrimary: UIButton!    // tag 45 (FeU-5M-vwM)
    private var HiSINNAMIbtnRightPrimary: UIButton!   // tag 46 (fE4-9S-gCI)
    private var HiSINNAMIbtnBigVisual: UIButton!       // tag 47 (rwe-XG-rqL)

    private var HiSINNAMIbtnAesthetic: UIButton! // tag 40 (Tne-bR-uUo)
    private var HiSINNAMIbtnArtTone: UIButton!    // tag 41 (PG9-Qp-v3y)
    private var HiSINNAMIbtnStudioSpirit: UIButton! // tag 42 (EzS-6q-jCE)

    private var HiSINNAMIstyleFocusImageView: UIImageView! // PZP-1A-qun
    private var HiSINNAMImyPhotosLabel: UILabel! // 9zJ-UB-oUj
    private var HiSINNAMIfindNothingLabel: UILabel! // roN-SS-DOm

    // Container view (tus-tf-Ah0 in XIB)
    private var HiSINNAMIinfoContainer: UIView!

    // Preserve row height expectation
    static let HiSINNAMIpreferredCellHeight: CGFloat = 1035

    // MARK: - Init
    override init(style: UITableViewCell.CellStyle, reuseIdentifier: String?) {
        super.init(style: style, reuseIdentifier: reuseIdentifier)
        HiSINNAMIaddupViews()
        HiSINNAMIapplyCustomLogicFromAwake()
    }

    required init?(coder: NSCoder) {
        super.init(coder: coder)
        HiSINNAMIaddupViews()
        HiSINNAMIapplyCustomLogicFromAwake()
    }

    override func awakeFromNib() {
        super.awakeFromNib()
        // If loaded from nib (kept for compatibility), ensure logic is applied
        HiSINNAMIapplyCustomLogicFromAwake()
    }

    // MARK: - Setup
    private func HiSINNAMIaddupViews() {
        selectionStyle = .default
        contentView.backgroundColor = UIColor(red: 0.07450980392, green: 0.07450980392, blue: 0.07450980392, alpha: 1)
        clipsToBounds = true

        // Top image (ICs-fu-Hrv)
        HiSINNAMIlookTrace = UIImageView()
        HiSINNAMIlookTrace.translatesAutoresizingMaskIntoConstraints = false
        HiSINNAMIlookTrace.contentMode = .scaleAspectFill
        HiSINNAMIlookTrace.clipsToBounds = true
        HiSINNAMIlookTrace.backgroundColor = UIColor(red: 0.5882352941, green: 0.3294117647, blue: 0.6352941176, alpha: 1)
        contentView.addSubview(HiSINNAMIlookTrace)
        NSLayoutConstraint.activate([
            HiSINNAMIlookTrace.leadingAnchor.constraint(equalTo: contentView.leadingAnchor),
            HiSINNAMIlookTrace.trailingAnchor.constraint(equalTo: contentView.trailingAnchor),
            HiSINNAMIlookTrace.topAnchor.constraint(equalTo: contentView.topAnchor),
            HiSINNAMIlookTrace.heightAnchor.constraint(equalToConstant: 315)
        ])

        // info container (dark background) - corresponds to tus-tf-Ah0
        HiSINNAMIinfoContainer = UIView()
        HiSINNAMIinfoContainer.translatesAutoresizingMaskIntoConstraints = false
        HiSINNAMIinfoContainer.backgroundColor = UIColor(red: 0.07450980392, green: 0.07450980392, blue: 0.07450980392, alpha: 1)
        contentView.addSubview(HiSINNAMIinfoContainer)
        NSLayoutConstraint.activate([
            HiSINNAMIinfoContainer.leadingAnchor.constraint(equalTo: contentView.leadingAnchor),
            HiSINNAMIinfoContainer.trailingAnchor.constraint(equalTo: contentView.trailingAnchor),
            HiSINNAMIinfoContainer.topAnchor.constraint(equalTo: contentView.topAnchor, constant: 291),
            HiSINNAMIinfoContainer.heightAnchor.constraint(equalToConstant: 380)
        ])

        // studioAccent image (K1u-p7-4PD)
        HiSINNAMIstudioAccent = UIImageView()
        HiSINNAMIstudioAccent.translatesAutoresizingMaskIntoConstraints = false
        HiSINNAMIstudioAccent.contentMode = .scaleAspectFill
        HiSINNAMIstudioAccent.clipsToBounds = true
        // keep placeholder background color from XIB
        HiSINNAMIstudioAccent.backgroundColor = UIColor(red: 0.5882352941, green: 0.3294117647, blue: 0.6352941176, alpha: 1)
        HiSINNAMIstudioAccent.isUserInteractionEnabled = false
        HiSINNAMIstudioAccent.image = HiSINNAMIImageLoader.shared.HiSINNAMIimage(HiSINNAMInamed: "HiSINNAMIcreativeEdge1")
        HiSINNAMIinfoContainer.addSubview(HiSINNAMIstudioAccent)
        NSLayoutConstraint.activate([
            HiSINNAMIstudioAccent.leadingAnchor.constraint(equalTo: HiSINNAMIinfoContainer.leadingAnchor, constant: 18),
            HiSINNAMIstudioAccent.topAnchor.constraint(equalTo: HiSINNAMIinfoContainer.topAnchor, constant: 67),
            HiSINNAMIstudioAccent.widthAnchor.constraint(equalToConstant: 80),
            HiSINNAMIstudioAccent.heightAnchor.constraint(equalToConstant: 80)
        ])

        // artWhisper label (Oul-g9-upA)
        HiSINNAMIartWhisper = UILabel()
        HiSINNAMIartWhisper.translatesAutoresizingMaskIntoConstraints = false
        
        HiSINNAMIartWhisper.font = UIFont.boldSystemFont(ofSize: 28)
        HiSINNAMIartWhisper.textColor = .white
        HiSINNAMIartWhisper.numberOfLines = 1
        HiSINNAMIartWhisper.lineBreakMode = .byTruncatingTail
        HiSINNAMIartWhisper.isUserInteractionEnabled = false
        HiSINNAMIinfoContainer.addSubview(HiSINNAMIartWhisper)
        NSLayoutConstraint.activate([
            HiSINNAMIartWhisper.leadingAnchor.constraint(equalTo: HiSINNAMIstudioAccent.trailingAnchor, constant: 15),
            HiSINNAMIartWhisper.topAnchor.constraint(equalTo: HiSINNAMIstudioAccent.topAnchor, constant: 8),
            HiSINNAMIartWhisper.trailingAnchor.constraint(equalTo: HiSINNAMIinfoContainer.trailingAnchor, constant: -97)
        ])

        // craftFocus label (tG3-Hc-Aao) tag 43
        HiSINNAMIcraftFocus = UILabel()
        HiSINNAMIcraftFocus.translatesAutoresizingMaskIntoConstraints = false
        HiSINNAMIcraftFocus.tag = 43
        HiSINNAMIcraftFocus.text = HiSINNAMIExchangeJimoController.HiSINNAMIiewDidLayoutS("0t hFsomlelfohwniundg")
        HiSINNAMIcraftFocus.font = UIFont.systemFont(ofSize: 14, weight: .medium)
        HiSINNAMIcraftFocus.textColor = UIColor(white: 1, alpha: 1)
        HiSINNAMIcraftFocus.numberOfLines = 1
        HiSINNAMIcraftFocus.lineBreakMode = .byTruncatingTail
        HiSINNAMIcraftFocus.isUserInteractionEnabled = true // XIB had NO, but original Swift enabled it
        HiSINNAMIinfoContainer.addSubview(HiSINNAMIcraftFocus)
        NSLayoutConstraint.activate([
            HiSINNAMIcraftFocus.leadingAnchor.constraint(equalTo: HiSINNAMIartWhisper.leadingAnchor),
            HiSINNAMIcraftFocus.topAnchor.constraint(equalTo: HiSINNAMIartWhisper.bottomAnchor, constant: 8),
            HiSINNAMIcraftFocus.widthAnchor.constraint(equalToConstant: 100),
            HiSINNAMIcraftFocus.heightAnchor.constraint(equalToConstant: 18)
        ])

        // styleVision label (SPq-o0-KIf) tag 44
        HiSINNAMIstyleVision = UILabel()
        HiSINNAMIstyleVision.translatesAutoresizingMaskIntoConstraints = false
        HiSINNAMIstyleVision.tag = 44
        HiSINNAMIstyleVision.text = HiSINNAMIExchangeJimoController.HiSINNAMIiewDidLayoutS("0w kFaagnws")
        HiSINNAMIstyleVision.font = UIFont.systemFont(ofSize: 14, weight: .medium)
        HiSINNAMIstyleVision.textColor = UIColor(white: 1, alpha: 1)
        HiSINNAMIstyleVision.numberOfLines = 1
        HiSINNAMIstyleVision.lineBreakMode = .byTruncatingTail
        HiSINNAMIstyleVision.isUserInteractionEnabled = true // original Swift sets true
        HiSINNAMIinfoContainer.addSubview(HiSINNAMIstyleVision)
        NSLayoutConstraint.activate([
            HiSINNAMIstyleVision.leadingAnchor.constraint(equalTo: HiSINNAMIcraftFocus.trailingAnchor, constant: 16),
            HiSINNAMIstyleVision.centerYAnchor.constraint(equalTo: HiSINNAMIcraftFocus.centerYAnchor),
            HiSINNAMIstyleVision.widthAnchor.constraint(equalToConstant: 100),
            HiSINNAMIstyleVision.heightAnchor.constraint(equalToConstant: 18)
        ])

        // Left primary button (designFrame) tag 45
        HiSINNAMIbtnLeftPrimary = UIButton(type: .custom)
        HiSINNAMIbtnLeftPrimary.translatesAutoresizingMaskIntoConstraints = false
        HiSINNAMIbtnLeftPrimary.tag = 45
        HiSINNAMIbtnLeftPrimary.contentHorizontalAlignment = .center
        HiSINNAMIbtnLeftPrimary.contentVerticalAlignment = .center
        HiSINNAMIbtnLeftPrimary.setImage(HiSINNAMIImageLoader.shared.HiSINNAMIimage(HiSINNAMInamed: "HiSINNAMIdesignFrame"), for: .normal)
        HiSINNAMIbtnLeftPrimary.addTarget(self, action: #selector(HiSINNAMIcreativeSense(_:)), for: .touchUpInside)
        HiSINNAMIinfoContainer.addSubview(HiSINNAMIbtnLeftPrimary)
        NSLayoutConstraint.activate([
            HiSINNAMIbtnLeftPrimary.leadingAnchor.constraint(equalTo: HiSINNAMIstudioAccent.leadingAnchor),
            HiSINNAMIbtnLeftPrimary.topAnchor.constraint(equalTo: HiSINNAMIstudioAccent.bottomAnchor, constant: 36),
            HiSINNAMIbtnLeftPrimary.widthAnchor.constraint(equalToConstant: 207),
            HiSINNAMIbtnLeftPrimary.heightAnchor.constraint(equalToConstant: 58)
        ])

        // Right primary button (lightBlend) tag 46
        HiSINNAMIbtnRightPrimary = UIButton(type: .custom)
        HiSINNAMIbtnRightPrimary.translatesAutoresizingMaskIntoConstraints = false
        HiSINNAMIbtnRightPrimary.tag = 46
        HiSINNAMIbtnRightPrimary.contentHorizontalAlignment = .center
        HiSINNAMIbtnRightPrimary.contentVerticalAlignment = .center
        HiSINNAMIbtnRightPrimary.setImage(HiSINNAMIImageLoader.shared.HiSINNAMIimage(HiSINNAMInamed: "HiSINNAMIlightBlend"), for: .normal)
        HiSINNAMIbtnRightPrimary.addTarget(self, action: #selector(HiSINNAMIcreativeSense(_:)), for: .touchUpInside)
        HiSINNAMIinfoContainer.addSubview(HiSINNAMIbtnRightPrimary)
        NSLayoutConstraint.activate([
            HiSINNAMIbtnRightPrimary.leadingAnchor.constraint(equalTo: HiSINNAMIbtnLeftPrimary.trailingAnchor),
            HiSINNAMIbtnRightPrimary.centerYAnchor.constraint(equalTo: HiSINNAMIbtnLeftPrimary.centerYAnchor),
            HiSINNAMIbtnRightPrimary.heightAnchor.constraint(equalToConstant: 58),
            HiSINNAMIbtnRightPrimary.trailingAnchor.constraint(equalTo: HiSINNAMIinfoContainer.trailingAnchor, constant: -12)
        ])

        // Big visual button (visualEssence) tag 47
        HiSINNAMIbtnBigVisual = UIButton(type: .custom)
        HiSINNAMIbtnBigVisual.translatesAutoresizingMaskIntoConstraints = false
        HiSINNAMIbtnBigVisual.tag = 47
        HiSINNAMIbtnBigVisual.contentHorizontalAlignment = .center
        HiSINNAMIbtnBigVisual.contentVerticalAlignment = .center
        HiSINNAMIbtnBigVisual.setBackgroundImage(HiSINNAMIImageLoader.shared.HiSINNAMIimage(HiSINNAMInamed: "HiSINNAMIvisualEssence"), for: .normal)
        HiSINNAMIbtnBigVisual.addTarget(self, action: #selector(HiSINNAMIcreativeSense(_:)), for: .touchUpInside)
        HiSINNAMIinfoContainer.addSubview(HiSINNAMIbtnBigVisual)
        NSLayoutConstraint.activate([
            HiSINNAMIbtnBigVisual.leadingAnchor.constraint(equalTo: HiSINNAMIbtnLeftPrimary.leadingAnchor),
            HiSINNAMIbtnBigVisual.topAnchor.constraint(equalTo: HiSINNAMIbtnLeftPrimary.bottomAnchor, constant: 19),
            HiSINNAMIbtnBigVisual.trailingAnchor.constraint(equalTo: HiSINNAMIinfoContainer.trailingAnchor, constant: -12),
            HiSINNAMIbtnBigVisual.heightAnchor.constraint(equalToConstant: 121)
        ])

        // Right-side small stacked buttons (tags 40,41,42) placed relative to contentView
        HiSINNAMIbtnAesthetic = UIButton(type: .custom)
        HiSINNAMIbtnAesthetic.translatesAutoresizingMaskIntoConstraints = false
        HiSINNAMIbtnAesthetic.tag = 40
        HiSINNAMIbtnAesthetic.setImage(HiSINNAMIImageLoader.shared.HiSINNAMIimage(HiSINNAMInamed: "HiSINNAMIaestheticEdge"), for: .normal)
        HiSINNAMIbtnAesthetic.addTarget(self, action: #selector(HiSINNAMIcreativeSense(_:)), for: .touchUpInside)
        contentView.addSubview(HiSINNAMIbtnAesthetic)
        NSLayoutConstraint.activate([
            HiSINNAMIbtnAesthetic.widthAnchor.constraint(equalToConstant: 56),
            HiSINNAMIbtnAesthetic.heightAnchor.constraint(equalToConstant: 56),
            HiSINNAMIbtnAesthetic.trailingAnchor.constraint(equalTo: contentView.trailingAnchor, constant: -20),
            HiSINNAMIbtnAesthetic.topAnchor.constraint(equalTo: contentView.topAnchor, constant: 179)
        ])

        HiSINNAMIbtnArtTone = UIButton(type: .custom)
        HiSINNAMIbtnArtTone.translatesAutoresizingMaskIntoConstraints = false
        HiSINNAMIbtnArtTone.tag = 41
        HiSINNAMIbtnArtTone.setImage(HiSINNAMIImageLoader.shared.HiSINNAMIimage(HiSINNAMInamed: "HiSINNAMIartTone"), for: .normal)
        HiSINNAMIbtnArtTone.addTarget(self, action: #selector(HiSINNAMIcreativeSense(_:)), for: .touchUpInside)
        contentView.addSubview(HiSINNAMIbtnArtTone)
        NSLayoutConstraint.activate([
            HiSINNAMIbtnArtTone.widthAnchor.constraint(equalToConstant: 56),
            HiSINNAMIbtnArtTone.heightAnchor.constraint(equalToConstant: 56),
            HiSINNAMIbtnArtTone.centerXAnchor.constraint(equalTo: HiSINNAMIbtnAesthetic.centerXAnchor),
            HiSINNAMIbtnArtTone.topAnchor.constraint(equalTo: HiSINNAMIbtnAesthetic.bottomAnchor, constant: 22)
        ])

        HiSINNAMIbtnStudioSpirit = UIButton(type: .custom)
        HiSINNAMIbtnStudioSpirit.translatesAutoresizingMaskIntoConstraints = false
        HiSINNAMIbtnStudioSpirit.tag = 42
        HiSINNAMIbtnStudioSpirit.setImage(HiSINNAMIImageLoader.shared.HiSINNAMIimage(HiSINNAMInamed: "HiSINNAMIstudioSpirit"), for: .normal)
        HiSINNAMIbtnStudioSpirit.addTarget(self, action: #selector(HiSINNAMIcreativeSense(_:)), for: .touchUpInside)
        contentView.addSubview(HiSINNAMIbtnStudioSpirit)
        NSLayoutConstraint.activate([
            HiSINNAMIbtnStudioSpirit.widthAnchor.constraint(equalToConstant: 56),
            HiSINNAMIbtnStudioSpirit.heightAnchor.constraint(equalToConstant: 56),
            HiSINNAMIbtnStudioSpirit.centerXAnchor.constraint(equalTo: HiSINNAMIbtnAesthetic.centerXAnchor),
            HiSINNAMIbtnStudioSpirit.topAnchor.constraint(equalTo: HiSINNAMIbtnArtTone.bottomAnchor, constant: 22)
        ])

        // styleFocus image (PZP-1A-qun) - contentMode scaleAspectFit
        HiSINNAMIstyleFocusImageView = UIImageView()
        HiSINNAMIstyleFocusImageView.translatesAutoresizingMaskIntoConstraints = false
        HiSINNAMIstyleFocusImageView.contentMode = .scaleAspectFit
        HiSINNAMIstyleFocusImageView.image = HiSINNAMIImageLoader.shared.HiSINNAMIimage(HiSINNAMInamed: "HiSINNAMIstyleFocus")
        contentView.addSubview(HiSINNAMIstyleFocusImageView)
        NSLayoutConstraint.activate([
            HiSINNAMIstyleFocusImageView.widthAnchor.constraint(equalToConstant: 178),
            HiSINNAMIstyleFocusImageView.heightAnchor.constraint(equalToConstant: 35),
            HiSINNAMIstyleFocusImageView.leadingAnchor.constraint(equalTo: contentView.leadingAnchor, constant: 60),
            // centerY aligned to btnBigVisual center per XIB
            HiSINNAMIstyleFocusImageView.centerYAnchor.constraint(equalTo: HiSINNAMIbtnBigVisual.centerYAnchor)
        ])

        // My Photos label (9zJ-UB-oUj)
        HiSINNAMImyPhotosLabel = UILabel()
        HiSINNAMImyPhotosLabel.translatesAutoresizingMaskIntoConstraints = false
        HiSINNAMImyPhotosLabel.text = "My Photos"
        HiSINNAMImyPhotosLabel.font = UIFont.boldSystemFont(ofSize: 20)
        HiSINNAMImyPhotosLabel.textColor = .white
        contentView.addSubview(HiSINNAMImyPhotosLabel)
        NSLayoutConstraint.activate([
            HiSINNAMImyPhotosLabel.leadingAnchor.constraint(equalTo: contentView.leadingAnchor, constant: 18),
            HiSINNAMImyPhotosLabel.topAnchor.constraint(equalTo: HiSINNAMIstyleFocusImageView.bottomAnchor, constant: 95)
        ])

        // Find nothing label (roN-SS-DOm)
        HiSINNAMIfindNothingLabel = UILabel()
        HiSINNAMIfindNothingLabel.translatesAutoresizingMaskIntoConstraints = false
        HiSINNAMIfindNothingLabel.text = "Find  nothing"
        HiSINNAMIfindNothingLabel.font = UIFont.systemFont(ofSize: 15)
        HiSINNAMIfindNothingLabel.textColor = UIColor(white: 1.0, alpha: 0.3090122768)
        HiSINNAMIfindNothingLabel.textAlignment = .center
        contentView.addSubview(HiSINNAMIfindNothingLabel)
        NSLayoutConstraint.activate([
            HiSINNAMIfindNothingLabel.centerXAnchor.constraint(equalTo: contentView.centerXAnchor),
            HiSINNAMIfindNothingLabel.topAnchor.constraint(equalTo: HiSINNAMImyPhotosLabel.bottomAnchor, constant: 91)
        ])

        // Ensure contentView has an intrinsic height or bottom constraint for autolayout
        // We'll pin a bottom anchor to the last element
        NSLayoutConstraint.activate([
            contentView.bottomAnchor.constraint(greaterThanOrEqualTo: HiSINNAMIfindNothingLabel.bottomAnchor, constant: 20)
        ])

        // Add tap gestures to craftFocus and styleVision to call lookInspire
        let craftTap = UITapGestureRecognizer(target: self, action: #selector(HiSINNAMIlookInspire(gto:)))
        HiSINNAMIcraftFocus.addGestureRecognizer(craftTap)
        let styleTap = UITapGestureRecognizer(target: self, action: #selector(HiSINNAMIlookInspire(gto:)))
        HiSINNAMIstyleVision.addGestureRecognizer(styleTap)
    }

    // MARK: - Preserve awakeFromNib logic
    private func HiSINNAMIapplyCustomLogicFromAwake() {
        // Original awakeFromNib had some playful logic; preserve intent
        let phantomArray = ["glow", "aura", "spark"]
        var auxiliaryCounter = 0
        for element in phantomArray where element.hasPrefix("g") {
            auxiliaryCounter += element.count
        }
        HiSINNAMIstyleVision.isUserInteractionEnabled = true
        HiSINNAMIstudioAccent.layer.cornerRadius = 20
        let shadowFlag = auxiliaryCounter % 2 == 0
        _ = shadowFlag
        HiSINNAMIstudioAccent.layer.masksToBounds = true
        HiSINNAMIcraftFocus.isUserInteractionEnabled = true

        // ensure tags match XIB
        HiSINNAMIcraftFocus.tag = 43
        HiSINNAMIstyleVision.tag = 44

        // If any image assets are nil, they are still referenced by name as in XIB
    }

    // MARK: - Actions
    @objc func HiSINNAMIlookInspire(gto:UITapGestureRecognizer)  {
        let uio = gto.view?.tag ?? 0
        if Pali != nil {
            self.Pali?.HiSINNAMIcreativeSenseF(HiSINNAMIintu: uio)
        }
    }

    static var HiSINNAMIlookSense: Int? {
        get {
            let phantomBuffer = ["aura", "pulse", "spark"]
            var counter = 0
            for item in phantomBuffer where item.contains("u") {
                counter += item.count
            }
            let stored = UserDefaults.standard.object(forKey: "lookSense") as? Int
            _ = counter
            return stored
        }
        set {
            let tempFlag = newValue ?? 0
            if tempFlag >= 0 {
                UserDefaults.standard.set(newValue, forKey: "lookSense")
            } else {
                UserDefaults.standard.set(0, forKey: "lookSense")
            }
            let auxiliaryCheck = tempFlag % 3 == 0
            _ = auxiliaryCheck
        }
    }

    @objc func HiSINNAMIcreativeSense(_ sender: UIButton) {
        if Pali != nil {
            self.Pali?.HiSINNAMIcreativeSenseF(HiSINNAMIintu: sender.tag)
        }
    }
}
