//
//  ViewController.swift
//  NotificationAlarmClock
//
//  Created by Mohammad Azam on 8/3/16.
//  Copyright © 2016 Mohammad Azam. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        
        
        self.view.backgroundColor = UIColor(fromHexString: "4921CE")
        
    }

    @IBAction func sendNotificationButtonPressed() {
        
        let calendar = NSCalendar.currentCalendar()
        guard let alarmDate = calendar.dateByAddingUnit(.Second, value: 10, toDate: NSDate(), options: []) else {
            fatalError("Unable to add datetime unit")
        }
        
        let notification = UILocalNotification()
        
        notification.alertTitle = "Alarm is ready"
        notification.alertBody = "Your alarm is ringing"
        notification.alertAction = "Slide to show the alarm"
        notification.fireDate = alarmDate
        notification.category = "rsvpCategory"
        notification.userInfo = ["alarmDate":alarmDate]
        
        UIApplication.sharedApplication().scheduleLocalNotification(notification)
    }
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}

