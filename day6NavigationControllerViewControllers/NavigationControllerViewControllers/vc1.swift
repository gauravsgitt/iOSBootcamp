//
//  ViewController.swift
//  learn
//
//  Created by Gaurav Bisht on 30/09/21.
//  Copyright © 2021 Gaurav Bisht. All rights reserved.
//

import UIKit

var textToPass = ""

class vc1: UIViewController, UITextFieldDelegate {
    
    
    @IBOutlet weak var textToPassTextField: UITextField!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        textToPassTextField.delegate = self
    }
    
    @IBAction func PushToVC2Button(_ sender: UIButton) {
        
        let myStoryBoard = UIStoryboard.init(name: "Main", bundle: nil)
        let myVC = myStoryBoard.instantiateViewController(withIdentifier: "vc2") as? vc2
        self.navigationController?.pushViewController(myVC!, animated: true)
    }
    
    @IBAction func PresentVC3Button(_ sender: UIButton) {
        
        let myStoryBoard = UIStoryboard.init(name: "Main", bundle: nil)
        let myVC = myStoryBoard.instantiateViewController(withIdentifier: "vc3") as? vc3
        self.navigationController?.present(myVC!, animated: true, completion: nil)
    }
    
    func textFieldDidEndEditing(_ textField: UITextField) {
        textToPass = textToPassTextField.text ?? "No Text Entered."
    }}

