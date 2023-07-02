//
//  DetailTableViewCell.swift
//  Bukvitsa
//
//  Created by Maksim Volkov on 02.07.2023.
//

import UIKit

class DetailTableViewCell: UITableViewCell {
    
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
