//
//  ViewController.swift
//  Bukvitsa
//
//  Created by Maksim Volkov on 02.07.2023.
//

import UIKit

class InfoViewController: UIViewController {

    @IBOutlet weak var moreLabel: UILabel!
    @IBOutlet weak var aboutLabel: UILabel!
    @IBOutlet weak var byeLabel: UILabel!
    let moreInfo = "Здравствуй!"
    var aboutInfo =
"""
 Материал взят из книги "Азбука для детей и их родителей" (2013г., авторы Л.В.Климашевский и О.А.Молчанова).

 В этом приложении используется шрифт РОДНИКЪ с отличного сайта родникъ.рус.
"""
    let byeInfo = "ДОБРА!"
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        moreLabel.text = moreInfo
        moreLabel.font = UIFont(name: "-Normal", size: 25)
        aboutLabel.text = aboutInfo
        aboutLabel.font = UIFont(name: "-Normal", size: 19)
        byeLabel.text = byeInfo
        byeLabel.font = UIFont(name: "-Normal", size: 25)
    }
}
