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
    

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destination.
        // Pass the selected object to the new view controller.
    }
    */

}
