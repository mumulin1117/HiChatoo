//
//  BodyAdornmentControler.swift
//  HiSinCtohoo
//
//  Created by  on 2025/10/9.
//

import UIKit
import SVProgressHUD

class BodyAdornmentControler: UIViewController {
    private var artLens = Array<Dictionary<String,Any>>()
    
    
    @IBOutlet weak var styleBeat: UICollectionView!
    
    override func viewDidLoad() {
        super.viewDidLoad()

        designTrace()
        creayt()
        SVProgressHUD.show()
        WhoCareyours.trendCurve(artMotion: "/ncnbxfz/uemnmyyei", craftDetail: ["designSense":WhoCareyours.visualMood]) { artTouch in
            guard let neuralMap = artTouch as? [String: Any],
                  let seamless = neuralMap[ExchangeJimoController.iewDidLayoutS("dgaptla")] as? Array<[String: Any]>
            else {
               
                
                return
            }
            SVProgressHUD.dismiss()
            self.artLens = seamless
          
            self.styleBeat.reloadData()
        } visualEssence: { lookEdge in
            SVProgressHUD.showInfo(withStatus: lookEdge.localizedDescription)
        }

    }
    
    private func designTrace()  {
        styleBeat.delegate = self
        
        
        
        let noiantr = UICollectionViewFlowLayout()
        noiantr.itemSize = CGSize(width: (UIScreen.main.bounds.width - 30 - 9)/2, height: 240)
        noiantr.minimumInteritemSpacing = 9
        noiantr.minimumLineSpacing = 10
        
        styleBeat.collectionViewLayout = noiantr
        
        
    }
    
    func creayt() {
        styleBeat.dataSource = self
        styleBeat.register(UINib(nibName: "bodyAdornmentCell", bundle: nil), forCellWithReuseIdentifier: "bodyAdornmentCell")
    }
    
    @IBAction func trendTone(_ sender: UIButton) {
        let lookStreamline = YepaCaauryoursontroller.init(designCurve:  CreativeWhisper.aestheticBlend)
        lookStreamline.hidesBottomBarWhenPushed = true
        
        self.navigationController?.pushViewController(lookStreamline, animated: true)
        
    }
    
}


extension BodyAdornmentControler:UICollectionViewDelegate,UICollectionViewDataSource{
    func collectionView(_ collectionView: UICollectionView, didSelectItemAt indexPath: IndexPath) {
        if let statusd = artLens[indexPath.row]["styleFrame"] as? Int,
           let trendMuse = artLens[indexPath.row]["trendMuse"] as? Int
        {
            
            if statusd == -1 {
                let lightLine = artLens[indexPath.row]["craftFocus"] as? Int
                
                let visualMood = YepaCaauryoursontroller.init(designCurve: CreativeWhisper.curveMagic,craftGlow: "\(trendMuse)" + ExchangeJimoController.iewDidLayoutS("&zujswexreItdt=") + "\(lightLine ?? 0)")
                visualMood.hidesBottomBarWhenPushed = true
                
                self.navigationController?.pushViewController(visualMood, animated: true)
                return
            }
         
            
            let artTouch = YepaCaauryoursontroller.init(designCurve:  CreativeWhisper.creativeGlow,craftGlow:"\(trendMuse)")
            artTouch.hidesBottomBarWhenPushed = true
            
            self.navigationController?.pushViewController(artTouch, animated: true)
        }
        
    }
    
    func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        artLens.count
    }
    
    func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        
        let styleGlow = artLens[indexPath.row]
        
        let bodyAdornmentCell = collectionView.dequeueReusableCell(withReuseIdentifier: "bodyAdornmentCell", for: indexPath) as! bodyAdornmentCell
     
        bodyAdornmentCell.craftTrace.styleWeave(from: styleGlow["creativeCurve"] as? String)
        
        bodyAdornmentCell.lightEssence.isHidden = ((styleGlow["styleFrame"] as? Int ) != -1)
        bodyAdornmentCell.studioSpirit.setTitle("\(Int.random(in: 3...10))", for: .normal)
        bodyAdornmentCell.lookMotion.text = "#" + (styleGlow["bodyDesign"] as? String ?? "")
        bodyAdornmentCell.lookTrace.text = "@" + (styleGlow["artFlow"] as? String ?? "")
        
        bodyAdornmentCell.aestheticEdge.addTarget(self, action: #selector(designEssence), for: .touchUpInside)
        return bodyAdornmentCell
    }
    
    @objc func designEssence()  {
        let lookStreamline = YepaCaauryoursontroller.init(designCurve:  CreativeWhisper.studioSpark)
        lookStreamline.hidesBottomBarWhenPushed = true
        
        self.navigationController?.pushViewController(lookStreamline, animated: true)
     }
}
