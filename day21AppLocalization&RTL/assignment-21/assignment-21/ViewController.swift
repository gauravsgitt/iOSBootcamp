//
//  ViewController.swift
//  assignment-21
//
//  Created by Gaurav Bisht on 02/11/21.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var nameLabel: UILabel!
    @IBOutlet weak var stateLabel: UILabel!
    @IBOutlet weak var countryLabel: UILabel!
    @IBOutlet weak var dobLabel: UILabel!
    @IBOutlet weak var lotteryLabel: UILabel!
    @IBOutlet weak var nameText: UITextField!
    @IBOutlet weak var stateText: UITextField!
    @IBOutlet weak var countryText: UITextField!
    @IBOutlet weak var dobText: UITextField!
    @IBOutlet weak var lotteryText: UITextField!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        nameLabel.text = NSLocalizedString("nameLabel", comment: "NA")
        stateLabel.text = NSLocalizedString("stateLabel", comment: "NA")
        countryLabel.text = NSLocalizedString("countryLabel", comment: "NA")
        dobLabel.text = NSLocalizedString("dobLabel", comment: "NA")
        lotteryLabel.text = NSLocalizedString("lotteryLabel", comment: "NA")
        // Do any additional setup after loading the view.
    }


}

