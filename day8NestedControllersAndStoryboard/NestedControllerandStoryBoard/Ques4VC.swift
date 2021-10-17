//
//  Ques4VC.swift
//  NestedControllerandStoryBoard
//
//  Created by Gaurav Bisht on 11/10/21.
//

import UIKit

class Ques4VC: UIViewController {

    var page: Pages
    
    init(with page: Pages) {
        self.page = page
        
        super.init(nibName: nil, bundle: nil)
    }
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }
    

}
