//
//  DetailViewController.swift
//  Bukvitsa
//
//  Created by Maksim Volkov on 02.07.2023.
//

import UIKit

class DetailViewController: UIViewController {
    
    @IBOutlet weak var imageBukv: UIImageView!
    @IBOutlet weak var titleBukv: UILabel!
    @IBOutlet weak var soundBukv: UILabel!
    @IBOutlet weak var definitionBukv: UILabel!
    @IBOutlet weak var unicodeBukvP: UILabel!
    @IBOutlet weak var htmlBukvP: UILabel!
    @IBOutlet weak var cssBukvP: UILabel!
    
    @IBOutlet weak var unicodeBukvS: UILabel!
    @IBOutlet weak var htmlBukvS: UILabel!
    @IBOutlet weak var cssBukvS: UILabel!
    
    let bukvitsa = Bukvitsa()
    
    var currentPageVC = 0
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        imageBukv.image = UIImage(named: bukvitsa.arrayOfSymbols[currentPageVC])
        titleBukv.text = bukvitsa.arrayOfSymbols[currentPageVC]
        titleBukv.font = UIFont(name: "-Normal", size: 40)
        
        soundBukv.text = bukvitsa.arrayOfSounds[currentPageVC]
        
        definitionBukv.text = bukvitsa.definitionBukv[currentPageVC]
        definitionBukv.font = UIFont(name: "-Normal", size: 20)
        
        unicodeBukvP.text = bukvitsa.arrayOfUnicodeP[currentPageVC]
        htmlBukvP.text = bukvitsa.arrayOfHTMLP[currentPageVC]
        cssBukvP.text = bukvitsa.arrayOfCSSP[currentPageVC]
        
        unicodeBukvS.text = bukvitsa.arrayOfUnicodeS[currentPageVC]
        htmlBukvS.text = bukvitsa.arrayOfHTMLS[currentPageVC]
        cssBukvS.text = bukvitsa.arrayOfCSSS[currentPageVC]
    }
}
