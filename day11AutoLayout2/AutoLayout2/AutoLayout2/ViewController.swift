//
//  ViewController.swift
//  AutoLayout2
//
//  Created by Gaurav Bisht on 13/10/21.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var roundBtn: UIButton!
    @IBOutlet weak var roundBtn2: UIButton!
    @IBOutlet weak var roundBtn3: UIButton!
    @IBOutlet weak var roundBtn4: UIButton!
    
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        
        roundBtn.layer.cornerRadius = roundBtn.layer.frame.width/2
        roundBtn.layer.masksToBounds = true
        
        roundBtn2.layer.cornerRadius = roundBtn2.layer.frame.width/2
        roundBtn2.layer.masksToBounds = true
        
        roundBtn3.layer.cornerRadius = roundBtn3.layer.frame.width/2
        roundBtn3.layer.masksToBounds = true
        
        roundBtn4.layer.cornerRadius = roundBtn4.layer.frame.width/2
        roundBtn4.layer.masksToBounds = true
    }


}

