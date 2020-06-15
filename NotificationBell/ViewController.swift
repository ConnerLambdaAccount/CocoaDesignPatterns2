//
//  ViewController.swift
//  NotificationBell
//
//  Created by conner on 6/11/20.
//  Copyright © 2020 conner. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    @IBAction func bellTapped(_ sender: UIButton) {
        let name = Notification.Name(rawValue: "com.conner.bellTapped")
        NotificationCenter.default.post(name: name, object: nil)
    }
    
    var observerClass: Observers = Observers()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        observerClass.createObservers()
    }


}

