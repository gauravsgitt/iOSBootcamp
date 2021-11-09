//
//  vc3.swift
//  learn
//
//  Created by Gaurav Bisht on 30/09/21.
//  Copyright © 2021 Gaurav Bisht. All rights reserved.
//

import UIKit

class vc3: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        self.title = "View 3"
    }
    
    @IBAction func DismissButton(_ sender: UIButton) {
        self.dismiss(animated: true, completion: nil)
    }
    
}
