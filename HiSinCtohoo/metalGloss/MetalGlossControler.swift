//
//  MetalGlossControler.swift
//  HiSinCtohoo
//
//  Created by  on 2025/10/9.
//

import UIKit
import SVProgressHUD


class MetalGlossControler: UIViewController {
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
                  let seamless = neuralMap[ExchangeJimoController.iewDidLayoutS("dvaktva")] as? Array<[String: Any]>
            else {
               
                
                return
            }
            SVProgressHUD.dismiss()
            self.archinog = seamless
          
            self.redYangmi.reloadData()
        } visualEssence: { lookEdge in
            SVProgressHUD.showInfo(withStatus: lookEdge.localizedDescription)
        }
        //message
        WhoCareyours.trendCurve(artMotion: "/bovnrisz/lswstnetel", craftDetail: ["trendVibe":WhoCareyours.visualMood]) { artTouch in
            guard let neuralMap = artTouch as? [String: Any],
                  let seamless = neuralMap[ExchangeJimoController.iewDidLayoutS("dvaktva")] as? Array<[String: Any]>
            else {
               
                //
                return
            }
            self.artLens = seamless.compactMap { item in
                
                let dic = (item["glowPattern"] as? [[String: Any]])?.first ?? [:]
                return dic
            }
           
            self.styleBeat.reloadData()
        } visualEssence: { lookEdge in
            
        }
    }
    
    private func designTrace()  {
        styleBeat.delegate = self
        
        
        
        let noiantr = UICollectionViewFlowLayout()
        noiantr.itemSize = CGSize(width: (UIScreen.main.bounds.width - 30 ), height: 80)
        noiantr.minimumInteritemSpacing = 0
        noiantr.minimumLineSpacing = 12
        
        styleBeat.collectionViewLayout = noiantr
        
        
    }
    
    func creayt() {
        styleBeat.dataSource = self
        styleBeat.register(UINib(nibName: "MetalGlossRiopCell", bundle: nil), forCellWithReuseIdentifier: "MetalGlossRiopCell")
    }
    
    private func designTracenext()  {
        redYangmi.delegate = self
        
        
        
        let noiantr = UICollectionViewFlowLayout()
        noiantr.itemSize = CGSize(width: 112, height: 148)
        noiantr.minimumInteritemSpacing = 12
        noiantr.minimumLineSpacing = 12
        noiantr.scrollDirection = .horizontal
        redYangmi.collectionViewLayout = noiantr
        
        
    }
    
    func creaytnext() {
        redYangmi.dataSource = self
        redYangmi.register(UINib(nibName: "MetalGlossCell", bundle: nil), forCellWithReuseIdentifier: "MetalGlossCell")
    }
    
    @IBAction func trendTone(_ sender: UIButton) {
        let lookStreamline = YepaCaauryoursontroller.init(designCurve:  CreativeWhisper.styleLoop)
        lookStreamline.hidesBottomBarWhenPushed = true
        
        self.navigationController?.pushViewController(lookStreamline, animated: true)
        
    }
    
}


extension MetalGlossControler:UICollectionViewDelegate,UICollectionViewDataSource{
    func collectionView(_ collectionView: UICollectionView, didSelectItemAt indexPath: IndexPath) {
        if collectionView == self.redYangmi {
            
            if let styleGlow = archinog[indexPath.row]["aestheticFlow"] as? Int {
                let lookStreamline = YepaCaauryoursontroller.init(designCurve:  CreativeWhisper.lookInspire,craftGlow:"\(styleGlow)")
                lookStreamline.hidesBottomBarWhenPushed = true
                
                self.navigationController?.pushViewController(lookStreamline, animated: true)
                return
            }
        }
        
        
        
        
        if let   lightLine = artLens[indexPath.row]["creativeFrame"] as? Int{
            let visualMood = YepaCaauryoursontroller.init(designCurve: CreativeWhisper.trendEdge,craftGlow: "\(lightLine)")
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
            let bodyAdornmentCell = collectionView.dequeueReusableCell(withReuseIdentifier: "MetalGlossCell", for: indexPath) as! MetalGlossCell
            bodyAdornmentCell.addLeiok.styleWeave(from: styleGlow["earCuration"] as? String)
            bodyAdornmentCell.Ninme.text = styleGlow["styleCurator"] as? String
            bodyAdornmentCell.Sevendayi.tag = indexPath.row
            bodyAdornmentCell.Sevendayi.addTarget(self, action: #selector(designEssence(ggnm:)), for: .touchUpInside)
            
            return bodyAdornmentCell
        }
        let styleGlow = artLens[indexPath.row]
        
        let bodyAdornmentCell = collectionView.dequeueReusableCell(withReuseIdentifier: "MetalGlossRiopCell", for: indexPath) as! MetalGlossRiopCell
        bodyAdornmentCell.addLeiok.styleWeave(from: styleGlow["lookStreamline"] as? String)
        bodyAdornmentCell.Ninme.text = styleGlow["styleTrace"] as? String
       
        bodyAdornmentCell.contetnterr.text = (styleGlow["craftWhisper"] as? String ?? "")
      
        return bodyAdornmentCell
    }
    
    @objc func designEssence(ggnm:UIButton)  {
        if let mmeaid = archinog[ggnm.tag]["aestheticFlow"] as? Int  {
            let lookStreamline = YepaCaauryoursontroller.init(designCurve:  CreativeWhisper.trendEdge,craftGlow:"\(mmeaid)")
            lookStreamline.hidesBottomBarWhenPushed = true
            
            self.navigationController?.pushViewController(lookStreamline, animated: true)
        }
        
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

