//
//  ScrollViewController.swift
//  Assignment-10
//
//  Created by Gaurav Bisht on 18/10/21.
//

import UIKit
protocol SendUsersListDelegate: AnyObject{
    func sendDataToList(content: UsersListItemsModel)
}

class addDetails: UIViewController {
   
    
    @IBOutlet weak var nameTF: UITextField!
    @IBOutlet weak var addTF: UITextField!
    @IBOutlet weak var ageTF: UITextField!
    @IBOutlet weak var odTF: UITextField!
    
    
    weak var delegate: SendUsersListDelegate?
    
    override func viewDidLoad() {
        super.viewDidLoad()

        
    }
    
    @IBAction func backToHome(_ sender: UIBarButtonItem) {
        self.navigationController?.popViewController(animated: true)
    }
    
    @IBAction func goToUsersList(_ sender: UIBarButtonItem) {
        delegate?.sendDataToList(content: UsersListItemsModel(name: nameTF.text, address: addTF.text, age: ageTF.text, otherDetails: odTF.text))
        
        self.navigationController?.popViewController(animated: true)
    }
    
   
}
extension addDetails: UITextFieldDelegate {
    
    func textFieldShouldReturn(_ textField: UITextField) -> Bool {
        
        switch textField {
        case nameTF:
            addTF.becomeFirstResponder()
        case addTF:
            ageTF.becomeFirstResponder()
        case ageTF:
            odTF.resignFirstResponder()
        default:
            break
        }
        
        return true
    }
    
}

