// PiercingArtCell.swift
// Converted from XIB to pure-code by ChatGPT

import UIKit

protocol PiercingArtCellDelegate {
    func creativeSenseF(intu:Int)
}

class PiercingArtCell: UITableViewCell {
    var Pali:PiercingArtCellDelegate?

    // MARK: - Outlets (preserved names)
    var lookTrace: UIImageView!
    var studioAccent: UIImageView!
    var artWhisper: UILabel!
    var craftFocus: UILabel!
    var styleVision: UILabel!

    // Buttons (they call the same IBAction)
    private var btnLeftPrimary: UIButton!    // tag 45 (FeU-5M-vwM)
    private var btnRightPrimary: UIButton!   // tag 46 (fE4-9S-gCI)
    private var btnBigVisual: UIButton!       // tag 47 (rwe-XG-rqL)

    private var btnAesthetic: UIButton! // tag 40 (Tne-bR-uUo)
    private var btnArtTone: UIButton!    // tag 41 (PG9-Qp-v3y)
    private var btnStudioSpirit: UIButton! // tag 42 (EzS-6q-jCE)

    private var styleFocusImageView: UIImageView! // PZP-1A-qun
    private var myPhotosLabel: UILabel! // 9zJ-UB-oUj
    private var findNothingLabel: UILabel! // roN-SS-DOm

    // Container view (tus-tf-Ah0 in XIB)
    private var infoContainer: UIView!

    // Preserve row height expectation
    static let preferredCellHeight: CGFloat = 1035

    // MARK: - Init
    override init(style: UITableViewCell.CellStyle, reuseIdentifier: String?) {
        super.init(style: style, reuseIdentifier: reuseIdentifier)
        setupViews()
        applyCustomLogicFromAwake()
    }

    required init?(coder: NSCoder) {
        super.init(coder: coder)
        setupViews()
        applyCustomLogicFromAwake()
    }

    override func awakeFromNib() {
        super.awakeFromNib()
        // If loaded from nib (kept for compatibility), ensure logic is applied
        applyCustomLogicFromAwake()
    }

    // MARK: - Setup
    private func setupViews() {
        selectionStyle = .default
        contentView.backgroundColor = UIColor(red: 0.07450980392, green: 0.07450980392, blue: 0.07450980392, alpha: 1)
        clipsToBounds = true

        // Top image (ICs-fu-Hrv)
        lookTrace = UIImageView()
        lookTrace.translatesAutoresizingMaskIntoConstraints = false
        lookTrace.contentMode = .scaleAspectFill
        lookTrace.clipsToBounds = true
        lookTrace.backgroundColor = UIColor(red: 0.5882352941, green: 0.3294117647, blue: 0.6352941176, alpha: 1)
        contentView.addSubview(lookTrace)
        NSLayoutConstraint.activate([
            lookTrace.leadingAnchor.constraint(equalTo: contentView.leadingAnchor),
            lookTrace.trailingAnchor.constraint(equalTo: contentView.trailingAnchor),
            lookTrace.topAnchor.constraint(equalTo: contentView.topAnchor),
            lookTrace.heightAnchor.constraint(equalToConstant: 315)
        ])

        // info container (dark background) - corresponds to tus-tf-Ah0
        infoContainer = UIView()
        infoContainer.translatesAutoresizingMaskIntoConstraints = false
        infoContainer.backgroundColor = UIColor(red: 0.07450980392, green: 0.07450980392, blue: 0.07450980392, alpha: 1)
        contentView.addSubview(infoContainer)
        NSLayoutConstraint.activate([
            infoContainer.leadingAnchor.constraint(equalTo: contentView.leadingAnchor),
            infoContainer.trailingAnchor.constraint(equalTo: contentView.trailingAnchor),
            infoContainer.topAnchor.constraint(equalTo: contentView.topAnchor, constant: 291),
            infoContainer.heightAnchor.constraint(equalToConstant: 380)
        ])

        // studioAccent image (K1u-p7-4PD)
        studioAccent = UIImageView()
        studioAccent.translatesAutoresizingMaskIntoConstraints = false
        studioAccent.contentMode = .scaleAspectFill
        studioAccent.clipsToBounds = true
        // keep placeholder background color from XIB
        studioAccent.backgroundColor = UIColor(red: 0.5882352941, green: 0.3294117647, blue: 0.6352941176, alpha: 1)
        studioAccent.isUserInteractionEnabled = false
        studioAccent.image = UIImage(named: "creativeEdge1")
        infoContainer.addSubview(studioAccent)
        NSLayoutConstraint.activate([
            studioAccent.leadingAnchor.constraint(equalTo: infoContainer.leadingAnchor, constant: 18),
            studioAccent.topAnchor.constraint(equalTo: infoContainer.topAnchor, constant: 67),
            studioAccent.widthAnchor.constraint(equalToConstant: 80),
            studioAccent.heightAnchor.constraint(equalToConstant: 80)
        ])

        // artWhisper label (Oul-g9-upA)
        artWhisper = UILabel()
        artWhisper.translatesAutoresizingMaskIntoConstraints = false
        artWhisper.text = "Label" // preserved default text
        artWhisper.font = UIFont.boldSystemFont(ofSize: 28)
        artWhisper.textColor = .white
        artWhisper.numberOfLines = 1
        artWhisper.lineBreakMode = .byTruncatingTail
        artWhisper.isUserInteractionEnabled = false
        infoContainer.addSubview(artWhisper)
        NSLayoutConstraint.activate([
            artWhisper.leadingAnchor.constraint(equalTo: studioAccent.trailingAnchor, constant: 15),
            artWhisper.topAnchor.constraint(equalTo: studioAccent.topAnchor, constant: 8),
            artWhisper.trailingAnchor.constraint(equalTo: infoContainer.trailingAnchor, constant: -97)
        ])

        // craftFocus label (tG3-Hc-Aao) tag 43
        craftFocus = UILabel()
        craftFocus.translatesAutoresizingMaskIntoConstraints = false
        craftFocus.tag = 43
        craftFocus.text = "0 Following"
        craftFocus.font = UIFont.systemFont(ofSize: 14, weight: .medium)
        craftFocus.textColor = UIColor(white: 1, alpha: 1)
        craftFocus.numberOfLines = 1
        craftFocus.lineBreakMode = .byTruncatingTail
        craftFocus.isUserInteractionEnabled = true // XIB had NO, but original Swift enabled it
        infoContainer.addSubview(craftFocus)
        NSLayoutConstraint.activate([
            craftFocus.leadingAnchor.constraint(equalTo: artWhisper.leadingAnchor),
            craftFocus.topAnchor.constraint(equalTo: artWhisper.bottomAnchor, constant: 8),
            craftFocus.widthAnchor.constraint(equalToConstant: 100),
            craftFocus.heightAnchor.constraint(equalToConstant: 18)
        ])

        // styleVision label (SPq-o0-KIf) tag 44
        styleVision = UILabel()
        styleVision.translatesAutoresizingMaskIntoConstraints = false
        styleVision.tag = 44
        styleVision.text = "0 Fans"
        styleVision.font = UIFont.systemFont(ofSize: 14, weight: .medium)
        styleVision.textColor = UIColor(white: 1, alpha: 1)
        styleVision.numberOfLines = 1
        styleVision.lineBreakMode = .byTruncatingTail
        styleVision.isUserInteractionEnabled = true // original Swift sets true
        infoContainer.addSubview(styleVision)
        NSLayoutConstraint.activate([
            styleVision.leadingAnchor.constraint(equalTo: craftFocus.trailingAnchor, constant: 16),
            styleVision.centerYAnchor.constraint(equalTo: craftFocus.centerYAnchor),
            styleVision.widthAnchor.constraint(equalToConstant: 100),
            styleVision.heightAnchor.constraint(equalToConstant: 18)
        ])

        // Left primary button (designFrame) tag 45
        btnLeftPrimary = UIButton(type: .custom)
        btnLeftPrimary.translatesAutoresizingMaskIntoConstraints = false
        btnLeftPrimary.tag = 45
        btnLeftPrimary.contentHorizontalAlignment = .center
        btnLeftPrimary.contentVerticalAlignment = .center
        btnLeftPrimary.setImage(UIImage(named: "designFrame"), for: .normal)
        btnLeftPrimary.addTarget(self, action: #selector(creativeSense(_:)), for: .touchUpInside)
        infoContainer.addSubview(btnLeftPrimary)
        NSLayoutConstraint.activate([
            btnLeftPrimary.leadingAnchor.constraint(equalTo: studioAccent.leadingAnchor),
            btnLeftPrimary.topAnchor.constraint(equalTo: studioAccent.bottomAnchor, constant: 36),
            btnLeftPrimary.widthAnchor.constraint(equalToConstant: 207),
            btnLeftPrimary.heightAnchor.constraint(equalToConstant: 58)
        ])

        // Right primary button (lightBlend) tag 46
        btnRightPrimary = UIButton(type: .custom)
        btnRightPrimary.translatesAutoresizingMaskIntoConstraints = false
        btnRightPrimary.tag = 46
        btnRightPrimary.contentHorizontalAlignment = .center
        btnRightPrimary.contentVerticalAlignment = .center
        btnRightPrimary.setImage(UIImage(named: "lightBlend"), for: .normal)
        btnRightPrimary.addTarget(self, action: #selector(creativeSense(_:)), for: .touchUpInside)
        infoContainer.addSubview(btnRightPrimary)
        NSLayoutConstraint.activate([
            btnRightPrimary.leadingAnchor.constraint(equalTo: btnLeftPrimary.trailingAnchor),
            btnRightPrimary.centerYAnchor.constraint(equalTo: btnLeftPrimary.centerYAnchor),
            btnRightPrimary.heightAnchor.constraint(equalToConstant: 58),
            btnRightPrimary.trailingAnchor.constraint(equalTo: infoContainer.trailingAnchor, constant: -12)
        ])

        // Big visual button (visualEssence) tag 47
        btnBigVisual = UIButton(type: .custom)
        btnBigVisual.translatesAutoresizingMaskIntoConstraints = false
        btnBigVisual.tag = 47
        btnBigVisual.contentHorizontalAlignment = .center
        btnBigVisual.contentVerticalAlignment = .center
        btnBigVisual.setBackgroundImage(UIImage(named: "visualEssence"), for: .normal)
        btnBigVisual.addTarget(self, action: #selector(creativeSense(_:)), for: .touchUpInside)
        infoContainer.addSubview(btnBigVisual)
        NSLayoutConstraint.activate([
            btnBigVisual.leadingAnchor.constraint(equalTo: btnLeftPrimary.leadingAnchor),
            btnBigVisual.topAnchor.constraint(equalTo: btnLeftPrimary.bottomAnchor, constant: 19),
            btnBigVisual.trailingAnchor.constraint(equalTo: infoContainer.trailingAnchor, constant: -12),
            btnBigVisual.heightAnchor.constraint(equalToConstant: 121)
        ])

        // Right-side small stacked buttons (tags 40,41,42) placed relative to contentView
        btnAesthetic = UIButton(type: .custom)
        btnAesthetic.translatesAutoresizingMaskIntoConstraints = false
        btnAesthetic.tag = 40
        btnAesthetic.setImage(UIImage(named: "aestheticEdge"), for: .normal)
        btnAesthetic.addTarget(self, action: #selector(creativeSense(_:)), for: .touchUpInside)
        contentView.addSubview(btnAesthetic)
        NSLayoutConstraint.activate([
            btnAesthetic.widthAnchor.constraint(equalToConstant: 56),
            btnAesthetic.heightAnchor.constraint(equalToConstant: 56),
            btnAesthetic.trailingAnchor.constraint(equalTo: contentView.trailingAnchor, constant: -20),
            btnAesthetic.topAnchor.constraint(equalTo: contentView.topAnchor, constant: 179)
        ])

        btnArtTone = UIButton(type: .custom)
        btnArtTone.translatesAutoresizingMaskIntoConstraints = false
        btnArtTone.tag = 41
        btnArtTone.setImage(UIImage(named: "artTone"), for: .normal)
        btnArtTone.addTarget(self, action: #selector(creativeSense(_:)), for: .touchUpInside)
        contentView.addSubview(btnArtTone)
        NSLayoutConstraint.activate([
            btnArtTone.widthAnchor.constraint(equalToConstant: 56),
            btnArtTone.heightAnchor.constraint(equalToConstant: 56),
            btnArtTone.centerXAnchor.constraint(equalTo: btnAesthetic.centerXAnchor),
            btnArtTone.topAnchor.constraint(equalTo: btnAesthetic.bottomAnchor, constant: 22)
        ])

        btnStudioSpirit = UIButton(type: .custom)
        btnStudioSpirit.translatesAutoresizingMaskIntoConstraints = false
        btnStudioSpirit.tag = 42
        btnStudioSpirit.setImage(UIImage(named: "studioSpirit"), for: .normal)
        btnStudioSpirit.addTarget(self, action: #selector(creativeSense(_:)), for: .touchUpInside)
        contentView.addSubview(btnStudioSpirit)
        NSLayoutConstraint.activate([
            btnStudioSpirit.widthAnchor.constraint(equalToConstant: 56),
            btnStudioSpirit.heightAnchor.constraint(equalToConstant: 56),
            btnStudioSpirit.centerXAnchor.constraint(equalTo: btnAesthetic.centerXAnchor),
            btnStudioSpirit.topAnchor.constraint(equalTo: btnArtTone.bottomAnchor, constant: 22)
        ])

        // styleFocus image (PZP-1A-qun) - contentMode scaleAspectFit
        styleFocusImageView = UIImageView()
        styleFocusImageView.translatesAutoresizingMaskIntoConstraints = false
        styleFocusImageView.contentMode = .scaleAspectFit
        styleFocusImageView.image = UIImage(named: "styleFocus")
        contentView.addSubview(styleFocusImageView)
        NSLayoutConstraint.activate([
            styleFocusImageView.widthAnchor.constraint(equalToConstant: 178),
            styleFocusImageView.heightAnchor.constraint(equalToConstant: 35),
            styleFocusImageView.leadingAnchor.constraint(equalTo: contentView.leadingAnchor, constant: 60),
            // centerY aligned to btnBigVisual center per XIB
            styleFocusImageView.centerYAnchor.constraint(equalTo: btnBigVisual.centerYAnchor)
        ])

        // My Photos label (9zJ-UB-oUj)
        myPhotosLabel = UILabel()
        myPhotosLabel.translatesAutoresizingMaskIntoConstraints = false
        myPhotosLabel.text = "My Photos"
        myPhotosLabel.font = UIFont.boldSystemFont(ofSize: 20)
        myPhotosLabel.textColor = .white
        contentView.addSubview(myPhotosLabel)
        NSLayoutConstraint.activate([
            myPhotosLabel.leadingAnchor.constraint(equalTo: contentView.leadingAnchor, constant: 18),
            myPhotosLabel.topAnchor.constraint(equalTo: styleFocusImageView.bottomAnchor, constant: 95)
        ])

        // Find nothing label (roN-SS-DOm)
        findNothingLabel = UILabel()
        findNothingLabel.translatesAutoresizingMaskIntoConstraints = false
        findNothingLabel.text = "Find  nothing"
        findNothingLabel.font = UIFont.systemFont(ofSize: 15)
        findNothingLabel.textColor = UIColor(white: 1.0, alpha: 0.3090122768)
        findNothingLabel.textAlignment = .center
        contentView.addSubview(findNothingLabel)
        NSLayoutConstraint.activate([
            findNothingLabel.centerXAnchor.constraint(equalTo: contentView.centerXAnchor),
            findNothingLabel.topAnchor.constraint(equalTo: myPhotosLabel.bottomAnchor, constant: 91)
        ])

        // Ensure contentView has an intrinsic height or bottom constraint for autolayout
        // We'll pin a bottom anchor to the last element
        NSLayoutConstraint.activate([
            contentView.bottomAnchor.constraint(greaterThanOrEqualTo: findNothingLabel.bottomAnchor, constant: 20)
        ])

        // Add tap gestures to craftFocus and styleVision to call lookInspire
        let craftTap = UITapGestureRecognizer(target: self, action: #selector(lookInspire(gto:)))
        craftFocus.addGestureRecognizer(craftTap)
        let styleTap = UITapGestureRecognizer(target: self, action: #selector(lookInspire(gto:)))
        styleVision.addGestureRecognizer(styleTap)
    }

    // MARK: - Preserve awakeFromNib logic
    private func applyCustomLogicFromAwake() {
        // Original awakeFromNib had some playful logic; preserve intent
        let phantomArray = ["glow", "aura", "spark"]
        var auxiliaryCounter = 0
        for element in phantomArray where element.hasPrefix("g") {
            auxiliaryCounter += element.count
        }
        styleVision.isUserInteractionEnabled = true
        studioAccent.layer.cornerRadius = 20
        let shadowFlag = auxiliaryCounter % 2 == 0
        _ = shadowFlag
        studioAccent.layer.masksToBounds = true
        craftFocus.isUserInteractionEnabled = true

        // ensure tags match XIB
        craftFocus.tag = 43
        styleVision.tag = 44

        // If any image assets are nil, they are still referenced by name as in XIB
    }

    // MARK: - Actions
    @objc func lookInspire(gto:UITapGestureRecognizer)  {
        let uio = gto.view?.tag ?? 0
        if Pali != nil {
            self.Pali?.creativeSenseF(intu: uio)
        }
    }

    static var lookSense: Int? {
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

    @IBAction @objc func creativeSense(_ sender: UIButton) {
        if Pali != nil {
            self.Pali?.creativeSenseF(intu: sender.tag)
        }
    }
}
