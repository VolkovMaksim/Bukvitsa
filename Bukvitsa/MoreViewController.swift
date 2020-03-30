//
//  MoreViewController.swift
//  Bukvitsa
//
//  Created by Maksim Pavlov on 20.03.2020.
//  Copyright © 2020 Maksim Pavlov. All rights reserved.
//

import UIKit

class MoreViewController: UIViewController {

    @IBOutlet weak var moreLabel: UILabel!
    @IBOutlet weak var aboutLabel: UILabel!
    @IBOutlet weak var byeLabel: UILabel!
    let moreInfo = "Здравствуй!"
    let aboutInfo =
"""
 Благодарю за установку моего приложения!

 Это приложение - мой посильный вклад в развитие нашей культуры. Приложение полностью бесплатное и содержит информацию, которая есть в интернете в свободном доступе.

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
    

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destination.
        // Pass the selected object to the new view controller.
    }
    */

}
