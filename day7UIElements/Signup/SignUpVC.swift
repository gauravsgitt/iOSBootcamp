//
//  SignUpVC.swift
//  Signup
//
//  Created by Gaurav Bisht on 07/10/21.
//

import UIKit

class SignUpVC: UIViewController, UINavigationControllerDelegate, UIImagePickerControllerDelegate{
    var imagePicker = UIImagePickerController()
    
    
    @IBOutlet weak var ImageViewTf: UIImageView!
    @IBOutlet weak var ChoosePicBtn: UIButton!
    @IBOutlet weak var UserNameTF: UITextField!
    @IBOutlet weak var EmailTF: UITextField!
    @IBOutlet weak var PhoneNumberTF: UITextField!
    @IBOutlet weak var DOBTf: UITextField!
    @IBOutlet weak var POBTf: UITextField!
    
    
    override func viewDidLoad() {
        super.viewDidLoad()

        
        setupNavBar()
        
        PhoneNumberTF.delegate = self
        self.DOBTf.setInputViewDatePicker(target: self, selector: #selector(tapDone))

        
    }
    
    @objc func tapDone() {
        if let datePicker = self.DOBTf.inputView as? UIDatePicker {
            let dateformatter = DateFormatter()
            dateformatter.dateStyle = .medium
            self.DOBTf.text = dateformatter.string(from: datePicker.date)
        }
        self.DOBTf.resignFirstResponder()
    }
    
    private func setupNavBar(){
        
        let navBarAppearence = UINavigationBarAppearance()
        navBarAppearence.backgroundColor = UIColor(red: 245/255, green: 245/255, blue: 245/255, alpha: 1.0)
        navigationController?.navigationBar.standardAppearance = navBarAppearence
        navigationController?.navigationBar.scrollEdgeAppearance = navBarAppearence
        navigationController?.navigationBar.backIndicatorImage = UIImage(systemName: "arrow.left")
        
        navigationController?.navigationBar.layer.shadowColor = UIColor.black.cgColor
        navigationController?.navigationBar.layer.shadowOffset = CGSize(width: 0.0, height: 2.0)
        navigationController?.navigationBar.layer.shadowRadius = 2.0
        navigationController?.navigationBar.layer.shadowOpacity = 0.5
        navigationController?.navigationBar.layer.masksToBounds = false
    }

   
}

extension SignUpVC {
    
    @IBAction func photoUploadBtn(_ sender: UIButton) {
        if UIImagePickerController.isSourceTypeAvailable(.savedPhotosAlbum){
            print("Button capture")
            
            imagePicker.delegate = self
            imagePicker.sourceType = .savedPhotosAlbum
            imagePicker.allowsEditing = false
            
            present(imagePicker, animated: true, completion: nil)
        }
    }
    
    func imagePickerController(picker: UIImagePickerController!, didFinishPickingImage image: UIImage!, editingInfo: NSDictionary!){
        self.dismiss(animated: true, completion: { () -> Void in
            
        })
        ImageViewTf.image = image
    }
 
    
    @IBAction func signUpBtn(_ sender: UIButton) {
        
        if UserNameTF.text != "" && PhoneNumberTF.text != "" && EmailTF.text != "" && DOBTf.text != ""
            
        {
            
            let myStoryborad = UIStoryboard(name: "Main", bundle: nil)
            
            let vc = myStoryborad.instantiateViewController(withIdentifier: "HomeVC") as? HomeVC
            
            self.navigationController?.pushViewController(vc!, animated: true)
            
        }
        
    }
    
}
extension SignUpVC: UITextFieldDelegate {
    
    func textFieldShouldReturn(_ textField: UITextField) -> Bool {
        
        switch textField {
            
        case UserNameTF:
            EmailTF.becomeFirstResponder()
        case EmailTF:
            PhoneNumberTF.becomeFirstResponder()
        case PhoneNumberTF:
            POBTf.becomeFirstResponder()
        default:
            DOBTf.resignFirstResponder()
            
        }
        
        return true
    }
    
    
    func textField(_ textField: UITextField, shouldChangeCharactersIn range: NSRange, replacementString string: String) -> Bool {
        //For mobile number validation
        if textField == PhoneNumberTF {
            let allowedCharacters = CharacterSet(charactersIn:"+0123456789 ")
            let characterSet = CharacterSet(charactersIn: string)
            return allowedCharacters.isSuperset(of: characterSet)
        }
        
        if textField == POBTf {
            let allowedCharacters = CharacterSet(charactersIn:"abcdefghijklmnopqrstuvwxyzABCDEFGHIJKLMNOPQRSTUVWXYZ")
            let characterSet = CharacterSet(charactersIn: string)
            return allowedCharacters.isSuperset(of: characterSet)
        }
        
        return true
    }
    
}
extension UITextField {
    
    func setInputViewDatePicker(target: Any, selector: Selector) {
        // Create a UIDatePicker object and assign to inputView
        let screenWidth = UIScreen.main.bounds.width
        let datePicker = UIDatePicker(frame: CGRect(x: 0, y: 0, width: screenWidth, height: 216))//1
        datePicker.datePickerMode = .date //2
        // iOS 14 and above
        if #available(iOS 14, *) {// Added condition for iOS 14
          datePicker.preferredDatePickerStyle = .wheels
          datePicker.sizeToFit()
        }
        self.inputView = datePicker //3
        
        // Create a toolbar and assign it to inputAccessoryView
        let toolBar = UIToolbar(frame: CGRect(x: 0.0, y: 0.0, width: screenWidth, height: 44.0)) //4
        let flexible = UIBarButtonItem(barButtonSystemItem: .flexibleSpace, target: nil, action: nil) //5
        let cancel = UIBarButtonItem(title: "Cancel", style: .plain, target: nil, action: #selector(tapCancel)) // 6
        let barButton = UIBarButtonItem(title: "Done", style: .plain, target: target, action: selector) //7
        toolBar.setItems([cancel, flexible, barButton], animated: false) //8
        self.inputAccessoryView = toolBar //9
    }
    
    @objc func tapCancel() {
        self.resignFirstResponder()
    }
    
}

