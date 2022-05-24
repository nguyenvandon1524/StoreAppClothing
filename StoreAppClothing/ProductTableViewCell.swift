//
//  ProductTableViewCell.swift
//  ClothingApp
//
//  Created by Don on 5/21/22.
//

import UIKit

class ProductTableViewCell: UITableViewCell {

    @IBOutlet weak var imagesProduct:UIImageView?
    @IBOutlet weak var lblProductName:UILabel?
    @IBOutlet weak var lblProductPrices:UILabel?
    @IBOutlet weak var lblRating:UILabel?
    @IBOutlet weak var lblProductDescription:UILabel?
    
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }

}
