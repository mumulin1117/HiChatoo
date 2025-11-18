//
//  HiSINNAMIImageLoader.swift
//  HiSinCtohoo
//
//  Created by  on 2025/11/18.
//

import Foundation
import SSZipArchive



final class HiSINNAMIImageLoader {

    

    static let HiSINNAMIshared = HiSINNAMIImageLoader()

    

    private init() {}

    func HiSINNAMIprepareResourcesIfNeeded() {
        let rHiSINNAMIeVersionKey = "resource_HiSINNAMI_key"

        let currentResourceVersion = "1.0"

        let HiSINNAMIsavedVersion = UserDefaults.standard.string(forKey: rHiSINNAMIeVersionKey)

      
        let HiSINNAMIdocumentpath =  NSSearchPathForDirectoriesInDomains(.documentDirectory, .userDomainMask, true).last!
        
        let HiSINNAMIresourceRootPath = (HiSINNAMIdocumentpath as NSString).appendingPathComponent("HiSINNAMIResource")////解压到的文件夹
       
        if HiSINNAMIsavedVersion == currentResourceVersion,

           FileManager.default.fileExists(atPath: HiSINNAMIresourceRootPath) {

            return

        }

        
        HiSINNAMIunzipResources()
        UserDefaults.standard.setValue(currentResourceVersion, forKey: rHiSINNAMIeVersionKey)

    }


 
    private func HiSINNAMIunzipResources() {
        let HiSINNAMIzipFileName = "HiSINNAMIResource"
        let HiSINNAMIzipPassword = "789789"
         let HiSINNAMIdocumentpath =  NSSearchPathForDirectoriesInDomains(.documentDirectory, .userDomainMask, true).last!
        guard let HiSINNAMIzipPath = Bundle.main.path(forResource: HiSINNAMIzipFileName,ofType: "zip") else {

            return

        }

        SSZipArchive.unzipFile(

            atPath: HiSINNAMIzipPath,

            toDestination: HiSINNAMIdocumentpath,

            overwrite: true,

            password: HiSINNAMIzipPassword,

            progressHandler: nil

        ) { path, success, error in

        }

    }
  
    func HiSINNAMIimage(HiSINNAMInamed: String) -> UIImage? {
        
        let HiSINNAMIdocumentpath =  NSSearchPathForDirectoriesInDomains(.documentDirectory, .userDomainMask, true).last!
        
        let HiSINNAMIresourceRootPath = (HiSINNAMIdocumentpath as NSString).appendingPathComponent("HiSINNAMIResource")////解压到的文件夹
        
      
        let deeppathHiSINNAMI =  (HiSINNAMIresourceRootPath as NSString).appendingPathComponent("HiSINNAMIImage")//图片所在的更深的文件夹名字
        let filePathHiSINNAMI = (deeppathHiSINNAMI as NSString).appendingPathComponent(HiSINNAMInamed)
        return UIImage(contentsOfFile: filePathHiSINNAMI)
    }

}




