//
//  CustomTableViewCell.swift
//  Delegate
//
//  Created by Gaurav Bisht on 20/10/21.
//  Copyright © 2021 Gaurav Bisht. All rights reserved.
//

import UIKit

class CustomTableViewCell: UITableViewCell {

    
    @IBOutlet weak var nameLabel: UILabel!
    
    @IBOutlet weak var motherLabel: UILabel!
    
    @IBOutlet weak var ageLabel: UILabel!
    
    static let identifier = "CustomTableViewCell"
            
        static func nib() -> UINib{
            return UINib(nibName: "CustomTableViewCell", bundle: nil)
        }
    
    override func awakeFromNib() {
        super.awakeFromNib()
    }

     func configureMyFunction(element: Model){

        nameLabel!.text = element.name
        motherLabel!.text = element.motherName
        ageLabel!.text = element.age
        
        }
    
    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }
    
   
    
}
