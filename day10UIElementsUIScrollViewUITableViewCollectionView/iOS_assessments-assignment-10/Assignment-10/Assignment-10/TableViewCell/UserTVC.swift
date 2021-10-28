//
//  UserTVC.swift
//  Assignment-10
//
//  Created by Gaurav Bisht on 18/10/21.
//

import UIKit

class UserTVC: UITableViewCell {
    @IBOutlet weak var useriv: UIImageView!
    @IBOutlet weak var ageLbl: UILabel!
    @IBOutlet weak var namrLbl: UILabel!
    @IBOutlet weak var addressLbl: UILabel!
    @IBOutlet weak var odLbl: UILabel!
    @IBOutlet weak var outSideView: UIView!
    
    
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

    }
   
    
}
