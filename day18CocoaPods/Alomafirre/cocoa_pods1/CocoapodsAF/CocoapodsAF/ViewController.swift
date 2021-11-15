//
//  ViewController.swift
//  CocoapodsAF
//
//  Created by Gaurav Bisht on 24/10/21.
//  Copyright © 2021 Gaurav Bisht. All rights reserved.
//

import UIKit
import Alamofire
class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        
        AF.request("https://jsonplaceholder.typicode.com/users").response { (response) in
            debugPrint(response)
        }
    }


}

