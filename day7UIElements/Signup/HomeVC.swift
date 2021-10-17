//
//  HomeVC.swift
//  Signup
//
//  Created by Gaurav Bisht on 11/10/21.
//

import UIKit

class HomeVC: UIViewController {

    @IBOutlet weak var TextView: UITextView!
    override func viewDidLoad() {
        super.viewDidLoad()

       
    }
    

}
extension HomeVC {
    
    @IBAction func goToDetails(_ sender: UIButton) {
        if TextView.text != "" {
            let myStoryborad = UIStoryboard(name: "Main", bundle: nil)
            
            let vc = myStoryborad.instantiateViewController(withIdentifier: "SegmentControlVC") as? SegmentControlVC
            
            self.navigationController?.pushViewController(vc!, animated: true)
        }
    }
    
}

