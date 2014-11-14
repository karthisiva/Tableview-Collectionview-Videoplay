//
//  ViewController.swift
//  HelloSwift
//
//  Created by Subramani B R on 11/12/14.
//  Copyright (c) 2014 Subramani B R. All rights reserved.
//

import UIKit

class ViewController: UIViewController,UITextFieldDelegate{
    @IBOutlet var resultLable: UILabel!
    @IBOutlet var buttonAction: UIButton!
    @IBOutlet var enterTxt: UITextField!
    override func viewDidLoad() {
        self .alignment();
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    func alignment()
    {
       
        resultLable.text="Hello Swift!"
        resultLable.textAlignment=NSTextAlignment.Center
        resultLable.textColor=UIColor.blueColor()
        
        var title="sayHelloooooo"
        enterTxt.placeholder="Enter Your Text To Change"
        enterTxt.delegate=self

        buttonAction.setTitle(title, forState:  .Normal)
    }
    @IBAction func changeValue(sender: AnyObject)
    {
        resultLable.text=String()
        var value=enterTxt.text
        if value.isEmpty
        {
            let alert = UIAlertController(title: "Error", message: "Please enter a string to change",
                preferredStyle: UIAlertControllerStyle.Alert)
            
            alert.addAction(UIAlertAction(title: "OK", style: UIAlertActionStyle.Default,
                handler: nil))
            
            self.presentViewController(alert, animated: true, completion: nil)
        }
        else
        {
            resultLable.text=value
        }
    }
     func textFieldShouldReturn(textField: UITextField!) -> Bool
     {
            textField.resignFirstResponder()
        self.view.endEditing(true);
        return true
    }

}

