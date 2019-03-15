//
//  ViewController.swift
//  StateSampleApp
//
//  Created by Walid Abou Ali on 3/15/19.
//  Copyright © 2019 Walid Abou Ali. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var labelView: UILabel!
    var name = String(getStateValue(key:"name") as! String);
    var age = 2019 - (getStateValue(key:"yearOfbirth") as! Int);
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        NotificationCenter.default.addObserver(self, selector: #selector(self.onNameChange(notification:)), name: Notification.Name("name"), object: nil)
         NotificationCenter.default.addObserver(self, selector: #selector(self.onYearChange(notification:)), name: Notification.Name("yearOfbirth"), object: nil)
        
        setStateValue(key: "name", value: "Ahmed");
        setStateValue(key: "yearOfbirth", value: 1990);
        
        

    }
    func setText() {
        self.labelView.text = "Hello \(self.name), your age is \(self.age)"
    }
     @objc func  onNameChange(notification: Notification) {
         self.name  = String(getStateValue(key:"name") as! String);
        self.setText();
    
    }
    @objc func  onYearChange(notification: Notification) {
        self.age = 2019 - (getStateValue(key:"yearOfbirth") as! Int);
        self.setText();

    }
    
    


}

