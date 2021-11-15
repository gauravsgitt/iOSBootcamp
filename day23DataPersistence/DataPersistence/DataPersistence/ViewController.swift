//
//  ViewController.swift
//  DataPersistence
//
//  Created by Gaurav Bisht on 03/11/21.
//  Copyright © 2021 Gaurav Bisht. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var userNameField: UITextField!
    @IBOutlet weak var passwordField: UITextField!
    override func viewDidLoad() {
        super.viewDidLoad()
        
//        ##########use this to login########
//        username - admin
//        password - admin
        
        // Do any additional setup after loading the view.
        if UserDefaults.standard.bool(forKey: "ISUSERLOGGEDIN") == true {
            //user is already logged in
            
        let storyboard = UIStoryboard(name: "Main", bundle: nil)
        let mainTabBarController = storyboard.instantiateViewController(identifier: "MainTabBarController")
                       
   // This is to get the SceneDelegate object from your view controller
  // then call the change root view controller function to change to main tab bar
        (UIApplication.shared.connectedScenes.first?.delegate as? SceneDelegate)?.changeRootViewController(mainTabBarController)
            
        }
    }

    @IBAction func loginButtonTapped(_ sender: Any) {
        if userNameField.text == "admin" && passwordField.text == "admin" {
            UserDefaults.standard.set(true, forKey: "ISUSERLOGGEDIN")
            
            let storyboard = UIStoryboard(name: "Main", bundle: nil)
            let mainTabBarController = storyboard.instantiateViewController(identifier: "MainTabBarController")
            
            // This is to get the SceneDelegate object from your view controller
            // then call the change root view controller function to change to main tab bar
            (UIApplication.shared.connectedScenes.first?.delegate as? SceneDelegate)?.changeRootViewController(mainTabBarController)
            
        }
        
    }
    
}

