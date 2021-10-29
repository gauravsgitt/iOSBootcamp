//
//  CustomCell.swift
//  assignment-12
//
//  Created by Gaurav Bisht on 22/10/21.
//

import UIKit

class CustomCell: UICollectionViewCell{

    @IBOutlet weak var imageView: UIImageView!
    @IBOutlet weak var nameLbl: UILabel!
    
    override func awakeFromNib() {
        super.awakeFromNib()
    }
    override func draw(_ rect: CGRect) {
        self.contentView.layer.cornerRadius = 30.0
        self.clipsToBounds = true
        }

}
