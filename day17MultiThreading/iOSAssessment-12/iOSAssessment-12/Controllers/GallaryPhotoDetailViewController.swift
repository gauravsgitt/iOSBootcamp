//
//  GallaryPhotoDetailViewController.swift
//  iOSAssessment-12
//  Created by Gaurav Bisht on 25/10/21.

import UIKit
protocol round {
    func roundBttn(on btton: UIButton)
}

extension round {
    func roundBttn(on btton: UIButton) {
        btton.layer.cornerRadius = 20
    }
}


class GallaryPhotoDetailViewController: UIViewController, round {

    var imageId : String = ""
    var author_url : String = ""

    @IBOutlet weak var authorBtn: UIButton!
    @IBOutlet weak var imageView: UIImageView!
    @IBOutlet weak var downloadBtn: UIButton!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        roundBttn(on: authorBtn)
        roundBttn(on: downloadBtn)
       // setUpNavBar(of: UIColor().customBlueColor)
        addLogoToNavigationBarItem()
        
//        let link = defaultLink + imageId
//        imageView.downloaded(from: link)
    
    }

    @IBAction func openUrl(_ sender: UIButton) {
        UIApplication.shared.open(URL(string: author_url)! as URL)
    }
    
}
