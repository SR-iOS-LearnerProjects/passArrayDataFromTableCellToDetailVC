//
//  CountryTableViewCell.swift
//  PassDataFromTableCell
//
//  Created by Sridatta Nallamilli on 22/12/19.
//  Copyright © 2019 Sridatta Nallamilli. All rights reserved.
//

import UIKit

class CountryTableViewCell: UITableViewCell {

    @IBOutlet weak var countryCode: UILabel!
    @IBOutlet weak var countryName: UILabel!
    
    
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }

}
