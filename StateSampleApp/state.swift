//
//  state.swift
//  StateSampleApp
//
//  Created by Walid Abou Ali on 3/15/19.
//  Copyright © 2019 Walid Abou Ali. All rights reserved.
//

import Foundation

@objcMembers class StateClass: NSObject   {
     var  name: String =  "Walid";
     var yearOfbirth:Int =  1992;
    

    

}

var state =  StateClass();

func setStateValue(key: String, value: Any) {
    state.setValue(value, forKey: key);
    NotificationCenter.default.post(name: Notification.Name(key), object: nil);
    
}
func  getStateValue(key: String) -> Any {
    return state.value(forKey: key) as Any;
}
