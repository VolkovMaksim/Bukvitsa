//
//  DetailVC.swift
//  Bukvitsa
//
//  Created by Maksim Pavlov on 11.03.2020.
//  Copyright © 2020 Maksim Pavlov. All rights reserved.
//

import UIKit

class DetailVC: UIViewController {

    @IBOutlet weak var imageBukv: UIImageView!
    @IBOutlet weak var titleBukv: UILabel!
    @IBOutlet weak var definitionBukv: UILabel!
    @IBOutlet weak var unicodeBukvP: UILabel!
    @IBOutlet weak var htmlBukvP: UILabel!
    @IBOutlet weak var cssBukvP: UILabel!
    
    @IBOutlet weak var unicodeBukvS: UILabel!
    @IBOutlet weak var htmlBukvS: UILabel!
    @IBOutlet weak var cssBukvS: UILabel!
    
    
    var bukvTitleVC = ""
    var definitionBukvVC = "Очень много много много текста текста и прочего, что может быть записано в этот элемент Очень много много много текста текста и прочего, что может быть записано в этот элемент Очень много много много текста текста и прочего, что может быть записано в этот элемент Очень много много много текста текста и прочего, что может быть записано в этот элемент"
    
    var unicodeBukvVCP = ""
    var htmlBukvVCP = ""
    var cssBukvVCP = ""
    
    var unicodeBukvVCS = ""
    var htmlBukvVCS = ""
    var cssBukvVCS = ""
    
    var currentPageVC = 0
    var numberOfPagesVC = 0
    override func viewDidLoad() {
        super.viewDidLoad()

        imageBukv.image = UIImage(named: bukvTitleVC)
        titleBukv.text = bukvTitleVC
        titleBukv.font = UIFont(name: "-Normal", size: 40)
        definitionBukv.font = UIFont(name: "-Normal", size: 17)
        
        definitionBukv.text = definitionBukvVC
        
        unicodeBukvP.text = unicodeBukvVCP
        htmlBukvP.text = htmlBukvVCP
        cssBukvP.text = cssBukvVCP
        
        unicodeBukvS.text = unicodeBukvVCS
        htmlBukvS.text = htmlBukvVCS
        cssBukvS.text = cssBukvVCS
    }
}
