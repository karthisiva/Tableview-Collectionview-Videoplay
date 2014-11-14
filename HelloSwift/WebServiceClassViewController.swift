//
//  WebServiceClassViewController.swift
//  HelloSwift
//
//  Created by Subramani B R on 11/13/14.
//  Copyright (c) 2014 Subramani B R. All rights reserved.
//

import UIKit

class WebServiceClassViewController: UIViewController,UITableViewDataSource,UITableViewDelegate,NSURLConnectionDelegate {

    @IBOutlet var tableObj: UITableView!
    var valuesArray :NSMutableArray = []
     var productsArray :NSMutableArray = []
    lazy var data = NSMutableData()
    override func viewDidLoad() {
        super.viewDidLoad()
        self.tableObj.registerClass(UITableViewCell.self, forCellReuseIdentifier: "cell")
        let servie:String="http://agilerise.com/hotel/Meghanabiriyani/json/productlist.php?type_sub=Veg%20Starters"
        serviceCall(servie,textOne:"check")

        // Do any additional setup after loading the view.
    }

    override func didReceiveMemoryWarning() {
        

        super.didReceiveMemoryWarning()
      
        // Dispose of any resources that can be recreated.
    }
    func serviceCall(text:NSString,textOne:NSString)
    {
        if textOne .isEqualToString("check")
        {
            let urlPath: String = text
            var url: NSURL = NSURL(string: urlPath)
            var request: NSURLRequest = NSURLRequest(URL: url)
            var connection: NSURLConnection = NSURLConnection(request: request, delegate: self, startImmediately: false)
            connection.start()
        }
        else
        {
            println("NotChecked")
        }
       
    }
    func connection(connection: NSURLConnection!, didReceiveData data: NSData!){
        self.data.appendData(data)
    }
    
    func connectionDidFinishLoading(connection: NSURLConnection!)
    {
        var err: NSError
        var jsonResult: NSDictionary = NSJSONSerialization.JSONObjectWithData(data, options: NSJSONReadingOptions.MutableContainers, error: nil) as NSDictionary
        println(jsonResult)
      self.productsArray = jsonResult.valueForKey("products") as NSMutableArray
          println( self.productsArray.count);
        var toInt: Int = self.productsArray.count
        for value in 1...toInt-1
        {
            self.valuesArray.addObject(productsArray.objectAtIndex(value).valueForKey("item_name"))
            
            
        }
        self.tableObj.reloadData()
        
        
    }
    override func viewWillAppear(animated: Bool)
    {
        
    }
    func tableView(tableView:UITableView, numberOfRowsInSection section:Int) -> Int
    {
        return self.valuesArray.count
    }
    
    func tableView(tableView: UITableView, cellForRowAtIndexPath indexPath: NSIndexPath) -> UITableViewCell
    {
        var cell:UITableViewCell = self.tableObj.dequeueReusableCellWithIdentifier("cell") as UITableViewCell
        cell.textLabel?.text = self.valuesArray[indexPath.row] as NSString
        return cell
    }
    func tableView(tableView: UITableView, didSelectRowAtIndexPath indexPath: NSIndexPath)
    {
        let alert=UIAlertController(title: "\(self.valuesArray[indexPath.row]as NSString)", message: "\(indexPath.row)", preferredStyle: UIAlertControllerStyle.Alert)
        alert.addAction(UIAlertAction(title: "OK", style: UIAlertActionStyle.Default, handler: nil))
        self.presentViewController(alert, animated: true, completion: nil)
    }


}
