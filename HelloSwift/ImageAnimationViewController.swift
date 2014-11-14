//
//  ImageAnimationViewController.swift
//  HelloSwift
//
//  Created by Subramani B R on 11/13/14.
//  Copyright (c) 2014 Subramani B R. All rights reserved.
//

import UIKit

class ImageAnimationViewController: UIViewController {
       var imgListArray :NSMutableArray = []
    var ImageView = UIImageView()
    override func viewDidLoad() {
        super.viewDidLoad()
        
        ImageView.frame = CGRect(x: 50, y: 250, width: 100, height: 100)
        self.view.addSubview(ImageView)
        
        for countValue in 1...5
        {
            
            var strImageName : String = "\(countValue).jpeg"
            var image  = UIImage(named:strImageName)
           imgListArray .addObject(image)
            

        }
        
      
        
        // Do any additional setup after loading the view.
    }
    override func viewWillAppear(animated: Bool) {
            }
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
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
