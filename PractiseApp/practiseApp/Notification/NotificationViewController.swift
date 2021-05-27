//
//  NotificationViewController.swift
//  practiseApp
//
//  Created by systimanx on 24/05/21.
//

import UIKit
import UserNotifications

class NotificationViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
    }
    
    @IBAction func setLocalNotification(_ sender: Any) {
        let center = UNUserNotificationCenter.current()  // Ask Permission
        
        let content = UNMutableNotificationContent() // create Notification center
        content.title = "Its LocalNotification"
        content.body = "look me"
        content.sound = UNNotificationSound.default
        
        let trigger = UNTimeIntervalNotificationTrigger(timeInterval: 5, repeats: false) // create Notification Trigger
        
        let request = UNNotificationRequest(identifier: "LocalNotification", content: content, trigger: trigger) // create a Request
        center.add(request) { (error) in // Register the request
            if error != nil {
                print("Error = \(error?.localizedDescription ?? "error local notification")")
            }
        }
        
    }
}


// Local Notification

//let center = UNUserNotificationCenter.current()
//center.requestAuthorization(options: [.alert, .sound]) { (granted, error) in
//
//}
//
//let content = UNMutableNotificationContent()
//content.title = "Its is Notification"
//content.body = "Look me"
//
//let date = Date().addingTimeInterval(5)
//
//let dateComponents = Calendar.current.dateComponents([.year, .month, .day, .hour, .minute, .second], from: date)
//let trigger = UNCalendarNotificationTrigger(dateMatching: dateComponents, repeats: false)
//
//let uuidString = UUID().uuidString
//
//let request = UNNotificationRequest(identifier: uuidString, content: content, trigger: trigger)
//
//center.add(request) { (error) in
//
//}
