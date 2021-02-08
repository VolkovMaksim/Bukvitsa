//
//  CustomTableViewCell.swift
//  Bukvitsa
//
//  Created by Maksim Volkov on 27.03.2020.
//  Copyright © 2020 Maksim Volkov. All rights reserved.
//

import UIKit

class CustomTableViewCell: UITableViewCell {

    @IBOutlet weak var soundLabel: UILabel!
    
    
    
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }

}
