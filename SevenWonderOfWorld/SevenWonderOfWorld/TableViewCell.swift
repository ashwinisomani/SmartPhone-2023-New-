//
//  TableViewCell.swift
//  SevenWonderOfWorld
//
//  Created by Ashwini Somani on 3/18/23.
//

import UIKit

class TableViewCell: UITableViewCell {

    @IBOutlet weak var lblWonder: UILabel!
    
    @IBOutlet weak var imageContainer: UIImageView!
    
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }
    
}
