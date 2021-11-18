//
//  ViewController.swift
//  UNUserLocalNotificationDemo
//
//  Created by Gaurav Bisht  on 08/11/21.
//  Copyright © 2021 Gaurav Bisht. All rights reserved.
//

import UIKit
import UserNotifications

class ViewController: UIViewController, UNUserNotificationCenterDelegate {

    let center = UNUserNotificationCenter.current()

    override func viewDidLoad() {
        super.viewDidLoad()
        registerLocal()
        
    }

    //MARK: - Register for local notification -
    
    @objc func registerLocal() {
//        let center = UNUserNotificationCenter.current()
        
        center.requestAuthorization(options: [.alert, .badge, .sound]) { (granted, error) in
            if granted {
                print("Yay!")
            } else {
                print("D'oh")
            }
        }
    }
    
    //MARK: - Button Action -
    
    @IBAction func buttonScheduleNotificationTapped(_ sender: Any) {
        
        center.removeAllPendingNotificationRequests()
        registerCategories()
        let content = UNMutableNotificationContent()
        content.title = "Hi Team"
        content.body = "This is UNUserNotification Demo."
        content.categoryIdentifier = "alarm"
        content.userInfo = ["set by": "Satyam"]
        content.sound = UNNotificationSound.default
        
//        var dateComponents = DateComponents()
//        dateComponents.hour = 19
//        dateComponents.minute = 39
        let trigger = UNTimeIntervalNotificationTrigger(timeInterval: 60, repeats: true)

        let request = UNNotificationRequest(identifier: UUID().uuidString, content: content, trigger: trigger)
        center.add(request)
    }
    
    
    @IBAction func buttonClearAllNotificationTapped(_ sender: Any) {
        
        center.removeAllPendingNotificationRequests()

    }
 
    func registerCategories() {

        center.delegate = self
        let show = UNNotificationAction(identifier: "show", title: "Tell me more…", options: .foreground)
        let category = UNNotificationCategory(identifier: "alarm", actions: [show], intentIdentifiers: [])
        
        center.setNotificationCategories([category])
    }
    
    //MARK: - UNUserNotification Delegate Method -
    
    func userNotificationCenter(_ center: UNUserNotificationCenter, willPresent notification: UNNotification, withCompletionHandler completionHandler: @escaping (UNNotificationPresentationOptions) -> Void)
    {
        completionHandler([.alert, .badge, .sound])
    }
    
    func userNotificationCenter(_ center: UNUserNotificationCenter, didReceive response: UNNotificationResponse, withCompletionHandler completionHandler: @escaping () -> Void) {
        // pull out the buried userInfo dictionary
        let userInfo = response.notification.request.content.userInfo
        
        if let customData = userInfo["customData"] as? String {
        print("Custom data received: \(customData)")
        
        switch response.actionIdentifier {
        case UNNotificationDefaultActionIdentifier:
            // the user swiped to unlock
            print("Default identifier")
            
        case "show":
            // the user tapped our "show more info…" button
            print("Show more information…")
            
        default:
            break
        }
    }
    
    // you must call the completion handler when you're done
    completionHandler()
}

}

