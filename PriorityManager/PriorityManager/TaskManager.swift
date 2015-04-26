//
//  TaskManager.swift
//  PriorityManager
//
//  Created by jacob.jiang on 4/25/15.
//  Copyright (c) 2015 Jacob Jiang. All rights reserved.
//

import UIKit

private let sharedManager : TaskManager = TaskManager()


class TaskManager: NSObject {
    var taskList : NSMutableArray = []
    var remainAmount : Int = 0
    
    var greenIndex : Int = 0
    
    
    class var sharedInstance : TaskManager {
        return sharedManager
    }
    
    
    func saveData(){
        NSUserDefaults.standardUserDefaults().setObject(taskList, forKey: "taskList")
        NSUserDefaults.standardUserDefaults().setObject(remainAmount, forKey: "remainAmount")
        NSUserDefaults.standardUserDefaults().synchronize()
    }
    
    func loadData(){
        taskList = (NSUserDefaults.standardUserDefaults().objectForKey("taskList") as? NSMutableArray)!
        remainAmount = NSUserDefaults.standardUserDefaults().objectForKey("remainAmount") as! Int
    }
    
    
}
