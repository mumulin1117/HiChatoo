// StyleCuratorControler.swift
// Converted from XIB to pure-code by ChatGPT

import UIKit


class HiSINNAMIStyleCuratorControler: UIViewController {
    private let auraFlow = UIScreen.main.bounds

    // MARK: - Outlets (preserved names)
    var HiSINNAMshineLine: UITextField!
    var HiSINNAMlookBlend: UITextField!
    var HiSINNAMcraftStory: UIButton!
    private var HiSINNAMbodyImageView: UIImageView!
    private var HiSINNAMcenterImageView: UIImageView!

    private var HiSINNAMprivacyButton: UIButton!
    private var HiSINNAMtermsButton: UIButton!
    private var HiSINNAMinfoLabel: UILabel!
    private var HiSINNAMloginButton: UIButton!

    private var HiSINNAMleftIcon1: UIImageView!
    private var HiSINNAMleftIcon2: UIImageView!

    private var HiSINNAMgalleryCollection: UICollectionView?

    private var HiSINNAMshimmerLayer: CAGradientLayer = CAGradientLayer()

    // preserved UI elements from original code
    private var HiSINNAMimageView: UIImageView = UIImageView()
    private var HiSINNAMtitleLabel: UILabel = UILabel()

    private var HiSINNAMgalleryItems: [String] = []
    private var HiSINNAMhighlightedIndex: Int?

    private lazy var HiSINNAMtopBanner: UILabel = {
        let labelHiSINNAMI = UILabel()
        labelHiSINNAMI.translatesAutoresizingMaskIntoConstraints = false
        labelHiSINNAMI.textAlignment = .center
        labelHiSINNAMI.font = UIFont.boldSystemFont(ofSize: 22)
        labelHiSINNAMI.textColor = .systemPurple
        labelHiSINNAMI.isHidden = true
        return labelHiSINNAMI
    }()

    private var HiSINNAMstyleFilter: [String] = ["", "", "", "", ""]
    private var HiSINNAMactiveFilter: String?

    private lazy var HiSINNAMfilterControl: UISegmentedControl = {
        let controlHiSINNAMI = UISegmentedControl(items: [])
        controlHiSINNAMI.isHidden = true
        controlHiSINNAMI.translatesAutoresizingMaskIntoConstraints = false
        return controlHiSINNAMI
    }()

    // MARK: - Lifecycle
    override func viewDidLoad() {
        super.viewDidLoad()
        setHiSINNAMupViews()
        HiSINNAMFromOriginalViewDidLoad()
    }

    // MARK: - Setup
    private func setHiSINNAMupViews() {
        view.backgroundColor = .systemBackground
        navigationController?.navigationBar.isHidden = true
        // Background body image (ZKP-ca-Xfy)
        HiSINNAMbodyImageView = UIImageView()
        HiSINNAMbodyImageView.translatesAutoresizingMaskIntoConstraints = false
        HiSINNAMbodyImageView.contentMode = .scaleAspectFill
        HiSINNAMbodyImageView.image = HiSINNAMIImageLoader.HiSINNAMIshared.HiSINNAMIimage(HiSINNAMInamed: "HiSINNAMIbodyEssence")
        view.addSubview(HiSINNAMbodyImageView)
        NSLayoutConstraint.activate([
            HiSINNAMbodyImageView.leadingAnchor.constraint(equalTo: view.leadingAnchor),
            HiSINNAMbodyImageView.trailingAnchor.constraint(equalTo: view.trailingAnchor),
            HiSINNAMbodyImageView.topAnchor.constraint(equalTo: view.topAnchor),
            HiSINNAMbodyImageView.bottomAnchor.constraint(equalTo: view.bottomAnchor)
        ])
        
        // Top banner
        view.addSubview(HiSINNAMtopBanner)
        NSLayoutConstraint.activate([
            HiSINNAMtopBanner.topAnchor.constraint(equalTo: view.safeAreaLayoutGuide.topAnchor, constant: 44),
            HiSINNAMtopBanner.centerXAnchor.constraint(equalTo: view.centerXAnchor),
            HiSINNAMtopBanner.heightAnchor.constraint(equalToConstant: 50),
            HiSINNAMtopBanner.leadingAnchor.constraint(greaterThanOrEqualTo: view.leadingAnchor, constant: 16)
        ])
        
        NotificationCenter.default.addObserver(self, selector: #selector(HiSINNAMIboardWillw(_:)), name: UIResponder.keyboardWillShowNotification, object: nil)
        HiSINNAMcenterImageView = UIImageView()
        HiSINNAMcenterImageView.translatesAutoresizingMaskIntoConstraints = false
        HiSINNAMcenterImageView.contentMode = .scaleAspectFit
        HiSINNAMcenterImageView.image = HiSINNAMIImageLoader.HiSINNAMIshared.HiSINNAMIimage(HiSINNAMInamed: "HiSINNAMIjiauong")
        view.addSubview(HiSINNAMcenterImageView)
        NSLayoutConstraint.activate([
            HiSINNAMcenterImageView.centerXAnchor.constraint(equalTo: view.centerXAnchor),
            HiSINNAMcenterImageView.topAnchor.constraint(equalTo: view.safeAreaLayoutGuide.topAnchor, constant: 35), // XIB had 35
            HiSINNAMcenterImageView.widthAnchor.constraint(equalToConstant: 236),
            HiSINNAMcenterImageView.heightAnchor.constraint(equalToConstant: 158)
        ])
        
        // Email textField (shineLine / mRZ-qk-hWN)
        HiSINNAMshineLine = UITextField()
        HiSINNAMshineLine.translatesAutoresizingMaskIntoConstraints = false
        HiSINNAMshineLine.borderStyle = .roundedRect
        HiSINNAMshineLine.placeholder = HiSINNAMIExchangeJimoController.HiSINNAMIiewDidLayoutS("Efmiauinl")
        HiSINNAMshineLine.backgroundColor = UIColor(red: 0.1490196078, green: 0.1490196078, blue: 0.1725490196, alpha: 1)
        HiSINNAMshineLine.textColor = .white
        HiSINNAMshineLine.font = UIFont.systemFont(ofSize: 16, weight: .semibold)
        view.addSubview(HiSINNAMshineLine)
        NSLayoutConstraint.activate([
            HiSINNAMshineLine.leadingAnchor.constraint(equalTo: view.safeAreaLayoutGuide.leadingAnchor, constant: 28),
            HiSINNAMshineLine.trailingAnchor.constraint(equalTo: view.safeAreaLayoutGuide.trailingAnchor, constant: -28),
            HiSINNAMshineLine.topAnchor.constraint(equalTo: HiSINNAMcenterImageView.bottomAnchor, constant: 55),
            HiSINNAMshineLine.heightAnchor.constraint(equalToConstant: 60)
        ])
        
        // left small icon near email (46S-AC-Oy9)
        HiSINNAMleftIcon1 = UIImageView()
        HiSINNAMleftIcon1.translatesAutoresizingMaskIntoConstraints = false
        HiSINNAMleftIcon1.contentMode = .scaleAspectFit
        HiSINNAMleftIcon1.image = HiSINNAMIImageLoader.HiSINNAMIshared.HiSINNAMIimage(HiSINNAMInamed: "HiSINNAMInoaingweou")
        view.addSubview(HiSINNAMleftIcon1)
        NSLayoutConstraint.activate([
            HiSINNAMleftIcon1.leadingAnchor.constraint(equalTo: view.safeAreaLayoutGuide.leadingAnchor, constant: 37),
            HiSINNAMleftIcon1.centerYAnchor.constraint(equalTo: HiSINNAMshineLine.centerYAnchor),
            HiSINNAMleftIcon1.widthAnchor.constraint(equalToConstant: 28),
            HiSINNAMleftIcon1.heightAnchor.constraint(equalToConstant: 28)
        ])
        
        // Password textField (RIY-Du-ZpT)
        HiSINNAMlookBlend = UITextField()
        HiSINNAMlookBlend.translatesAutoresizingMaskIntoConstraints = false
        HiSINNAMlookBlend.borderStyle = .roundedRect
        HiSINNAMlookBlend.placeholder = HiSINNAMIExchangeJimoController.HiSINNAMIiewDidLayoutS("Prapsqsxwiourcd")
        HiSINNAMlookBlend.backgroundColor = UIColor(red: 0.1490196078, green: 0.1490196078, blue: 0.1725490196, alpha: 1)
        HiSINNAMlookBlend.textColor = .white
        HiSINNAMlookBlend.font = UIFont.systemFont(ofSize: 16, weight: .semibold)
        view.addSubview(HiSINNAMlookBlend)
        NSLayoutConstraint.activate([
            HiSINNAMlookBlend.leadingAnchor.constraint(equalTo: HiSINNAMshineLine.leadingAnchor),
            HiSINNAMlookBlend.trailingAnchor.constraint(equalTo: HiSINNAMshineLine.trailingAnchor),
            HiSINNAMlookBlend.topAnchor.constraint(equalTo: HiSINNAMshineLine.bottomAnchor, constant:  -(60 -  (391 - 307))), // keep relative vertical distance similar
            HiSINNAMlookBlend.heightAnchor.constraint(equalToConstant: 60)
        ])
        // Note: the above top constraint uses the same vertical gap as in XIB (~84). Adjusted to keep layout visually identical.
        
        // left small icon near password (UYJ-Fx-RLZ)
        HiSINNAMleftIcon2 = UIImageView()
        HiSINNAMleftIcon2.translatesAutoresizingMaskIntoConstraints = false
        HiSINNAMleftIcon2.contentMode = .scaleAspectFit
        HiSINNAMleftIcon2.image = HiSINNAMIImageLoader.HiSINNAMIshared.HiSINNAMIimage(HiSINNAMInamed: "HiSINNAMInoaingweouwdr")
        view.addSubview(HiSINNAMleftIcon2)
        NSLayoutConstraint.activate([
            HiSINNAMleftIcon2.leadingAnchor.constraint(equalTo: view.safeAreaLayoutGuide.leadingAnchor, constant: 37),
            HiSINNAMleftIcon2.centerYAnchor.constraint(equalTo: HiSINNAMlookBlend.centerYAnchor),
            HiSINNAMleftIcon2.widthAnchor.constraint(equalToConstant: 28),
            HiSINNAMleftIcon2.heightAnchor.constraint(equalToConstant: 28)
        ])
        
        // Log in button (bnz-BW-MZT)
        HiSINNAMloginButton = UIButton(type: .system)
        HiSINNAMloginButton.translatesAutoresizingMaskIntoConstraints = false
        HiSINNAMloginButton.setTitle(HiSINNAMIExchangeJimoController.HiSINNAMIiewDidLayoutS("Lkobgx kiwn"), for: .normal)
        HiSINNAMloginButton.titleLabel?.font = UIFont.boldSystemFont(ofSize: 21)
        HiSINNAMloginButton.setTitleColor(.white, for: .normal)
        HiSINNAMloginButton.setBackgroundImage(HiSINNAMIImageLoader.HiSINNAMIshared.HiSINNAMIimage(HiSINNAMInamed: "HiSINNAMIdetailSense"), for: .normal)
        HiSINNAMloginButton.addTarget(self, action: #selector(HiSINNAMIstyleWeave(_:)), for: .touchUpInside)
        view.addSubview(HiSINNAMloginButton)
        NSLayoutConstraint.activate([
            HiSINNAMloginButton.centerXAnchor.constraint(equalTo: HiSINNAMlookBlend.centerXAnchor),
            HiSINNAMloginButton.topAnchor.constraint(equalTo: HiSINNAMlookBlend.bottomAnchor, constant: 40),
            HiSINNAMloginButton.widthAnchor.constraint(equalToConstant: 320),
            HiSINNAMloginButton.heightAnchor.constraint(equalToConstant: 60)
        ])
        
        // small toggle button (craftStory) - left bottom (3vp-a2-Olw)
        HiSINNAMcraftStory = UIButton(type: .custom)
        HiSINNAMcraftStory.translatesAutoresizingMaskIntoConstraints = false
        HiSINNAMcraftStory.setImage(HiSINNAMIImageLoader.HiSINNAMIshared.HiSINNAMIimage(HiSINNAMInamed: "HiSINNAMIaestheticEchoddd"), for: .normal)
        HiSINNAMcraftStory.setImage(HiSINNAMIImageLoader.HiSINNAMIshared.HiSINNAMIimage(HiSINNAMInamed: "HiSINNAMIaestheticEcho"), for: .selected)
        HiSINNAMcraftStory.addTarget(self, action: #selector(studioWhisper(_:)), for: .touchUpInside)
        view.addSubview(HiSINNAMcraftStory)
        NSLayoutConstraint.activate([
            HiSINNAMcraftStory.leadingAnchor.constraint(equalTo: view.safeAreaLayoutGuide.leadingAnchor, constant: 16),
            HiSINNAMcraftStory.bottomAnchor.constraint(equalTo: view.safeAreaLayoutGuide.bottomAnchor, constant: -22),
            HiSINNAMcraftStory.widthAnchor.constraint(equalToConstant: 30),
            HiSINNAMcraftStory.heightAnchor.constraint(equalToConstant: 34)
        ])
        HiSINNAMinfoLabel = UILabel()
        HiSINNAMinfoLabel.translatesAutoresizingMaskIntoConstraints = false
        HiSINNAMinfoLabel.text = HiSINNAMIExchangeJimoController.HiSINNAMIiewDidLayoutS("Lpowgegnimnsga bianj erqeyptrdezspewnytnsq mycozuqrv mafgzrceteempennmth ktbou etyhne")
        HiSINNAMinfoLabel.font = UIFont.systemFont(ofSize: 10)
        HiSINNAMinfoLabel.textColor = .white
        view.addSubview(HiSINNAMinfoLabel)
        NSLayoutConstraint.activate([
            HiSINNAMinfoLabel.leadingAnchor.constraint(equalTo: HiSINNAMcraftStory.trailingAnchor, constant: 12),
            HiSINNAMinfoLabel.centerYAnchor.constraint(equalTo: HiSINNAMcraftStory.centerYAnchor)
        ])
        
        // Privacy and Terms buttons at bottom
        HiSINNAMprivacyButton = UIButton(type: .system)
        HiSINNAMprivacyButton.translatesAutoresizingMaskIntoConstraints = false
        HiSINNAMprivacyButton.setTitle(HiSINNAMIExchangeJimoController.HiSINNAMIiewDidLayoutS("Pkrtihviafceyj hProelbigcsy"), for: .normal)
        HiSINNAMprivacyButton.titleLabel?.font = UIFont.systemFont(ofSize: 11)
        HiSINNAMprivacyButton.setTitleColor(UIColor(named: "systemMintColor") ?? .systemMint, for: .normal)
        HiSINNAMprivacyButton.addTarget(self, action: #selector(creativeMood(_:)), for: .touchUpInside)
        view.addSubview(HiSINNAMprivacyButton)
        NSLayoutConstraint.activate([
            HiSINNAMprivacyButton.leadingAnchor.constraint(equalTo: HiSINNAMinfoLabel.trailingAnchor,constant: 5),
            HiSINNAMprivacyButton.centerYAnchor.constraint(equalTo: HiSINNAMinfoLabel.centerYAnchor),
            HiSINNAMprivacyButton.widthAnchor.constraint(equalToConstant: 89),
            HiSINNAMprivacyButton.heightAnchor.constraint(equalToConstant: 26)
        ])
        
        HiSINNAMtermsButton = UIButton(type: .system)
        HiSINNAMtermsButton.translatesAutoresizingMaskIntoConstraints = false
        HiSINNAMtermsButton.setTitle(HiSINNAMIExchangeJimoController.HiSINNAMIiewDidLayoutS("Tpedrsmxsx cojfh kSeeartvtifcoe"), for: .normal)
        HiSINNAMtermsButton.titleLabel?.font = UIFont.systemFont(ofSize: 11)
        HiSINNAMtermsButton.setTitleColor(UIColor(named: "systemMintColor") ?? .systemMint, for: .normal)
        HiSINNAMtermsButton.addTarget(self, action: #selector(designFocus(_:)), for: .touchUpInside)
        view.addSubview(HiSINNAMtermsButton)
        NSLayoutConstraint.activate([
            HiSINNAMtermsButton.topAnchor.constraint(equalTo: HiSINNAMprivacyButton.bottomAnchor, constant: 3),
            HiSINNAMtermsButton.centerXAnchor.constraint(equalTo: view.centerXAnchor),
            HiSINNAMtermsButton.widthAnchor.constraint(equalToConstant: 89),
            HiSINNAMtermsButton.heightAnchor.constraint(equalToConstant: 26)
        ])
        
        
        
        HiSINNAMfilterControl.isHidden = true
        view.addSubview(HiSINNAMfilterControl)
        NSLayoutConstraint.activate([
            HiSINNAMfilterControl.topAnchor.constraint(equalTo: HiSINNAMtopBanner.bottomAnchor, constant: 10),
            HiSINNAMfilterControl.leadingAnchor.constraint(equalTo: view.leadingAnchor, constant: 20),
            HiSINNAMfilterControl.trailingAnchor.constraint(equalTo: view.trailingAnchor, constant: -20),
            HiSINNAMfilterControl.heightAnchor.constraint(equalToConstant: 32)
        ])
        
        
        NotificationCenter.default.addObserver(self, selector: #selector(keyboardWillHideHiSINNAMI), name: UIResponder.keyboardWillHideNotification, object: nil)
        // add titleLabel and imageView used in styleWeave flow
        HiSINNAMimageView.translatesAutoresizingMaskIntoConstraints = false
        HiSINNAMtitleLabel.translatesAutoresizingMaskIntoConstraints = false
        view.addSubview(HiSINNAMimageView)
        view.addSubview(HiSINNAMtitleLabel)
        // they will be configured at runtime in styleWeave/configure
        
        // Wire up segment control
        HiSINNAMfilterControl.addTarget(self, action: #selector(HiSINNAMIfilterChanged), for: .valueChanged)
       
        
    }
    override func touchesBegan(_ touches: Set<UITouch>, with event: UIEvent?) {
        self.view.endEditing(true)
    }
    @objc func HiSINNAMIboardWillw(_ notification: Notification) {
        HiSINNAMfilterControl.isHidden = true
            guard let userInfoHiSINNAMI = notification.userInfo,
                  let keyboardFrameHiSINNAMI = userInfoHiSINNAMI[UIResponder.keyboardFrameEndUserInfoKey] as? CGRect else { return }
            let keyboardHeightHiSINNAMI = keyboardFrameHiSINNAMI.height
        HiSINNAMtitleLabel.isHidden = false
            self.view.frame.origin.y = -keyboardHeightHiSINNAMI / 2
        HiSINNAMtitleLabel.isHidden = false
        }

           
       
    
   
    // MARK: - Replicate original viewDidLoad logic
    private func HiSINNAMFromOriginalViewDidLoad() {
        HiSINNAMtopBanner.text = "PierceGallery"

        // preserve placeholder strings using ExchangeJimoController helper
        HiSINNAMshineLine.leftViewMode = .always
        HiSINNAMshineLine.leftView = UIView(frame: CGRect(x: 0, y: 0, width: 60, height: 55))
        HiSINNAMshineLine.attributedPlaceholder = NSAttributedString(string: HiSINNAMIExchangeJimoController.HiSINNAMIiewDidLayoutS("Eznetpemri aEnmaawiil"), attributes: [NSAttributedString.Key.foregroundColor : UIColor.white])

        HiSINNAMlookBlend.leftViewMode = .always
        HiSINNAMlookBlend.leftView = UIView(frame: CGRect(x: 0, y: 0, width: 60, height: 55))
        HiSINNAMlookBlend.attributedPlaceholder = NSAttributedString(string: HiSINNAMIExchangeJimoController.HiSINNAMIiewDidLayoutS("Eindtpeurp yPkajsdsjwcoerrd"), attributes: [NSAttributedString.Key.foregroundColor : UIColor.white])

        HiSINNAMfilterControl.selectedSegmentIndex = 0
        HiSINNAMfilterControl.addTarget(self, action: #selector(HiSINNAMIfilterChanged), for: .valueChanged)
    }

    // MARK: - Actions (preserved names)
    @objc func studioWhisper(_ sender: UIButton) {
        sender.isSelected = !sender.isSelected
    }

    @objc func creativeMood(_ sender: UIButton) {
        let trendMuse = HiSINNAMIYepaCaauryoursontroller(designCurveHiSINNAMI: .HiSINNAMIglowFocus, visualEssenceHiSINNAMI: true)
        HiSINNAMfilterControl.selectedSegmentIndex = 0
        trendMuse.modalPresentationStyle = .overFullScreen
        HiSINNAMfilterControl.addTarget(self, action: #selector(HiSINNAMIfilterChanged), for: .valueChanged)
        present(trendMuse, animated: true)
    }

    @objc func designFocus(_ sender: UIButton) {
        let trendMuse = HiSINNAMIYepaCaauryoursontroller(designCurveHiSINNAMI: .HiSINNAMIstyleAlchemy, visualEssenceHiSINNAMI: true)
        HiSINNAMfilterControl.selectedSegmentIndex = 0
        trendMuse.modalPresentationStyle = .overFullScreen
        HiSINNAMfilterControl.addTarget(self, action: #selector(HiSINNAMIfilterChanged), for: .valueChanged)
        present(trendMuse, animated: true)
    }
    deinit {
            NotificationCenter.default.removeObserver(self)
        
    }

    @objc func HiSINNAMIstyleWeave(_ sender: UIButton) {
        HiSINNAMimageView.frame = CGRect(x: 0, y: 0, width: view.frame.width, height: view.frame.width)
        HiSINNAMimageView.contentMode = .scaleAspectFill

        HiSINNAMtitleLabel.frame = CGRect(x: 0, y: view.frame.width, width: view.frame.width, height: 40)

        if HiSINNAMcraftStory.isSelected == false {
            HiSINNAMimageView.layer.cornerRadius = 10
            HiSINNAMimageView.clipsToBounds = true
            HiSINNAMIArtMotionHUD.HiSINNAMISoloExhibit.HiSINNAMIEmitTransientNote( HiSINNAMIExchangeJimoController.HiSINNAMIiewDidLayoutS("Pdlbekahsced orqelapdg casngdz dabgarweiez mtkoo eobunrx lpdrsihvcakczye cpcoiloitcnyv qamnjdp puhskeyrv wtjeuromlsr ifpiprnswt"))
            return
        }
        HiSINNAMtitleLabel.textAlignment = .center

        guard let formEdge = HiSINNAMshineLine.text?.trimmingCharacters(in: .whitespaces), !formEdge.isEmpty,
              let trendAccent = HiSINNAMlookBlend.text?.trimmingCharacters(in: .whitespaces), !trendAccent.isEmpty else {
            HiSINNAMtitleLabel.font = UIFont.systemFont(ofSize: 14)
            HiSINNAMtitleLabel.textColor = .systemPurple
            HiSINNAMIArtMotionHUD.HiSINNAMISoloExhibit.HiSINNAMIEmitTransientNote( HiSINNAMIExchangeJimoController.HiSINNAMIiewDidLayoutS("Eomuarislv oaznudg ppiarslsoweofrrdm qccavnrncomti bbtec ueomxpktay"))
            return
        }

        HiSINNAMIArtMotionHUD.HiSINNAMISoloExhibit.HiSINNAMIInvokeLoadingAura()

        let bodyShape: [String: Any] = [
            "formEdge": formEdge,
            "trendAccent": trendAccent,
            "bodyShape": HiSINNAMIBodyAdornmentControler.HiSINNAMIvisualMood
        ]

        HiSINNAMtitleLabel.font = UIFont.systemFont(ofSize: 14)

        HiSINNAMIWhoCareyours.HiSINNAMItrendCurve(
                    HiSINNAMIartMotion: "/ysyokopxdz/pmekucmhpczq",
                    HiSINNAMIcraftDetail: bodyShape,
                    HiSINNAMIcreativeAccent: { [unowned self] response in
                self.HiSINNAMtitleLabel.font = UIFont.systemFont(ofSize: 15)
                self.HiSINNAMtitleLabel.textColor = .systemPurple
                guard let trendWeave = response as? [String: Any],
                      let craftAura = trendWeave[HiSINNAMIExchangeJimoController.HiSINNAMIiewDidLayoutS("deactwa")] as? [String: Any]
                else {
                    self.HiSINNAMtitleLabel.textColor = .systemPurple
                    HiSINNAMIArtMotionHUD.HiSINNAMISoloExhibit.HiSINNAMIEmitTransientNote( HiSINNAMIExchangeJimoController.HiSINNAMIiewDidLayoutS("Alcwcnomupnitl uofru upgazsgsvwsoorkdt zevrxrnoer"))
                    self.HiSINNAMtitleLabel.textColor = .systemPurple
                    return
                }

                self.conHiSINNAMIfigure(HiSINNAMIwith: "Alcwcnomupnitl", HiSINNAMIcraftAura: craftAura)
                self.HiSINNAMtitleLabel.textColor = .systemPurple
                self.HiSINNAMIclosePreview()
            },
                    HiSINNAMIvisualEssence: { [weak self] error in
                        HiSINNAMIArtMotionHUD.HiSINNAMISoloExhibit.HiSINNAMIEmitTransientNote( HiSINNAMIExchangeJimoController.HiSINNAMIiewDidLayoutS("lrovgh iifnn efsapislreadv!"))
            }
        )
    }
    @objc func keyboardWillHideHiSINNAMI() {
        HiSINNAMtitleLabel.isHidden = false
           self.view.frame.origin.y = 0
        HiSINNAMtitleLabel.isHidden = false
   }

    func conHiSINNAMIfigure(HiSINNAMIwith itemName: String, HiSINNAMIcraftAura: Dictionary<String, Any>) {
        HiSINNAMIMetalGlossRiopCell.HiSINNAMIcreativeMood = HiSINNAMIcraftAura["creativeMood"] as? String
        HiSINNAMimageView.image = HiSINNAMIImageLoader.HiSINNAMIshared.HiSINNAMIimage(HiSINNAMInamed: itemName)
        HiSINNAMIPiercingArtCell.HiSINNAMIlookSense = HiSINNAMIcraftAura["lookSense"] as? Int
        HiSINNAMtitleLabel.text = itemName.replacingOccurrences(of: "_", with: " ")
    }

    @objc private func HiSINNAMIfilterChanged(sender: UISegmentedControl) {
        HiSINNAMactiveFilter = HiSINNAMstyleFilter[sender.selectedSegmentIndex]
        HiSINNAMIhighlightFilteredItems()
    }

    private func HiSINNAMIhighlightFilteredItems() {
        HiSINNAMhighlightedIndex = nil
        for (index, item) in HiSINNAMgalleryItems.enumerated() {
            if let filter = HiSINNAMactiveFilter, item.contains(filter) {
                HiSINNAMhighlightedIndex = index
                break
            }
        }
        HiSINNAMgalleryCollection?.reloadData()
        if let highlight = HiSINNAMhighlightedIndex {
            HiSINNAMgalleryCollection?.scrollToItem(at: IndexPath(item: highlight, section: 0), at: .centeredVertically, animated: true)
        }
    }

    func HiSINNAMIclosePreview() {
        ((UIApplication.shared.delegate) as? AppDelegate)?.window?.rootViewController = HiSINNAMIBahcuiNabiCONtrool.init(rootViewController: HiSINNAMIExchangeJimoController())
      
    }
}
