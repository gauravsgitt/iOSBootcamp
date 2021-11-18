//
//  DisplayPageViewController.swift
//  iOSAssessment-15
//
//  Created by Gaurav Bisht on 08/11/21.
//

import UIKit

class DisplayPageViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }
    //Button action for setting notification as facebook type
    @IBAction func fbSetBtn(_ sender: Any) {
        NotificationCenter.default.post(name: .facebook, object: nil)
        self.navigationController?.popViewController(animated: true)
    }
    
    @IBAction func twSetBtn(_ sender: Any) {
        NotificationCenter.default.post(name: .twitter, object: nil)
        self.navigationController?.popViewController(animated: true)
    }
    
}
