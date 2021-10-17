//
//  HomeVC.swift
//  NestedControllerandStoryBoard
//
//  Created by Gaurav Bisht on 11/10/21.
//

import UIKit
let myStoryBoard = UIStoryboard(name: "Main", bundle: nil)
class HomeVC: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()

       
    }

}
extension HomeVC {
    

    

    
    @IBAction func goToProgramticTabBarController(_ sender: UIButton) {
        let vc = TabVC()
        self.navigationController?.pushViewController(vc, animated: true)
    }
    
    @IBAction func goToPageControl(_ sender: UIButton) {
        
        let vc = myStoryBoard.instantiateViewController(withIdentifier: "ViewController") as? ViewController
        
        self.navigationController?.pushViewController(vc!, animated: true)
    }
    
}

