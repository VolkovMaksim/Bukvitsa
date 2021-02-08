//
//  TolkVC.swift
//  Bukvitsa
//
//  Created by Maksim Pavlov on 02.04.2020.
//  Copyright © 2020 Maksim Volkov. All rights reserved.
//

import UIKit

class TolkVC: UIViewController {

    @IBOutlet weak var tolkImage: UIImageView!
    @IBOutlet weak var tolkLabel: UILabel!
    
    let matritsa = Matritsa()
    
    var currentLineVC = 0
    
    override func viewDidLoad() {
        super.viewDidLoad()

        tolkImage.image = UIImage(named: matritsa.arrayOfLinesPage[currentLineVC] + "-500")
        tolkLabel.text = matritsa.arrayOfTolks[currentLineVC]
        tolkLabel.font = UIFont(name: "-Normal", size: 20)
    }
}
