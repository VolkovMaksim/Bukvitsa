//
//  TolkVC.swift
//  Bukvitsa
//
//  Created by Maksim Pavlov on 02.04.2020.
//  Copyright © 2020 Maksim Pavlov. All rights reserved.
//

import UIKit

class TolkVC: UIViewController {

    @IBOutlet weak var tolkImage: UIImageView!
    @IBOutlet weak var tolkLabel: UILabel!
    
    var tolkImageVC: UIImage?
    var currentLineVC = 0
    var numberOfLineVC = 0
    var tolkLabelVC = ""
    
    override func viewDidLoad() {
        super.viewDidLoad()

        tolkImage.image = UIImage(named: tolkLabelVC)
        tolkLabel.text = tolkLabelVC
        tolkLabel.font = UIFont(name: "-Normal", size: 20)
    }
}
