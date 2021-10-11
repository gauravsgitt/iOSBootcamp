//
//  vc4.swift
//  learn
//
//  Created by Gaurav Bisht on 30/09/21.
//  Copyright © 2021 Gaurav Bisht. All rights reserved.
//

import UIKit

class vc4: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()

    }
    
    @IBAction func PushToVC5Button(_ sender: UIButton) {
        
        let myStoryBoard = UIStoryboard.init(name: "Main", bundle: nil)
        let myVC = myStoryBoard.instantiateViewController(withIdentifier: "vc5") as? vc5
        self.navigationController?.pushViewController(myVC!, animated: true)
    }
    
    @IBAction func PopButton(_ sender: UIButton) {
        
        self.navigationController?.popViewController(animated: true)
    }
    
}
