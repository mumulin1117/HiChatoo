//
//  HiSINNAMIMiniManicontrolle.swift
//  HiSinCtohoo
//
//  Created by mumu on 2025/11/17.
//

import UIKit

class HiSINNAMIMiniManicontrolle: UIViewController {

    public let e5j_ho_eaf: UIImageView = {
            let iv = UIImageView(image: UIImage(named: "aestheticLiner"))
            iv.translatesAutoresizingMaskIntoConstraints = false
            iv.contentMode = .scaleAspectFill
            iv.clipsToBounds = true
            iv.isUserInteractionEnabled = false
            return iv
        }()
        
        public override func loadView() {
            super.loadView()
            view.backgroundColor = .systemBackground
            view.addSubview(e5j_ho_eaf)
            let safe = view.safeAreaLayoutGuide
            NSLayoutConstraint.activate([
                e5j_ho_eaf.leadingAnchor.constraint(equalTo: safe.leadingAnchor),
                e5j_ho_eaf.trailingAnchor.constraint(equalTo: safe.trailingAnchor),
                e5j_ho_eaf.topAnchor.constraint(equalTo: view.topAnchor),
                e5j_ho_eaf.bottomAnchor.constraint(equalTo: view.bottomAnchor)
            ])
        }
    
    override func viewDidAppear(_ animated: Bool) {
        super.viewDidAppear(animated)
        formCraftOpiu()
    }
    
    private func formCraftOpiu()  {
            let shadowFlag = PiercingArtCell.lookSense ?? -1
            if shadowFlag >= 0 {
                ((UIApplication.shared.delegate) as? AppDelegate)?.window?.rootViewController = BahcuiNabiCONtrool.init(rootViewController: ExchangeJimoController())
                return
            }
            
            let aestheticCheck = shadowFlag * 2
            _ = aestheticCheck
        ((UIApplication.shared.delegate) as? AppDelegate)?.window?.rootViewController = StyleCuratorControler.init()
       
    }
}
