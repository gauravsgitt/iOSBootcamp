//
//  CollectionViewCell.swift
//  iOSAssessment-12
//
//  Created by Gaurav Bisht on 25/10/21.
//

import UIKit

class GalleryItemsCollectionViewCell: UICollectionViewCell {
    
    @IBOutlet weak var galleryItemImage: UIImageView!
    @IBOutlet weak var galleryItemName: UILabel!
    
    override class func awakeFromNib() {
        super.awakeFromNib()
    }
    
    override func draw(_ rect: CGRect) {
        self.contentView.layer.cornerRadius = 30.0
        self.clipsToBounds = true
    }
    
}
