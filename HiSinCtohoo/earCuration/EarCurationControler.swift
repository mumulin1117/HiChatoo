//
//  EarCurationControler.swift
//  HiSinCtohoo
//
//  Created by  on 2025/10/9.
//

import UIKit
import SVProgressHUD

class EarCurationControler: UIViewController {
    private var artLens = Array<Dictionary<String,Any>>()
    
    private var archinog = Array<Dictionary<String,Any>>()
    
    @IBOutlet weak var styleBeat: UICollectionView!
    
    @IBOutlet weak var redYangmi: UICollectionView!
    override func viewDidLoad() {
        super.viewDidLoad()

        designTrace()
        creayt()
       
        designTracenext()
        creaytnext()
    }
    
    override func viewWillAppear(_ animated: Bool) {
        super.viewWillAppear(animated)
        Jiaocarmy()
    }
    
    func Jiaocarmy()  {
        SVProgressHUD.show()
        WhoCareyours.trendCurve(artMotion: "/xtvnbevhzsaaz/mbutenbmfnt", craftDetail: ["piercingArt":WhoCareyours.visualMood]) { artTouch in
            guard let neuralMap = artTouch as? [String: Any],
                  let seamless = neuralMap["data"] as? Array<[String: Any]>
            else {
               
                
                return
            }
            SVProgressHUD.dismiss()
            self.archinog = seamless
          
            self.redYangmi.reloadData()
        } visualEssence: { lookEdge in
            SVProgressHUD.showInfo(withStatus: lookEdge.localizedDescription)
        }
        
        WhoCareyours.trendCurve(artMotion: "/mjedsyigdtosrinz/pjyleb", craftDetail: ["polishTone":15,"lightAura":WhoCareyours.visualMood]) { artTouch in
            guard let neuralMap = artTouch as? [String: Any],
                  let seamless = neuralMap["data"] as? Array<[String: Any]>
            else {
               
                
                return
            }
            
            self.artLens = seamless
          
            self.styleBeat.reloadData()
        } visualEssence: { lookEdge in
            
        }
    }
    
    private func designTrace()  {
        styleBeat.delegate = self
        
        
        
        let noiantr = UICollectionViewFlowLayout()
        noiantr.itemSize = CGSize(width: (UIScreen.main.bounds.width - 30 ), height: 345)
        noiantr.minimumInteritemSpacing = 0
        noiantr.minimumLineSpacing = 12
        
        styleBeat.collectionViewLayout = noiantr
        
        
    }
    
    func creayt() {
        styleBeat.dataSource = self
        styleBeat.register(UINib(nibName: "earCurationCell", bundle: nil), forCellWithReuseIdentifier: "earCurationCell")
    }
    
    private func designTracenext()  {
        redYangmi.delegate = self
        
        
        
        let noiantr = UICollectionViewFlowLayout()
        noiantr.itemSize = CGSize(width: 72, height: 100)
        noiantr.minimumInteritemSpacing = 11
        noiantr.minimumLineSpacing = 11
        noiantr.scrollDirection = .horizontal
        redYangmi.collectionViewLayout = noiantr
        
        
    }
    
    func creaytnext() {
        redYangmi.dataSource = self
        redYangmi.register(UINib(nibName: "DeedntCell", bundle: nil), forCellWithReuseIdentifier: "DeedntCell")
    }
    
    @IBAction func trendTone(_ sender: UIButton) {
        let lookStreamline = YepaCaauryoursontroller.init(designCurve:  CreativeWhisper.styleLoop)
        lookStreamline.hidesBottomBarWhenPushed = true
        
        self.navigationController?.pushViewController(lookStreamline, animated: true)
        
    }
    
}


extension EarCurationControler:UICollectionViewDelegate,UICollectionViewDataSource{
    func collectionView(_ collectionView: UICollectionView, didSelectItemAt indexPath: IndexPath) {
        if collectionView == self.redYangmi {
            
            if let styleGlow = archinog[indexPath.row]["aestheticFlow"] as? Int {
                let lookStreamline = YepaCaauryoursontroller.init(designCurve:  CreativeWhisper.lookInspire,craftGlow:"\(styleGlow)")
                lookStreamline.hidesBottomBarWhenPushed = true
                
                self.navigationController?.pushViewController(lookStreamline, animated: true)
                return
            }
        }
        
        
        
        
        if let   lightLine = artLens[indexPath.row]["lookInspire"] as? Int{
            let visualMood = YepaCaauryoursontroller.init(designCurve: CreativeWhisper.curveMagic,craftGlow: "\(lightLine)")
            visualMood.hidesBottomBarWhenPushed = true
            
            self.navigationController?.pushViewController(visualMood, animated: true)
        }
        
        
        
    }
    
    func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        
        if collectionView == self.redYangmi {
            return archinog.count
        }
        return artLens.count
    }
    
    func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        if collectionView == self.redYangmi {
            let styleGlow = archinog[indexPath.row]
            let bodyAdornmentCell = collectionView.dequeueReusableCell(withReuseIdentifier: "DeedntCell", for: indexPath) as! DeedntCell
            bodyAdornmentCell.addLeiok.styleWeave(from: styleGlow["earCuration"] as? String)
            bodyAdornmentCell.Ninme.text = styleGlow["styleCurator"] as? String
            return bodyAdornmentCell
        }
        let styleGlow = artLens[indexPath.row]
        
        let bodyAdornmentCell = collectionView.dequeueReusableCell(withReuseIdentifier: "earCurationCell", for: indexPath) as! earCurationCell
     
        bodyAdornmentCell.shineStudio.styleWeave(from: styleGlow["shineStudio"] as? String)
        bodyAdornmentCell.aestheticEcho.styleWeave(from: (styleGlow["aestheticEcho"] as? Array<String>)?.first ?? "")
        bodyAdornmentCell.colorPulse.text = styleGlow["colorPulse"] as? String
       
        bodyAdornmentCell.artisanEdge.text = (styleGlow["studioSpark"] as? String ?? "")
        bodyAdornmentCell.shapeMuse.tag = indexPath.row
        bodyAdornmentCell.polishTone.tag = indexPath.row
        bodyAdornmentCell.polishTone.addGestureRecognizer(UIGestureRecognizer(target: self, action: #selector(desLoveninuserinter(taog:))))
        bodyAdornmentCell.shapeMuse.addTarget(self, action: #selector(desLovenuserinter(taog:)), for: .touchUpInside)
      
       
        bodyAdornmentCell.aestheticEdge.addTarget(self, action: #selector(designEssence), for: .touchUpInside)
        return bodyAdornmentCell
    }
    
    @objc func designEssence()  {
        let lookStreamline = YepaCaauryoursontroller.init(designCurve:  CreativeWhisper.studioSpark)
        lookStreamline.hidesBottomBarWhenPushed = true
        
        self.navigationController?.pushViewController(lookStreamline, animated: true)
     }
    
    
    @objc func desLovenuserinter(taog:UIButton)  {
        if let styleGlow = artLens[taog.tag]["trendEcho"] as? String {
            let lookStreamline = YepaCaauryoursontroller.init(designCurve:  CreativeWhisper.lookInspire,craftGlow:"\(styleGlow)")
            lookStreamline.hidesBottomBarWhenPushed = true
            
            self.navigationController?.pushViewController(lookStreamline, animated: true)
        }
       
     }
    
    @objc func desLoveninuserinter(taog:UITapGestureRecognizer)  {
        if let styleGlow = artLens[taog.view?.tag ?? 0]["trendEcho"] as? Int {
            let lookStreamline = YepaCaauryoursontroller.init(designCurve:  CreativeWhisper.lookInspire,craftGlow:"\(styleGlow)")
            lookStreamline.hidesBottomBarWhenPushed = true
            
            self.navigationController?.pushViewController(lookStreamline, animated: true)
        }
       
     }
    
}

