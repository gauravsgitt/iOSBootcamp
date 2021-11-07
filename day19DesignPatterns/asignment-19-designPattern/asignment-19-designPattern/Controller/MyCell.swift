//
//  MyCell.swift
//  asignment-19-designPattern
//
//  Created by Gaurav Bisht on 07/11/21.
//

import UIKit

class MyCell: UITableViewCell {
    
    @IBOutlet weak var nameLbl: UILabel!
    @IBOutlet weak var sportLbl: UILabel!
    @IBOutlet weak var emailLbl: UILabel!

    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }

}
