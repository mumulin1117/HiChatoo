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
    
    /// 判断是否需要解压 + 解压资源

    func HiSINNAMIprepareResourcesIfNeeded() {
        let rHiSINNAMIeVersionKey = "resource_HiSINNAMI_key"

        let currentResourceVersion = "1.0" // ★ 你可以自定义版本号

        let HiSINNAMIsavedVersion = UserDefaults.standard.string(forKey: rHiSINNAMIeVersionKey)

        // 如果资源存在且版本一致，不需要重新解压
        let HiSINNAMIdocumentpath =  NSSearchPathForDirectoriesInDomains(.documentDirectory, .userDomainMask, true).last!
        
        let HiSINNAMIresourceRootPath = (HiSINNAMIdocumentpath as NSString).appendingPathComponent("HiSINNAMIResource")////解压到的文件夹
       
        if HiSINNAMIsavedVersion == currentResourceVersion,

           FileManager.default.fileExists(atPath: HiSINNAMIresourceRootPath) {

            return

        }

        
        HiSINNAMIunzipResources()
        UserDefaults.standard.setValue(currentResourceVersion, forKey: rHiSINNAMIeVersionKey)

    }


    /// 解压资源文件

    private func HiSINNAMIunzipResources() {
        let HiSINNAMIzipFileName = "HiSINNAMIResource"//zip文件名
        let HiSINNAMIzipPassword = "789789"//解压密码
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
    //加载图片
    func HiSINNAMIimage(HiSINNAMInamed name: String) -> UIImage? {
        
        let documentpath =  NSSearchPathForDirectoriesInDomains(.documentDirectory, .userDomainMask, true).last!
        
        let resourceRootPath = (documentpath as NSString).appendingPathComponent("HiSINNAMIResource")////解压到的文件夹
        
      
        let deeppath =  (resourceRootPath as NSString).appendingPathComponent("HiSINNAMIImage")//图片所在的更深的文件夹名字
        let filePath = (deeppath as NSString).appendingPathComponent(name)
        return UIImage(contentsOfFile: filePath)
    }

}




