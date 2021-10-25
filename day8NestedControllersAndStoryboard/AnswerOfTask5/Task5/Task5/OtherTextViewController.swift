//
//  ViewController2.swift
//  Task5
//
//  Created by Gaurav Bisht on 25/10/21.
//

import UIKit

class OtherTextViewController: UIViewController {

    @IBOutlet weak var textView: UITextView!
    var text: String = ""
    
    override func viewDidLoad() {
        super.viewDidLoad()
        self.textView.text = self.text
        // Do any additional setup after loading the view.
    }
    
}
