//
//  CoinViewController.swift
//  TossCoinRollDiceGame
//
//  Created by Gaurav Bisht on 15/11/21.
//

import UIKit

class CoinViewController: UIViewController {

    @IBOutlet weak var coinShowLbl: UILabel!
    
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }
    
    @IBAction func tossCoinBttn(_ sender: Any) {
        
        print("toss coin button tapped")
        
        let randomInt = Int.random(in: 1..<3)
        
        if randomInt == 1 {
            coinShowLbl.text = "Head"
        }
        else {
            coinShowLbl.text = "Tail"
        }
        
    }
    
}
