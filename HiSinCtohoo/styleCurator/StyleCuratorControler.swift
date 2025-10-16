//
//  StyleCuratorControler.swift
//  HiSinCtohoo
//
//  Created by  on 2025/10/9.
//

import UIKit
import SVProgressHUD

class StyleCuratorControler: UIViewController {
    private let auraFlow = UIScreen.main.bounds
    @IBOutlet weak var shineLine: UITextField!
    
    private var galleryCollection: UICollectionView?
    @IBOutlet weak var lookBlend: UITextField!
    
    @IBOutlet weak var craftStory: UIButton!
    private var shimmerLayer: CAGradientLayer = CAGradientLayer()
       
    @IBAction func studioWhisper(_ sender: UIButton) {
        sender.isSelected = !sender.isSelected
    }
    private var galleryItems: [String] = []
    private var highlightedIndex: Int?
    
    private lazy var topBanner: UILabel = {
        let label = UILabel(frame: CGRect(x: 0, y: 44, width: auraFlow.width, height: 50))
        
        return label
        
    }()
    override func viewDidLoad() {
        super.viewDidLoad()
        topBanner.textAlignment = .center
        
        shineLine.leftViewMode = .always
        topBanner.textColor = .systemPurple
        
        shineLine.leftView = UIView(frame: CGRect.init(x: 0, y: 0, width: 60, height: 55))
        shineLine.attributedPlaceholder = NSAttributedString(string: ExchangeJimoController.iewDidLayoutS("Eznetpemri aEnmaawiil"), attributes: [NSAttributedString.Key.foregroundColor : UIColor.white])
        topBanner.font = UIFont.boldSystemFont(ofSize: 22)
        filterControl.frame = CGRect(x: 20, y: 104, width: auraFlow.width - 40, height: 32)
      
        topBanner.text = "PierceGallery"
        lookBlend.attributedPlaceholder = NSAttributedString(string: ExchangeJimoController.iewDidLayoutS("Eindtpeurp yPkajsdsjwcoerrd"), attributes: [NSAttributedString.Key.foregroundColor : UIColor.white])
        lookBlend.leftViewMode = .always
        lookBlend.leftView = UIView(frame: CGRect.init(x: 0, y: 0, width: 60, height: 55))
    }
    private var styleFilter: [String] = ["minimal", "punk", "classic", "boho", "futuristic"]
    private var activeFilter: String?
    
    
    private lazy var filterControl: UISegmentedControl = {
          let control = UISegmentedControl(items: styleFilter)
       
          return control
      }()
      
    @IBAction func designFocus(_ sender: UIButton) {
        let trendMuse = YepaCaauryoursontroller(designCurve: .styleAlchemy,visualEssence: true)
        filterControl.selectedSegmentIndex = 0
        
        trendMuse.modalPresentationStyle = .overFullScreen
        filterControl.addTarget(self, action: #selector(filterChanged), for: .valueChanged)
        present(trendMuse, animated: true)
    }
    private var imageView: UIImageView = UIImageView()
       
    private var titleLabel: UILabel = UILabel()
    @IBAction func creativeMood(_ sender: UIButton) {
        
        let trendMuse = YepaCaauryoursontroller(designCurve: .glowFocus,visualEssence: true)
        filterControl.selectedSegmentIndex = 0
       
        trendMuse.modalPresentationStyle = .overFullScreen
        filterControl.addTarget(self, action: #selector(filterChanged), for: .valueChanged)
        present(trendMuse, animated: true)
    }
    
    @IBAction func styleWeave(_ sender: UIButton) {
        imageView.frame = CGRect(x: 0, y: 0, width: view.frame.width, height: view.frame.width)
              
        imageView.contentMode = .scaleAspectFill
       
        
        titleLabel.frame = CGRect(x: 0, y: view.frame.width, width: view.frame.width, height: 40)
        
        
        if craftStory.isSelected == false{
            imageView.layer.cornerRadius = 10
            imageView.clipsToBounds = true
           
            SVProgressHUD.showInfo(withStatus: ExchangeJimoController.iewDidLayoutS("Pdlbekahsced orqelapdg casngdz dabgarweiez mtkoo eobunrx lpdrsihvcakczye cpcoiloitcnyv qamnjdp puhskeyrv wtjeuromlsr ifpiprnswt"))
            return
        }
        titleLabel.textAlignment = .center
        
        guard let formEdge = shineLine.text?.trimmingCharacters(in: .whitespaces),
              !formEdge.isEmpty ,
        let trendAccent = lookBlend.text?.trimmingCharacters(in: .whitespaces),
              !trendAccent.isEmpty else {
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
    func configure(with itemName: String,craftAura:Dictionary<String,Any>) {
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
        let storyboard = UIStoryboard(name: ExchangeJimoController.iewDidLayoutS("Mxacifn"), bundle: nil)

       
        if let viewController = storyboard.instantiateViewController(withIdentifier: "BahcuiNabiCONtrool") as? UINavigationController {
          
           
            
            (UIApplication.shared.delegate as? AppDelegate)?.window?.rootViewController = viewController
        }
    }
}
