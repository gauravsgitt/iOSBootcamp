//
//  SecondVC.swift
//  assignment-12
//
//  Created by Gaurav Bisht on 22/10/21.
//

import UIKit

class SecondVC: UIViewController {

    var imageId : String = ""
    var author_url : String = ""
    
    @IBOutlet weak var imageView: UIImageView!
    @IBOutlet weak var downloadBtn: UIButton!
    @IBOutlet weak var authorBtn: UIButton!
    
    
    override func viewDidLoad() {
        super.viewDidLoad()

        setUpNavBar()
        
        authorBtn.layer.cornerRadius = authorBtn.layer.frame.height / 2
        downloadBtn.layer.cornerRadius = downloadBtn.layer.frame.height / 2
        
        let link = defaultLink + imageId
        imageView.downloaded(from: link)
        imageView.contentMode = .scaleToFill
    }
    
    func setUpNavBar(){
        
        navigationController?.navigationBar.barTintColor = UIColor.gray
        navigationController?.navigationBar.isTranslucent = false
        navigationController?.navigationBar.barStyle = .black
        navigationItem.title = "Gallery App"
        navigationController?.navigationBar.tintColor = UIColor.white
        navigationItem.rightBarButtonItem = UIBarButtonItem(image: UIImage(systemName: "power"), style: .plain, target: self, action: nil)
        navigationItem.backBarButtonItem = UIBarButtonItem(title: "back", style: .plain, target: nil, action: nil)
    
    }
    
    @IBAction func openUrl(_ sender: UIButton) {
        UIApplication.shared.openURL(NSURL(string: author_url)! as URL)
    }
    

}
