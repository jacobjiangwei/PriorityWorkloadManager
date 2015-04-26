//
//  AddVC.swift
//  PriorityManager
//
//  Created by jacob.jiang on 4/25/15.
//  Copyright (c) 2015 Jacob Jiang. All rights reserved.
//

import UIKit


class AddVC: UIViewController {

    @IBOutlet weak var workDescTextfiled: UITextField!
    @IBOutlet weak var workLoadTextfield: UITextField!
    override func viewDidLoad() {
        super.viewDidLoad()
//        self.title = NSLocalizedString("Add task", comment: "")
        self.workDescTextfiled.becomeFirstResponder()
        
        // Do any additional setup after loading the view.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    

    @IBAction func done(sender: AnyObject) {
        var taskDescript = self.workDescTextfiled.text
        var taskWorkload = self.workLoadTextfield.text
        
        if (taskDescript=="" || taskWorkload=="")
        {
            var alert : UIAlertView = UIAlertView(title: "Error", message: "Pls fill in the description and workload both.", delegate: nil, cancelButtonTitle: "Ok")
            alert.show()
            return
        }
        
        var job :Task = Task()
        job.name = taskDescript
        job.amount = taskWorkload.toInt()!
        TaskManager.sharedInstance.taskList.addObject(job)
        self.navigationController?.popViewControllerAnimated(true)
        
    }
    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepareForSegue(segue: UIStoryboardSegue, sender: AnyObject?) {
        // Get the new view controller using segue.destinationViewController.
        // Pass the selected object to the new view controller.
    }
    */

}
