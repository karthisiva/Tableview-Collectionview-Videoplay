//
//  CustomControllersViewController.swift
//  HelloSwift
//
//  Created by Subramani B R on 11/12/14.
//  Copyright (c) 2014 Subramani B R. All rights reserved.
//

import UIKit

class CustomControllersViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        self.setUpView()

        // Do any additional setup after loading the view.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
func setUpView()
{
    let button   = UIButton.buttonWithType(UIButtonType.System) as UIButton
    
    button.frame = CGRectMake(100, 100, 100, 50)
    button.setTitle("customButton", forState: .Normal)
    button.addTarget(self, action: "changeValue:", forControlEvents:.TouchUpInside)
    
    self.view.addSubview(button)
    }
    @IBAction func changeValue(sender: AnyObject)
    {
        let alert=UIAlertController(title:"Successfully Created", message: "Action Performed", preferredStyle: UIAlertControllerStyle.Alert)
        alert.addAction(UIAlertAction(title: "OK", style: UIAlertActionStyle.Default, handler: nil))
        self.presentViewController(alert, animated: true, completion: nil);
    }

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepareForSegue(segue: UIStoryboardSegue!, sender: AnyObject!) {
        // Get the new view controller using segue.destinationViewController.
        // Pass the selected object to the new view controller.
    }
    */

}
