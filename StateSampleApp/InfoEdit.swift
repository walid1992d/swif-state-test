//
//  InfoEdit.swift
//  StateSampleApp
//
//  Created by Walid Abou Ali on 3/15/19.
//  Copyright © 2019 Walid Abou Ali. All rights reserved.
//

import UIKit

class InfoEdit: UIViewController {

    @IBOutlet weak var nameField: UITextField!
    @IBOutlet weak var yearField: UITextField!
    var name = String(getStateValue(key:"name") as! String);
    var year = "\(getStateValue(key:"yearOfbirth") as! Int)";

    override func viewDidLoad() {
        super.viewDidLoad()
        self.nameField.text = name;
        self.yearField.text = year;
        // Do any additional setup after loading the view.
    }
    @IBAction func onSave(_ sender: Any) {
        setStateValue(key: "name", value: self.nameField.text as Any);
        setStateValue(key: "yearOfbirth", value: Int(self.yearField.text!) as Any);

        self.dismiss(animated: true);
    }
    

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destination.
        // Pass the selected object to the new view controller.
    }
    */

}
