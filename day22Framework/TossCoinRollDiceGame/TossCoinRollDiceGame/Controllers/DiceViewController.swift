//
//  DiceViewController.swift
//  TossCoinRollDiceGame
//
//  Created by Gaurav Bisht on 15/11/21.
//

import UIKit

class DiceViewController: UIViewController {

    @IBOutlet weak var showDiceLbl: UILabel!
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }
    
    @IBAction func rolldiceBttn(_ sender: Any) {
        let randomInt = Int.random(in: 1..<7)
        
        print("throw a dice button tapped")
        
        showDiceLbl.text = String(randomInt)
    }
    
}
