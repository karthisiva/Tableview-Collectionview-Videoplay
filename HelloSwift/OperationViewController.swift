//
//  OperationViewController.swift
//  HelloSwift
//
//  Created by Subramani B R on 11/12/14.
//  Copyright (c) 2014 Subramani B R. All rights reserved.
//

import UIKit

class OperationViewController: UIViewController,UITextFieldDelegate {

    @IBOutlet var secondTxt: UITextField!
    @IBOutlet var firstTxt: UITextField!
    @IBAction func CommonOperation(sender: AnyObject)
    {
       let button=sender as UIButton
      if button.tag==0
        {
            println("Addition")
            var output:Int=Int(self.firstTxt.text .toInt()!)+Int(self.secondTxt.text .toInt()!)
            let alert=UIAlertController(title:"Value Added", message: "\(output)", preferredStyle: UIAlertControllerStyle.Alert)
            alert.addAction(UIAlertAction(title: "OK", style: UIAlertActionStyle.Default, handler: nil))
            self.presentViewController(alert, animated: true, completion: nil);
        }
        else if button.tag==1
        {
            println("Subtraction")
            
            var output:Int=Int(self.firstTxt.text .toInt()!)-Int(self.secondTxt.text .toInt()!)
            let alert=UIAlertController(title:"Value Subtracted", message: "\(output)", preferredStyle: UIAlertControllerStyle.Alert)
            alert.addAction(UIAlertAction(title: "OK", style: UIAlertActionStyle.Default, handler: nil))
            self.presentViewController(alert, animated: true, completion: nil);


        }
        else if button.tag==2
        {
            println("Division")
            var output:Int=Int(self.firstTxt.text .toInt()!)/Int(self.secondTxt.text .toInt()!)
            let alert=UIAlertController(title:"Value Divided", message: "\(output)", preferredStyle: UIAlertControllerStyle.Alert)
            alert.addAction(UIAlertAction(title: "OK", style: UIAlertActionStyle.Default, handler: nil))
            self.presentViewController(alert, animated: true, completion: nil);

        
        }
        else if button.tag==3
        {
            println("Multiplication")
            var output:Int=Int(self.firstTxt.text .toInt()!)*Int(self.secondTxt.text .toInt()!)
            let alert=UIAlertController(title:"Value Multiplied", message: "\(output)", preferredStyle: UIAlertControllerStyle.Alert)
            alert.addAction(UIAlertAction(title: "OK", style: UIAlertActionStyle.Default, handler: nil))
            self.presentViewController(alert, animated: true, completion: nil);

        
        }


        
        
    }
    
    func textFieldShouldReturn(textField: UITextField!) -> Bool
    {
        textField.resignFirstResponder()
        self.view.endEditing(true);
        return true
    }
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    


}
