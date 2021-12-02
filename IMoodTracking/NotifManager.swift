//
//  NotificationManager.swift
//  IMoodTracking
//
//  Created by viv w on 12/1/21.
//

import Foundation
import UIKit
import UserNotifications

class NotificationManager {
    func addNotification(startDate: Date, endDate: Date) {
        let center = UNUserNotificationCenter.current()
        center.requestAuthorization(options: [.alert, .badge, .sound], completionHandler: {granted, error in})
        
        let content = UNMutableNotificationContent()
        content.title = "How are you feeling?"
        content.body = "Please go into the app and log your mood"
        content.sound = .default
        
        let notificationInvterval = endDate.timeIntervalSince(startDate) / 5
        
        for i in 1...5 {
            let triggerDate = startDate.addingTimeInterval(Double(i) * notificationInvterval)
            let dateComponents = Calendar.current.dateComponents([.hour, .minute], from: triggerDate)
            
            let trigger = UNCalendarNotificationTrigger(dateMatching: dateComponents, repeats: true)
            
            let request = UNNotificationRequest(identifier: "\(i) notification", content: content, trigger: trigger)
            
            center.add(request, withCompletionHandler: nil)
        }
    }
    
    func removePendingNotification(notificationNum: Int) {
        let center = UNUserNotificationCenter.current()
        
        center.getPendingNotificationRequests(completionHandler: {requests in
            for request in requests {
                if (request.identifier == "\(notificationNum) notification") {
                    center.removePendingNotificationRequests(withIdentifiers: ["\(notificationNum) notification"])
                }
            }
        })
    }
    
    func removeAllPendingNotification() {
        let center = UNUserNotificationCenter.current()
        center.removeAllPendingNotificationRequests()
    }
}
