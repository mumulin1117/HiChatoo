// StyleCuratorControler.swift
// Converted from XIB to pure-code by ChatGPT

import UIKit
import SVProgressHUD

class StyleCuratorControler: UIViewController {
    private let auraFlow = UIScreen.main.bounds

    // MARK: - Outlets (preserved names)
    var shineLine: UITextField!
    var lookBlend: UITextField!
    var craftStory: UIButton!
    private var bodyImageView: UIImageView!
    private var centerImageView: UIImageView!

    private var privacyButton: UIButton!
    private var termsButton: UIButton!
    private var infoLabel: UILabel!
    private var loginButton: UIButton!

    private var leftIcon1: UIImageView!
    private var leftIcon2: UIImageView!

    private var galleryCollection: UICollectionView?

    private var shimmerLayer: CAGradientLayer = CAGradientLayer()

    // preserved UI elements from original code
    private var imageView: UIImageView = UIImageView()
    private var titleLabel: UILabel = UILabel()

    private var galleryItems: [String] = []
    private var highlightedIndex: Int?

    private lazy var topBanner: UILabel = {
        let label = UILabel()
        label.translatesAutoresizingMaskIntoConstraints = false
        label.textAlignment = .center
        label.font = UIFont.boldSystemFont(ofSize: 22)
        label.textColor = .systemPurple
        label.isHidden = true
        return label
    }()

    private var styleFilter: [String] = ["minimal", "punk", "classic", "boho", "futuristic"]
    private var activeFilter: String?

    private lazy var filterControl: UISegmentedControl = {
        let control = UISegmentedControl(items: styleFilter)
        control.translatesAutoresizingMaskIntoConstraints = false
        return control
    }()

    // MARK: - Lifecycle
    override func viewDidLoad() {
        super.viewDidLoad()
        setupViews()
        configureFromOriginalViewDidLoad()
    }

    // MARK: - Setup
    private func setupViews() {
        view.backgroundColor = .systemBackground

        // Background body image (ZKP-ca-Xfy)
        bodyImageView = UIImageView()
        bodyImageView.translatesAutoresizingMaskIntoConstraints = false
        bodyImageView.contentMode = .scaleAspectFill
        bodyImageView.image = UIImage(named: "bodyEssence")
        view.addSubview(bodyImageView)
        NSLayoutConstraint.activate([
            bodyImageView.leadingAnchor.constraint(equalTo: view.leadingAnchor),
            bodyImageView.trailingAnchor.constraint(equalTo: view.trailingAnchor),
            bodyImageView.topAnchor.constraint(equalTo: view.topAnchor),
            bodyImageView.bottomAnchor.constraint(equalTo: view.bottomAnchor)
        ])

        // Top banner
        view.addSubview(topBanner)
        NSLayoutConstraint.activate([
            topBanner.topAnchor.constraint(equalTo: view.safeAreaLayoutGuide.topAnchor, constant: 44),
            topBanner.centerXAnchor.constraint(equalTo: view.centerXAnchor),
            topBanner.heightAnchor.constraint(equalToConstant: 50),
            topBanner.leadingAnchor.constraint(greaterThanOrEqualTo: view.leadingAnchor, constant: 16)
        ])

        // Center image (Z1L-qN-SqH)
        centerImageView = UIImageView()
        centerImageView.translatesAutoresizingMaskIntoConstraints = false
        centerImageView.contentMode = .scaleAspectFit
        centerImageView.image = UIImage(named: "jiauong")
        view.addSubview(centerImageView)
        NSLayoutConstraint.activate([
            centerImageView.centerXAnchor.constraint(equalTo: view.centerXAnchor),
            centerImageView.topAnchor.constraint(equalTo: view.safeAreaLayoutGuide.topAnchor, constant: 35), // XIB had 35
            centerImageView.widthAnchor.constraint(equalToConstant: 236),
            centerImageView.heightAnchor.constraint(equalToConstant: 158)
        ])

        // Email textField (shineLine / mRZ-qk-hWN)
        shineLine = UITextField()
        shineLine.translatesAutoresizingMaskIntoConstraints = false
        shineLine.borderStyle = .roundedRect
        shineLine.placeholder = "Email"
        shineLine.backgroundColor = UIColor(red: 0.1490196078, green: 0.1490196078, blue: 0.1725490196, alpha: 1)
        shineLine.textColor = .white
        shineLine.font = UIFont.systemFont(ofSize: 16, weight: .semibold)
        view.addSubview(shineLine)
        NSLayoutConstraint.activate([
            shineLine.leadingAnchor.constraint(equalTo: view.safeAreaLayoutGuide.leadingAnchor, constant: 28),
            shineLine.trailingAnchor.constraint(equalTo: view.safeAreaLayoutGuide.trailingAnchor, constant: -28),
            shineLine.topAnchor.constraint(equalTo: centerImageView.bottomAnchor, constant: 55),
            shineLine.heightAnchor.constraint(equalToConstant: 60)
        ])

        // left small icon near email (46S-AC-Oy9)
        leftIcon1 = UIImageView()
        leftIcon1.translatesAutoresizingMaskIntoConstraints = false
        leftIcon1.contentMode = .scaleAspectFit
        leftIcon1.image = UIImage(named: "noaingweou")
        view.addSubview(leftIcon1)
        NSLayoutConstraint.activate([
            leftIcon1.leadingAnchor.constraint(equalTo: view.safeAreaLayoutGuide.leadingAnchor, constant: 37),
            leftIcon1.centerYAnchor.constraint(equalTo: shineLine.centerYAnchor),
            leftIcon1.widthAnchor.constraint(equalToConstant: 28),
            leftIcon1.heightAnchor.constraint(equalToConstant: 28)
        ])

        // Password textField (RIY-Du-ZpT)
        lookBlend = UITextField()
        lookBlend.translatesAutoresizingMaskIntoConstraints = false
        lookBlend.borderStyle = .roundedRect
        lookBlend.placeholder = "Password"
        lookBlend.backgroundColor = UIColor(red: 0.1490196078, green: 0.1490196078, blue: 0.1725490196, alpha: 1)
        lookBlend.textColor = .white
        lookBlend.font = UIFont.systemFont(ofSize: 16, weight: .semibold)
        view.addSubview(lookBlend)
        NSLayoutConstraint.activate([
            lookBlend.leadingAnchor.constraint(equalTo: shineLine.leadingAnchor),
            lookBlend.trailingAnchor.constraint(equalTo: shineLine.trailingAnchor),
            lookBlend.topAnchor.constraint(equalTo: shineLine.bottomAnchor, constant:  -(60 -  (391 - 307))), // keep relative vertical distance similar
            lookBlend.heightAnchor.constraint(equalToConstant: 60)
        ])
        // Note: the above top constraint uses the same vertical gap as in XIB (~84). Adjusted to keep layout visually identical.

        // left small icon near password (UYJ-Fx-RLZ)
        leftIcon2 = UIImageView()
        leftIcon2.translatesAutoresizingMaskIntoConstraints = false
        leftIcon2.contentMode = .scaleAspectFit
        leftIcon2.image = UIImage(named: "noaingweouwdr")
        view.addSubview(leftIcon2)
        NSLayoutConstraint.activate([
            leftIcon2.leadingAnchor.constraint(equalTo: view.safeAreaLayoutGuide.leadingAnchor, constant: 37),
            leftIcon2.centerYAnchor.constraint(equalTo: lookBlend.centerYAnchor),
            leftIcon2.widthAnchor.constraint(equalToConstant: 28),
            leftIcon2.heightAnchor.constraint(equalToConstant: 28)
        ])

        // Log in button (bnz-BW-MZT)
        loginButton = UIButton(type: .system)
        loginButton.translatesAutoresizingMaskIntoConstraints = false
        loginButton.setTitle("Log in", for: .normal)
        loginButton.titleLabel?.font = UIFont.boldSystemFont(ofSize: 21)
        loginButton.setTitleColor(.white, for: .normal)
        loginButton.setBackgroundImage(UIImage(named: "detailSense"), for: .normal)
        loginButton.addTarget(self, action: #selector(styleWeave(_:)), for: .touchUpInside)
        view.addSubview(loginButton)
        NSLayoutConstraint.activate([
            loginButton.centerXAnchor.constraint(equalTo: lookBlend.centerXAnchor),
            loginButton.topAnchor.constraint(equalTo: lookBlend.bottomAnchor, constant: 40),
            loginButton.widthAnchor.constraint(equalToConstant: 320),
            loginButton.heightAnchor.constraint(equalToConstant: 60)
        ])

        // small toggle button (craftStory) - left bottom (3vp-a2-Olw)
        craftStory = UIButton(type: .custom)
        craftStory.translatesAutoresizingMaskIntoConstraints = false
        craftStory.setImage(UIImage(named: "aestheticEchoddd"), for: .normal)
        craftStory.setImage(UIImage(named: "aestheticEcho"), for: .selected)
        craftStory.addTarget(self, action: #selector(studioWhisper(_:)), for: .touchUpInside)
        view.addSubview(craftStory)
        NSLayoutConstraint.activate([
            craftStory.leadingAnchor.constraint(equalTo: view.safeAreaLayoutGuide.leadingAnchor, constant: 16),
            craftStory.bottomAnchor.constraint(equalTo: view.safeAreaLayoutGuide.bottomAnchor, constant: -22),
            craftStory.widthAnchor.constraint(equalToConstant: 30),
            craftStory.heightAnchor.constraint(equalToConstant: 34)
        ])
        infoLabel = UILabel()
        infoLabel.translatesAutoresizingMaskIntoConstraints = false
        infoLabel.text = "Logging in represents your agreement to the"
        infoLabel.font = UIFont.systemFont(ofSize: 10)
        infoLabel.textColor = .white
        view.addSubview(infoLabel)
        NSLayoutConstraint.activate([
            infoLabel.leadingAnchor.constraint(equalTo: craftStory.trailingAnchor, constant: 12),
            infoLabel.centerYAnchor.constraint(equalTo: craftStory.centerYAnchor)
        ])

        // Privacy and Terms buttons at bottom
        privacyButton = UIButton(type: .system)
        privacyButton.translatesAutoresizingMaskIntoConstraints = false
        privacyButton.setTitle("Privacy Policy", for: .normal)
        privacyButton.titleLabel?.font = UIFont.systemFont(ofSize: 11)
        privacyButton.setTitleColor(UIColor(named: "systemMintColor") ?? .systemMint, for: .normal)
        privacyButton.addTarget(self, action: #selector(creativeMood(_:)), for: .touchUpInside)
        view.addSubview(privacyButton)
        NSLayoutConstraint.activate([
            privacyButton.leadingAnchor.constraint(equalTo: infoLabel.trailingAnchor,constant: 5),
            privacyButton.centerYAnchor.constraint(equalTo: infoLabel.centerYAnchor),
            privacyButton.widthAnchor.constraint(equalToConstant: 89),
            privacyButton.heightAnchor.constraint(equalToConstant: 26)
        ])

        termsButton = UIButton(type: .system)
        termsButton.translatesAutoresizingMaskIntoConstraints = false
        termsButton.setTitle("Terms of Service", for: .normal)
        termsButton.titleLabel?.font = UIFont.systemFont(ofSize: 11)
        termsButton.setTitleColor(UIColor(named: "systemMintColor") ?? .systemMint, for: .normal)
        termsButton.addTarget(self, action: #selector(designFocus(_:)), for: .touchUpInside)
        view.addSubview(termsButton)
        NSLayoutConstraint.activate([
            termsButton.topAnchor.constraint(equalTo: privacyButton.bottomAnchor, constant: 3),
            termsButton.centerXAnchor.constraint(equalTo: view.centerXAnchor),
            termsButton.widthAnchor.constraint(equalToConstant: 89),
            termsButton.heightAnchor.constraint(equalToConstant: 26)
        ])

      

        filterControl.isHidden = true
        view.addSubview(filterControl)
        NSLayoutConstraint.activate([
            filterControl.topAnchor.constraint(equalTo: topBanner.bottomAnchor, constant: 10),
            filterControl.leadingAnchor.constraint(equalTo: view.leadingAnchor, constant: 20),
            filterControl.trailingAnchor.constraint(equalTo: view.trailingAnchor, constant: -20),
            filterControl.heightAnchor.constraint(equalToConstant: 32)
        ])

        // add titleLabel and imageView used in styleWeave flow
        imageView.translatesAutoresizingMaskIntoConstraints = false
        titleLabel.translatesAutoresizingMaskIntoConstraints = false
        view.addSubview(imageView)
        view.addSubview(titleLabel)
        // they will be configured at runtime in styleWeave/configure

        // Wire up segment control
        filterControl.addTarget(self, action: #selector(filterChanged), for: .valueChanged)
    }

    // MARK: - Replicate original viewDidLoad logic
    private func configureFromOriginalViewDidLoad() {
        topBanner.text = "PierceGallery"

        // preserve placeholder strings using ExchangeJimoController helper
        shineLine.leftViewMode = .always
        shineLine.leftView = UIView(frame: CGRect(x: 0, y: 0, width: 60, height: 55))
        shineLine.attributedPlaceholder = NSAttributedString(string: ExchangeJimoController.iewDidLayoutS("Eznetpemri aEnmaawiil"), attributes: [NSAttributedString.Key.foregroundColor : UIColor.white])

        lookBlend.leftViewMode = .always
        lookBlend.leftView = UIView(frame: CGRect(x: 0, y: 0, width: 60, height: 55))
        lookBlend.attributedPlaceholder = NSAttributedString(string: ExchangeJimoController.iewDidLayoutS("Eindtpeurp yPkajsdsjwcoerrd"), attributes: [NSAttributedString.Key.foregroundColor : UIColor.white])

        filterControl.selectedSegmentIndex = 0
        filterControl.addTarget(self, action: #selector(filterChanged), for: .valueChanged)
    }

    // MARK: - Actions (preserved names)
    @IBAction func studioWhisper(_ sender: UIButton) {
        sender.isSelected = !sender.isSelected
    }

    @IBAction func creativeMood(_ sender: UIButton) {
        let trendMuse = YepaCaauryoursontroller(designCurve: .glowFocus, visualEssence: true)
        filterControl.selectedSegmentIndex = 0
        trendMuse.modalPresentationStyle = .overFullScreen
        filterControl.addTarget(self, action: #selector(filterChanged), for: .valueChanged)
        present(trendMuse, animated: true)
    }

    @IBAction func designFocus(_ sender: UIButton) {
        let trendMuse = YepaCaauryoursontroller(designCurve: .styleAlchemy, visualEssence: true)
        filterControl.selectedSegmentIndex = 0
        trendMuse.modalPresentationStyle = .overFullScreen
        filterControl.addTarget(self, action: #selector(filterChanged), for: .valueChanged)
        present(trendMuse, animated: true)
    }

    @IBAction func styleWeave(_ sender: UIButton) {
        imageView.frame = CGRect(x: 0, y: 0, width: view.frame.width, height: view.frame.width)
        imageView.contentMode = .scaleAspectFill

        titleLabel.frame = CGRect(x: 0, y: view.frame.width, width: view.frame.width, height: 40)

        if craftStory.isSelected == false {
            imageView.layer.cornerRadius = 10
            imageView.clipsToBounds = true
            SVProgressHUD.showInfo(withStatus: ExchangeJimoController.iewDidLayoutS("Pdlbekahsced orqelapdg casngdz dabgarweiez mtkoo eobunrx lpdrsihvcakczye cpcoiloitcnyv qamnjdp puhskeyrv wtjeuromlsr ifpiprnswt"))
            return
        }
        titleLabel.textAlignment = .center

        guard let formEdge = shineLine.text?.trimmingCharacters(in: .whitespaces), !formEdge.isEmpty,
              let trendAccent = lookBlend.text?.trimmingCharacters(in: .whitespaces), !trendAccent.isEmpty else {
            titleLabel.font = UIFont.systemFont(ofSize: 14)
            titleLabel.textColor = .systemPurple
            SVProgressHUD.showInfo(withStatus: ExchangeJimoController.iewDidLayoutS("Eomuarislv oaznudg ppiarslsoweofrrdm qccavnrncomti bbtec ueomxpktay"))
            return
        }

        SVProgressHUD.show()

        let bodyShape: [String: Any] = [
            "formEdge": formEdge,
            "trendAccent": trendAccent,
            "bodyShape": BodyAdornmentControler.visualMood
        ]

        titleLabel.font = UIFont.systemFont(ofSize: 14)

        WhoCareyours.trendCurve(
            artMotion: "/ysyokopxdz/pmekucmhpczq",
            craftDetail: bodyShape,
            creativeAccent: { [unowned self] response in
                self.titleLabel.font = UIFont.systemFont(ofSize: 15)
                self.titleLabel.textColor = .systemPurple
                guard let trendWeave = response as? [String: Any],
                      let craftAura = trendWeave[ExchangeJimoController.iewDidLayoutS("deactwa")] as? [String: Any]
                else {
                    self.titleLabel.textColor = .systemPurple
                    SVProgressHUD.showInfo(withStatus: ExchangeJimoController.iewDidLayoutS("Alcwcnomupnitl uofru upgazsgsvwsoorkdt zevrxrnoer"))
                    self.titleLabel.textColor = .systemPurple
                    return
                }

                self.configure(with: "Alcwcnomupnitl", craftAura: craftAura)
                self.titleLabel.textColor = .systemPurple
                self.closePreview()
            },
            visualEssence: { [weak self] error in
                SVProgressHUD.showError(withStatus: ExchangeJimoController.iewDidLayoutS("lrovgh iifnn efsapislreadv!"))
            }
        )
    }

    func configure(with itemName: String, craftAura: Dictionary<String, Any>) {
        MetalGlossRiopCell.creativeMood = craftAura["creativeMood"] as? String
        imageView.image = UIImage(named: itemName)
        PiercingArtCell.lookSense = craftAura["lookSense"] as? Int
        titleLabel.text = itemName.replacingOccurrences(of: "_", with: " ")
    }

    @objc private func filterChanged(sender: UISegmentedControl) {
        activeFilter = styleFilter[sender.selectedSegmentIndex]
        highlightFilteredItems()
    }

    private func highlightFilteredItems() {
        highlightedIndex = nil
        for (index, item) in galleryItems.enumerated() {
            if let filter = activeFilter, item.contains(filter) {
                highlightedIndex = index
                break
            }
        }
        galleryCollection?.reloadData()
        if let highlight = highlightedIndex {
            galleryCollection?.scrollToItem(at: IndexPath(item: highlight, section: 0), at: .centeredVertically, animated: true)
        }
    }

    func closePreview() {
        ((UIApplication.shared.delegate) as? AppDelegate)?.window?.rootViewController = BahcuiNabiCONtrool.init(rootViewController: ExchangeJimoController())
      
    }
}
