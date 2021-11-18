//
//  Theory.swift
//  iOSAssessment-15
//
//  Created by Gaurav Bisht on 08/11/21.
//

import Foundation

/**
 
 Q3. attached a demo for local notification in this branch. named as "UNUserLocalNotificationDemo"
 
 Q4. What is push payload size in iOS?
 Sol: Push payload size is maximum size of the type of push notification

 For regular remote notifications, the maximum size is 4KB (4096 bytes)
 For Voice over Internet Protocol (VoIP) notifications, the maximum size is 5KB (5120 bytes)
 If you are using the legacy APNs binary interface to send notifications instead of an HTTP/2 request, the maximum payload size is 2KB (2048 bytes)

 Q5. What is push notification?How it works?
 Sol: Push notifications are messages that pops up on a user’s mobile device in a heads-up manner are called push notifications. Push notifications help in delivering timely & relevant information to users even if the user is not active on the website or app. Remote Push notifications enable developers to present information to their users outside the app and to redirect them to the app if necessary. Important events will arrive in the form of badges, sounds or banners.

 Register app for push notification
 Handle didRegisterForRemoteNotificationsWithDeviceToken method
 Set targets> Capability> background modes> Remote Notification
 Handle didReceiveRemoteNotification
 
 
  Q-6 Reuires Developer Account, Provisional Certificate etc.
 
 
 
 Q7. What is required to send a silent push.
 Sol: A silent push notification or some might call it background notification is a notification that does not trigger any alert or sound. It wakes up your app and allows you to perform any non-UI related operations in the background.You need to add “Background Modes” and “Push Notifications” capabilities in Xcode in order for your app to be able to receive a silent push notification.

 Q8. Name the key a payload should have to indicate that push has a media to show ?
 Sol: The payload is a JSON dictionary object (as defined by RFC 4627) that you create on your server. The JSON dictionary object must contain an aps key, the value of which is a dictionary containing data used by the system to deliver the notification.
 “rm" is used to pass Rich Media data, such as a link to download it ("url" key) and its timestamp ("ts")
 
 */
