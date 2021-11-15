//
//  FirstViewController.swift
//  Delegate
//
//  Created by Gaurav Bisht on 20/10/21.
//  Copyright © 2021 Gaurav Bisht. All rights reserved.
//

import UIKit

protocol FirstDelegate: class {
    func valuesToBeRecieved(_ data: [String: String?])
}

class FirstViewController: UIViewController {

    weak var delegate: FirstDelegate?
    
    @IBOutlet weak var nameField: UITextField!
    
    @IBOutlet weak var motherField: UITextField!
    
    @IBOutlet weak var ageField: UITextField!
    
    var data: [String: String?] = [:]
    
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }
    

    @IBAction func postButtonTapped(_ sender: Any) {
    
        let data1: String? = nameField!.text
        let data2: String? = motherField!.text
        let data3: String? = ageField!.text
        
        data = ["name":data1,"mother's name":data2,"age":data3]

        dismiss(animated: true) {
            self.delegate?.valuesToBeRecieved(self.data)
        }
    
    }

}
