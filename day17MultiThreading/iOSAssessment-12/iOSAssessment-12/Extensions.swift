//
//  Extensions.swift
//  iOSAssessment-12
//
//  Created by Gaurav Bisht on 25/10/21.
//

import Foundation
import UIKit

//extension UIImageView {
//    func downloaded(from url: URL, contentMode mode: ContentMode = .scaleToFill) {
//        contentMode = mode
//        URLSession.shared.dataTask(with: url) { data, response, error in
//            guard
//                let httpURLResponse = response as? HTTPURLResponse, httpURLResponse.statusCode == 200,
//                let mimeType = response?.mimeType, mimeType.hasPrefix("image"),
//                let data = data, error == nil,
//                let image = UIImage(data: data)
//                else { return }
//            DispatchQueue.main.async() { [weak self] in
//                self?.image = image
//            }
//        }.resume()
//    }
//    
//    func downloaded(from link: String, contentMode mode: ContentMode = .scaleToFill) {
//        guard let url = URL(string: link) else { return }
//        downloaded(from: url, contentMode: mode)
//    }
//}


extension UIViewController {
    
    func setUpNavBar(of color: UIColor) {

        addLogoToNavigationBarItem()
        navigationController?.navigationBar.barTintColor = color
        //navigationController?.navigationBar.isTranslucent = false
        
    }
}


extension UIViewController {

    func addLogoToNavigationBarItem() {
        let imageView = UIImageView()
        imageView.translatesAutoresizingMaskIntoConstraints = false
        imageView.heightAnchor.constraint(equalToConstant: 20).isActive = true
        imageView.contentMode = .scaleAspectFit
        imageView.image = UIImage(named: "launchScreenImage")
        
        let label = UILabel()
        label.translatesAutoresizingMaskIntoConstraints = false
        label.text = "canvas"
        label.font = .systemFont(ofSize: 20)
        
        let contentView = UIView()
        self.navigationItem.titleView = contentView
        self.navigationItem.titleView?.addSubview(imageView)
        self.navigationItem.titleView?.addSubview(label)
        imageView.centerXAnchor.constraint(equalTo: contentView.leadingAnchor, constant: -20).isActive = true
        imageView.centerYAnchor.constraint(equalTo: contentView.centerYAnchor).isActive = true
        label.centerYAnchor.constraint(equalTo: contentView.centerYAnchor).isActive = true
        
        navigationController?.navigationBar.isTranslucent = false
        navigationItem.rightBarButtonItem = UIBarButtonItem(image: UIImage(systemName: "power"), style: .plain, target: self, action: #selector(alertPop))
        navigationController?.navigationBar.barTintColor = UIColor().customBlueColor
        //navigationItem.leftBarButtonItem = UIBarButtonItem(title: "back", style: .plain, target: nil, action: nil)
        
    }
    
    @objc func alertPop(){
         
        // create the alert
        let alert = UIAlertController(title: "UIAlertController", message: "Would you like to continue learning how to use iOS alerts?", preferredStyle: UIAlertController.Style.alert)

        // add the actions (buttons)
       // alert.addAction(UIAlertAction(title: "Continue", style: UIAlertAction.Style.default, handler: nil))
        alert.addAction(UIAlertAction(title: "Ok", style: UIAlertAction.Style.cancel, handler: nil))

        // show the alert
        self.present(alert, animated: true, completion: nil)
    }

}
