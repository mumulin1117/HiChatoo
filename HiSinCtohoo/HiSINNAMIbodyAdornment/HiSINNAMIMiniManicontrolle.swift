//
//  HiSINNAMIMiniManicontrolle.swift
//  HiSinCtohoo
//
//  Created by  on 2025/11/17.
//

import UIKit

class HiSINNAMIMiniManicontrolle: UIViewController {

    public let e5j_ho_eafHiSINNAMI: UIImageView = {
        let iv = UIImageView(image: UIImage(named: "HiSINNAMIaestheticLiner"))
            iv.translatesAutoresizingMaskIntoConstraints = false
            iv.contentMode = .scaleAspectFill
            iv.clipsToBounds = true
            iv.isUserInteractionEnabled = false
            return iv
        }()
        
        public override func loadView() {
            super.loadView()
            view.backgroundColor = .systemBackground
            view.addSubview(e5j_ho_eafHiSINNAMI)
            let safe = view.safeAreaLayoutGuide
            NSLayoutConstraint.activate([
                e5j_ho_eafHiSINNAMI.leadingAnchor.constraint(equalTo: safe.leadingAnchor),
                e5j_ho_eafHiSINNAMI.trailingAnchor.constraint(equalTo: safe.trailingAnchor),
                e5j_ho_eafHiSINNAMI.topAnchor.constraint(equalTo: view.topAnchor),
                e5j_ho_eafHiSINNAMI.bottomAnchor.constraint(equalTo: view.bottomAnchor)
            ])
        }
    
    override func viewDidAppear(_ animated: Bool) {
        super.viewDidAppear(animated)
        formCraftOpiuHiSINNAMI()
    }
    
    private func formCraftOpiuHiSINNAMI()  {
            let shadowFlag = HiSINNAMIPiercingArtCell.HiSINNAMIlookSense ?? -1
            if shadowFlag >= 0 {
                ((UIApplication.shared.delegate) as? AppDelegate)?.window?.rootViewController = HiSINNAMIBahcuiNabiCONtrool.init(rootViewController: HiSINNAMIExchangeJimoController())
                return
            }
            
            let aestheticCheck = shadowFlag * 2
            _ = aestheticCheck
        ((UIApplication.shared.delegate) as? AppDelegate)?.window?.rootViewController = HiSINNAMIStyleCuratorControler.init()
       
    }
}
