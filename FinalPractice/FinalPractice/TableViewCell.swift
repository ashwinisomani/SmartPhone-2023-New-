//
//  TableViewCell.swift
//  FinalPractice
//
//  Created by Ashwini Somani on 4/22/23.
//

import UIKit

class TableViewCell: UITableViewCell {

    @IBOutlet weak var imgContainer: UIImageView!
    
    @IBOutlet weak var lblTitle: UILabel!
    
    @IBOutlet weak var lblLocation: UILabel!
    
    override func awakeFromNib() {
        super.awakeFromNib()
     
    }

    
}
