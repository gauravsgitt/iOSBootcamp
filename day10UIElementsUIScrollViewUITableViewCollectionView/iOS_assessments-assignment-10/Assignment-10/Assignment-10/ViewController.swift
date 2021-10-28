//
//  ViewController.swift
//  Assignment-10
//
//  Created by Gaurav Bisht on 18/10/21.
//

import UIKit

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
    }

    @IBAction func pushTableViewButton(_ sender: Any) {
        
        let myStoryborad = UIStoryboard.init(name: "Main", bundle: nil)

        let vc = myStoryborad.instantiateViewController(withIdentifier: "DetailsController") as? DetailsController
        
        self.navigationController?.pushViewController(vc!, animated: true)

    }
    
    @IBAction func pushMovieViewButton(_ sender: Any) {
        
        let myStoryborad = UIStoryboard.init(name: "Main", bundle: nil)

        let vc = myStoryborad.instantiateViewController(withIdentifier: "MovieList") as? MovieList
        
        self.navigationController?.pushViewController(vc!, animated: true)

    }
    
}

