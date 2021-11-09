//
//  vc5.swift
//  learn
//
//  Created by Gaurav Bisht on 30/09/21.
//  Copyright © 2021 Gaurav Bisht. All rights reserved.
//

import UIKit

class vc5: UIViewController {

    
    @IBOutlet weak var textLabel: UILabel!
    @IBOutlet weak var segueToVC6Button: UIButton!
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        self.title = "View 5"
        textLabel.text = textToPass
    }
    
    @IBAction func PopToRootVCButton(_ sender: UIButton) {
        self.navigationController?.popToRootViewController(animated: true)
    }
    

}
