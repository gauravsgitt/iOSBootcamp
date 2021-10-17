//
//  ShadowVC.swift
//  NestedControllerandStoryBoard
//
//  Created by Gaurav Bisht on 11/10/21.
//

import UIKit

class ShadowVC: UIViewController {

    @IBOutlet weak var demoView: UIView!
    override func viewDidLoad() {
        super.viewDidLoad()

        demoView.layer.cornerRadius = demoView.frame.height / 2

        // border
        demoView.layer.borderWidth = 1.0
        demoView.layer.borderColor = UIColor.black.cgColor

        // shadow
        demoView.layer.shadowColor = UIColor.black.cgColor
        demoView.layer.shadowOffset = CGSize(width: 3, height: 3)
        demoView.layer.shadowOpacity = 0.7
        demoView.layer.shadowRadius = 4.0
    }
    

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destination.
        // Pass the selected object to the new view controller.
    }
    */

}
