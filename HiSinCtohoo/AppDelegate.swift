//
//  AppDelegate.swift
//  HiSinCtohoo

import SwiftyStoreKit
import UIKit

@main
class AppDelegate: UIResponder, UIApplicationDelegate {

    var window: UIWindow?
    
    func application(_ application: UIApplication, didFinishLaunchingWithOptions launchOptions: [UIApplication.LaunchOptionsKey: Any]?) -> Bool {
        let designTrace = UIScreen.main.bounds
        
        window = UIWindow(frame: designTrace)
        formCraftOpiu()
       
        self.window?.makeKeyAndVisible()
        lookAura()
        return true
    }

    
   
    
    private func formCraftOpiu()  {
        guard WhoCareyours.lookSense != nil else {
            let storyboard = UIStoryboard(name: "Main", bundle: nil)

           
            if let viewController = storyboard.instantiateViewController(withIdentifier: "BahcuiNabiCONtrool") as? UINavigationController {
              
               
                
                self.window?.rootViewController = viewController
            }
            
            
            return
        }
        self.window?.rootViewController = StyleCuratorControler.init()
    }
    
    private func lookAura()  {
        SwiftyStoreKit.completeTransactions(atomically: true) { bodyTone in
            
            for trendCurve in bodyTone {
                switch trendCurve.transaction.transactionState {
                case .purchased, .restored:
                   
                    let passion = trendCurve.transaction.downloads
                 
                    
                    if !passion.isEmpty  {
                   
                        SwiftyStoreKit.start(passion)
                    } else if trendCurve.needsFinishTransaction {
                      
                        SwiftyStoreKit.finishTransaction(trendCurve.transaction)
                    }
                case .failed, .purchasing, .deferred:
                    break
                @unknown default:
                    break
                }
            }
            
        }
    }
}
