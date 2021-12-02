//
//  WakingHoursController.swift
//  IMoodTracking
//
//  Created by viv w on 12/1/21.
//

import UIKit

class WakingHoursController: UIViewController {
    
    @IBOutlet weak var startDatePicker: UIDatePicker!
    @IBOutlet weak var endDatePicker: UIDatePicker!
    
    
    @IBAction func saveWakingHours() {
        let startDate = startDatePicker.date
        let endDate = endDatePicker.date
        let alert = UIAlertController(title: nil, message: nil, preferredStyle: .alert)
        
        if (endDate.timeIntervalSince(startDate) < 0) {
            alert.title = "Invalid waking hours"
            alert.message = "The start time cannot be later than the end time."
        }
        else {
            let notifManager = NotificationManager()
            notifManager.removeAllPendingNotification()
            notifManager.addNotification(startDate: startDate, endDate: endDate)
            
            alert.title = "Waking hours updated"
            alert.message = "Your waking hours were successfully updated."
        }
        alert.addAction(UIAlertAction(title: "OK", style: .cancel, handler: nil))
        self.present(alert, animated: true, completion: nil)
    }
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }


}
