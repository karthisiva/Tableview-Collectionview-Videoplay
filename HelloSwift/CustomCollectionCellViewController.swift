//
//  CustomCollectionCellViewController.swift
//  HelloSwift
//
//  Created by Subramani B R on 11/13/14.
//  Copyright (c) 2014 Subramani B R. All rights reserved.
//

import UIKit

class CustomCollectionCellViewController:UIViewController,UICollectionViewDataSource,UICollectionViewDelegate ,UICollectionViewDelegateFlowLayout{
    @IBOutlet var collectionObj: UICollectionView!
    var imgListArray :NSMutableArray = []
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        for countValue in 1...6
        {
            
            var strImageName : String = "\(countValue).jpeg"
            var image  = UIImage(named:strImageName)
            imgListArray .addObject(image)
        }
        setUpColletionView()
        
        // Do any additional setup after loading the view.
    }
    func setUpColletionView()
    {
        let layout: UICollectionViewFlowLayout = UICollectionViewFlowLayout()
        layout.sectionInset = UIEdgeInsets(top: 20, left: 10, bottom: 10, right: 10)
        layout.itemSize = CGSize(width: 120, height:120)
        collectionObj = UICollectionView(frame: CGRectMake(
            0, 0, self.view.bounds.size.width, self.view.bounds.size.height), collectionViewLayout: layout)
        collectionObj!.dataSource = self
        collectionObj!.delegate = self
      
       collectionObj!.backgroundColor = UIColor.grayColor()
        self.view.addSubview(collectionObj!)
        var nib = UINib(nibName: "CustomCollectionViewCell", bundle: nil)
        
        collectionObj.registerNib(nib, forCellWithReuseIdentifier: "Cell")
        //collectionObj!.registerClass(CustomCollectionViewCell.self, forCellWithReuseIdentifier: "Cell")
        
        
    }
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    func numberOfSectionsInCollectionView(collectionView: UICollectionView) -> Int {
        return 1
    }
    
    func collectionView(collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        return imgListArray.count
    }
    func collectionView(collectionView: UICollectionView, cellForItemAtIndexPath indexPath: NSIndexPath) -> UICollectionViewCell {
        
        var cell:CustomCollectionViewCell=collectionObj.dequeueReusableCellWithReuseIdentifier( "Cell", forIndexPath: indexPath) as CustomCollectionViewCell
        cell.imageView.image=imgListArray[indexPath.row]as? UIImage
        cell.nameLbl.text="Flowers \(indexPath.row)"
        return cell
        
        
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
