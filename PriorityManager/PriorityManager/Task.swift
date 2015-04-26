//
//  Task.swift
//  PriorityManager
//
//  Created by jacob.jiang on 4/25/15.
//  Copyright (c) 2015 Jacob Jiang. All rights reserved.
//

import UIKit

class Task: NSObject,NSCoding{
    var name:String = ""
    var amount:Int = 0
    
    override init(){
        
    }
    
    required init(coder aDecoder: NSCoder) {
        self.name = aDecoder.decodeObjectForKey("name") as! String
        self.amount=aDecoder.decodeObjectForKey("amount") as! Int
    }
    
    func encodeWithCoder(aCoder: NSCoder) {
        if name != ""
        {
            aCoder.encodeObject(name, forKey: "name")
        }
        aCoder.encodeObject(amount, forKey: "amount")
    }
    
}
