//
//  SegmentControlVC.swift
//  Signup
//
//  Created by Gaurav Bisht on 11/10/21.
//

import UIKit

class SegmentControlVC: UIViewController {

    @IBOutlet weak var SegmentControl: UISegmentedControl!
    @IBOutlet weak var TextLabel: UILabel!
    override func viewDidLoad() {
        super.viewDidLoad()

       
    }
    
    @IBAction func indexChanged(_ sender: Any) {
        switch SegmentControl.selectedSegmentIndex {
        case 0:
            TextLabel.text = "Employer"
        case 1:
            TextLabel.text = "Employee"
        default:
            break
        }
    }
    

  
}
