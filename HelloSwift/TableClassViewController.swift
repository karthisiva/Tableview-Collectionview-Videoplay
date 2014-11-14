//
//  TableClassViewController.swift
//  HelloSwift
//
//  Created by Subramani B R on 11/12/14.
//  Copyright (c) 2014 Subramani B R. All rights reserved.
//

import UIKit

class TableClassViewController: UIViewController,UITableViewDataSource,UITableViewDelegate {

    @IBOutlet var tableObj: UITableView!
    override func viewDidLoad() {
        super.viewDidLoad()
        let x : Int = 45
        
        var stringValue = "\(x)"
        
        println(stringValue)
        self.tableObj.registerClass(UITableViewCell.self, forCellReuseIdentifier: "cell")
        // Do any additional setup after loading the view.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    

    func tableView(tableView:UITableView, numberOfRowsInSection section:Int) -> Int
    {
        return 5
    }
    
    func tableView(tableView: UITableView, cellForRowAtIndexPath indexPath: NSIndexPath) -> UITableViewCell
    {
         var cell:UITableViewCell = self.tableObj.dequeueReusableCellWithIdentifier("cell") as UITableViewCell
      cell.textLabel?.text="I am learning swift Day \(indexPath.row)"
    return cell
    }
    func tableView(tableView: UITableView, didSelectRowAtIndexPath indexPath: NSIndexPath)
    {
        let alert=UIAlertController(title: "You Are On", message: "\(indexPath.row)", preferredStyle: UIAlertControllerStyle.Alert)
        alert.addAction(UIAlertAction(title: "OK", style: UIAlertActionStyle.Default, handler: nil))
        self.presentViewController(alert, animated: true, completion: nil)
    }
}
//Type TableClassViewController does not conform to protocol UITableViewDataSource