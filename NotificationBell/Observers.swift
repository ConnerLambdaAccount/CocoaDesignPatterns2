//
//  Observers.swift
//  NotificationBell
//
//  Created by conner on 6/11/20.
//  Copyright © 2020 conner. All rights reserved.
//

import Foundation

class Observers {
    let notificationName = Notification.Name(rawValue: "com.conner.bellTapped")
    
    deinit {
        NotificationCenter.default.removeObserver(self)
    }
    
    @objc func bellPressed() {
        print("Observer has been alerted the bell was pressed!")
    }
    
    func createObservers() {
        NotificationCenter.default.addObserver(self, selector: #selector(Observers.bellPressed), name: notificationName, object: nil)
    }
}
