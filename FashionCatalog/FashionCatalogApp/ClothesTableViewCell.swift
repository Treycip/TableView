//
//  ClothesTableViewCell.swift
//  FashionCatalogApp
//
//  Created by MAC45 on 20/10/23.
//

import UIKit

class ClothesTableViewCell: UITableViewCell {

    
    @IBOutlet weak var cImage: UIImageView!
    
    @IBOutlet weak var cTitle: UILabel!
    
    @IBOutlet weak var cPrice: UILabel!
    
    @IBOutlet weak var cCategory: UILabel!
    
    @IBOutlet weak var cIsNew: UILabel!
    
   
    
    
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }

}
