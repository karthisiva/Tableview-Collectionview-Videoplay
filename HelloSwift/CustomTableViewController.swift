//
//  CustomTableViewController.swift
//  HelloSwift
//
//  Created by Subramani B R on 11/12/14.
//  Copyright (c) 2014 Subramani B R. All rights reserved.
//

import UIKit
class CustomTableViewController: UIViewController,UITableViewDelegate,UITableViewDataSource {
    @IBOutlet var tableObj: UITableView!
    var nameList:[String]=["Mani","YuvaRaj","MuthuKumar","AnguNathan","KarthiKeyan"]
    var imgListArray :NSMutableArray = []

    override func viewDidLoad() {
        super.viewDidLoad()


        var nib = UINib(nibName: "customTableViewCell", bundle: nil)
        
        tableObj.registerNib(nib, forCellReuseIdentifier: "customCell")
        
        
        for countValue in 1...5
        {
            
            var strImageName : String = "\(countValue).jpeg"
            var image  = UIImage(named:strImageName)
            imgListArray .addObject(image)
        }
         //self.tableObj.registerClass(UITableViewCell.self, forCellReuseIdentifier: "cell")
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    func tableView(tableView:UITableView, numberOfRowsInSection section:Int) -> Int
    {
       return self.nameList.count;
    }
    
    func tableView(tableView: UITableView, cellForRowAtIndexPath indexPath: NSIndexPath) -> UITableViewCell
    {
//        var cell:UITableViewCell = self.tableObj.dequeueReusableCellWithIdentifier("cell") as UITableViewCell
//        cell.textLabel?.text="I am learning swift Day \(indexPath.row)"
        
         var cell:customTableViewCell = self.tableObj.dequeueReusableCellWithIdentifier("customCell") as customTableViewCell
        cell.nameLbl.text=nameList[indexPath.row]
        cell.imageView?.image=imgListArray[indexPath.row] as? UIImage
        
        return cell
    }
    func tableView(tableView: UITableView, didSelectRowAtIndexPath indexPath: NSIndexPath)
    {
       var  alert=UIAlertController(title: "You Click On", message: "\(nameList [ indexPath.row])", preferredStyle: UIAlertControllerStyle.Alert)
        
        alert.addAction(UIAlertAction(title: "OK", style: UIAlertActionStyle.Default, handler: nil))
        self.presentViewController(alert, animated: true, completion: nil)
    }
    
    func tableView(tableView: UITableView, heightForRowAtIndexPath indexPath: NSIndexPath) -> CGFloat
    {
        return 100
    }
     func tableView(tableView: UITableView, willDisplayCell cell: UITableViewCell, forRowAtIndexPath indexPath: NSIndexPath)
        
    {
        cell.imageView?.image=imgListArray[indexPath.row] as? UIImage
        cell.imageView?.animationImages=imgListArray
        cell.imageView?.animationDuration=1.0
        cell.imageView?.startAnimating()
   

    }
    func tableView(tableView: UITableView, didEndDisplayingCell cell: UITableViewCell, forRowAtIndexPath indexPath: NSIndexPath)
    
    {
        
    }


}
