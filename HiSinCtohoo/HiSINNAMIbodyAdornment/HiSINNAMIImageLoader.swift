//
//  HiSINNAMIImageLoader.swift
//  HiSinCtohoo
//
//  Created by  on 2025/11/18.
//

import Foundation
import SSZipArchive



final class HiSINNAMIImageLoader {

    

    static let shared = HiSINNAMIImageLoader()

    

    private init() {}
    
    /// 判断是否需要解压 + 解压资源

    func HiSINNAMIprepareResourcesIfNeeded() {
        let resourceVersionKey = "resource_HiSINNAMI_key"

        let currentResourceVersion = "1.0" // ★ 你可以自定义版本号

        let savedVersion = UserDefaults.standard.string(forKey: resourceVersionKey)

        // 如果资源存在且版本一致，不需要重新解压
        let documentpath =  NSSearchPathForDirectoriesInDomains(.documentDirectory, .userDomainMask, true).last!
        
        let resourceRootPath = (documentpath as NSString).appendingPathComponent("HiSINNAMIResource")////解压到的文件夹
       
        if savedVersion == currentResourceVersion,

           FileManager.default.fileExists(atPath: resourceRootPath) {

            return

        }

        
        HiSINNAMIunzipResources()
        UserDefaults.standard.setValue(currentResourceVersion, forKey: resourceVersionKey)

    }


    /// 解压资源文件

    private func HiSINNAMIunzipResources() {
        let zipFileName = "HiSINNAMIResource"//zip文件名
        let zipPassword = "789789"//解压密码
         let documentpath =  NSSearchPathForDirectoriesInDomains(.documentDirectory, .userDomainMask, true).last!
        guard let zipPath = Bundle.main.path(forResource: zipFileName,ofType: "zip") else {

            return

        }

        SSZipArchive.unzipFile(

            atPath: zipPath,

            toDestination: documentpath,

            overwrite: true,

            password: zipPassword,

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




