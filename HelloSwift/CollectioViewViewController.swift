//
//  CollectioViewViewController.swift
//  HelloSwift
//
//  Created by Subramani B R on 11/12/14.
//  Copyright (c) 2014 Subramani B R. All rights reserved.
//

import UIKit

class CollectioViewViewController: UIViewController,UICollectionViewDataSource,UICollectionViewDelegate ,UICollectionViewDelegateFlowLayout{
    @IBOutlet var collectionObj: UICollectionView!
    var imgListArray :NSMutableArray = []
    var imageView : UIImageView!

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
        layout.itemSize = CGSize(width: 100, height:100)
        collectionObj = UICollectionView(frame: CGRectMake(
            0, 0, self.view.bounds.size.width, self.view.bounds.size.height), collectionViewLayout: layout)
        collectionObj!.dataSource = self
        collectionObj!.delegate = self
        collectionObj!.registerClass(UICollectionViewCell.self, forCellWithReuseIdentifier: "Cell")
        collectionObj!.backgroundColor = UIColor.grayColor()
        self.view.addSubview(collectionObj!)
        
    
        
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
    
    var cell:UICollectionViewCell=collectionObj.dequeueReusableCellWithReuseIdentifier( "Cell", forIndexPath: indexPath) as UICollectionViewCell
    let frame=CGRectMake(0, 0, 100, 100)
    imageView=UIImageView(frame:frame )
    imageView.image=imgListArray[indexPath.row] as? UIImage
    cell.contentView.addSubview(imageView);
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
