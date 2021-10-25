//
//  TextViewController.swift
//  Task5
//
//  Created by Gaurav Bisht on 25/10/21.
//

import UIKit

class TextViewController: UIViewController {
    
    let text: String
    private let textView: UITextView = {
        let tv = UITextView()
        tv.backgroundColor = .lightGray
        tv.textColor = .blue
        tv.isEditable = false
        tv.font = .systemFont(ofSize: 21)
        return tv
    }()
    
    init(text: String) {
        self.text = text
        self.textView.text = self.text
        super.init(nibName: nil, bundle: nil)
    }
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }

    override func viewDidLoad() {
        super.viewDidLoad()
        self.view.addSubview(textView)
        // Do any additional setup after loading the view.
    }
    
    override func viewDidLayoutSubviews() {
        self.textView.frame = view.bounds
    }

}
