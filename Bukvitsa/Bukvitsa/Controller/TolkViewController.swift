//
//  TolkViewController.swift
//  Bukvitsa
//
//  Created by Maksim Volkov on 02.07.2023.
//

import UIKit

class TolkViewController: UIViewController {
    
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
