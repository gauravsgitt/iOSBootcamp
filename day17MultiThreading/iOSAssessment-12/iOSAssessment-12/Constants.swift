//
//  Contants.swift
//  iOSAssessment-12
//
//  Created by Gaurav Bisht on 25/10/21.
//

import Foundation
import UIKit

let defaultLink = "https://picsum.photos/200/300?image="

extension UIColor {
  var customBlueColor: UIColor {
    return UIColor(red: 226/255, green: 237255 ,blue: 214/255 , alpha:1.00)
  }
}

//var flag: Bool = false
//
//class Constants {
//    static func setRoot(){
//        
//        guard let sceneDelegate = UIApplication.shared.connectedScenes.first?.delegate as? SceneDelegate else { return }
//        
//        if flag {
//            
//            let storyboard = UIStoryboard.init(name: "Main", bundle: nil)
//            let userInfoScene = storyboard.instantiateViewController(withIdentifier: "GallaryPhotoDetailViewController") as? GallaryPhotoDetailViewController
//            let navigation = UINavigationController(rootViewController: userInfoScene!)
//            sceneDelegate.window?.rootViewController = navigation
//            sceneDelegate.window?.makeKeyAndVisible()
//        } else {
//            
//            let storyboard = UIStoryboard.init(name: "Main", bundle: nil)
//            let loginUserScene = storyboard.instantiateViewController(withIdentifier: "GalleryViewController") as? GalleryViewController
//            sceneDelegate.window?.rootViewController = loginUserScene
//            sceneDelegate.window?.makeKeyAndVisible()
//        }
//    }
//}
