//
//  CustomCollectionViewCell.swift
//  HelloSwift
//
//  Created by Subramani B R on 11/13/14.
//  Copyright (c) 2014 Subramani B R. All rights reserved.
//

import UIKit

class CustomCollectionViewCell: UICollectionViewCell {

    @IBOutlet var imageView: UIImageView!
    @IBOutlet var nameLbl: UILabel!
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }

}
