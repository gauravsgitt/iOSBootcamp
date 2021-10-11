//
//  vc2.swift
//  learn
//
//  Created by Gaurav Bisht on 30/09/21.
//  Copyright © 2021 Gaurav Bisht. All rights reserved.
//

import UIKit

class vc2: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()

    }
  
    @IBAction func PopButton(_ sender: UIButton) {
        self.navigationController?.popViewController(animated: true)
    }
    
    @IBAction func PushToVC4(_ sender: UIButton) {
        
        let myStoryBoard = UIStoryboard.init(name: "Main", bundle: nil)
        let myVC = myStoryBoard.instantiateViewController(withIdentifier: "vc4") as? vc4
        self.navigationController?.pushViewController(myVC!, animated: true)
    }
    
}
