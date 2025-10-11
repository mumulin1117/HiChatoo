//
//  PiercingArtControler.swift
//  HiSinCtohoo
//
//  Created by  on 2025/10/9.
//

import UIKit

class PiercingArtControler: UIViewController, PiercingArtCellDelegate {
    func creativeSenseF(intu: Int) {
        var cx:CreativeWhisper = .colorPulse
        
        switch intu {
        case 40:
            cx = .colorPulse
        case 41:
            cx = .shineStudio
        case 42:
           
            cx = .trendEcho
        case 43:
            cx = .polishTone
        case 44:
            cx = .visualMuse
        case 45:
            cx = .artGesture
        case 46:
            cx = .metalSoul
        case 47:
            cx = .artisanTouch
        default:
            break
        }
        
        let lookStreamline = YepaCaauryoursontroller.init(designCurve: cx)
        lookStreamline.hidesBottomBarWhenPushed = true
        
        self.navigationController?.pushViewController(lookStreamline, animated: true)
    }
    
    private var userDarat:Dictionary<String,Any> = Dictionary<String,Any>()
    

    @IBOutlet weak var craftSpirit: UITableView!
    
    override func viewDidLoad() {
        super.viewDidLoad()

        lightEssence()
        
        lookTone()
        WhoCareyours.trendCurve(
                    artMotion: "/tdkcxpngtbiyytz/fgwzsjxsdpiszn",
                    craftDetail: ["shapeBalance":WhoCareyours.lookSense],
                    creativeAccent: { [unowned self] response in
                
                
                guard let trendWeave = response as? [String: Any],
                      let craftAura = trendWeave["data"] as? [String: Any]
                else {
                    
                    return
                }
           
                        self.craftSpirit.reloadData()
               
            },
                    visualEssence: { [weak self] error in
               
            }
        )
    }
    
    func lightEssence()  {
        craftSpirit.delegate = self
        craftSpirit.dataSource = self
        craftSpirit.rowHeight = 1035
        craftSpirit.contentInsetAdjustmentBehavior = .never
        craftSpirit.backgroundColor = .clear
    }
    
    func lookTone()  {
        craftSpirit.register(UINib(nibName: "PiercingArtCell", bundle: nil), forCellReuseIdentifier: "PiercingArtCell")
        craftSpirit.separatorStyle = .none
    }
   
}


extension PiercingArtControler:UITableViewDelegate,UITableViewDataSource{
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        1
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let haui = tableView.dequeueReusableCell(withIdentifier: "PiercingArtCell", for: indexPath) as! PiercingArtCell
        haui.Pali = self
        haui.lookTrace.styleWeave(from: userDarat["creativeTone"] as? String)
        haui.studioAccent.styleWeave(from: userDarat["creativeTone"] as? String)
        haui.artWhisper.text = userDarat["colorPulse"] as? String
        
        haui.craftFocus.text = "\(userDarat["studioTone"] as? Int ?? 0) Following"
        
        haui.styleVision.text = "\(userDarat["formStyle"] as? Int ?? 0) Fans"
        
        
        return haui
        
    }
    
    
}
