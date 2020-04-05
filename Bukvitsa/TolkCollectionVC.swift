//
//  TolkCollectionVC.swift
//  Bukvitsa
//
//  Created by Maksim Pavlov on 02.04.2020.
//  Copyright © 2020 Maksim Pavlov. All rights reserved.
//

import UIKit

class TolkCollectionVC: UICollectionViewController {
    
    let arrayOfLines = [
        "А Б В Г Д Е Є", "Ж Ѕ З И І Ї Ћ", "К Л М Н О П Р", "С Т У Ѹ Ф Х Ѿ",
        "Ц Ч Ш Щ Ъ Ы Ь", "Ѣ Ю Ꙗ Ѥ Ѡ Ѧ Ѫ", "Ѩ Ѭ Ѯ Ѱ Ѳ Ѵ Ӕ", "А Ѕ М Ѹ Ъ Ѧ Ӕ",
        "Є Ї О Ѹ Ш Ю Ѩ", "А Ж К С Ц Ѣ Ѩ", "Б Ѕ Л Т Ч Ю Ѭ", "В З М У Ш Ꙗ Ѯ",
        "Г И Н Ѹ Щ Ѥ Ѱ", "Д І О Ф Ъ Ѡ Ѳ", "Е Ї П Х Ы Ѧ Ѵ", "Є Ћ Р Ѿ Ь Ѫ Ӕ"
    ]

    
    override func viewDidLoad() {
        super.viewDidLoad()
    }

    // MARK: UICollectionViewDataSource

    override func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        return arrayOfLines.count
    }

    override func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        let cell = collectionView.dequeueReusableCell(withReuseIdentifier: "TolkCell", for: indexPath) as! TolkCollectionVCell
        cell.lineImageCell.image = UIImage(named: arrayOfLines[indexPath.row])
        return cell
    }

//    override func collectionView(_ collectionView: UICollectionView, didSelectItemAt indexPath: IndexPath) {
//        let item = arrayOfLines[indexPath.row]
//    }
    
    // MARK: - Navigation
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // если идентификатор сигвея соответствует "DetailPage"
        if segue.identifier == "TolkPage" {
            // если новая константа принимает значение выбранной ячейки
            if let indexPath = self.collectionView.indexPath(for: sender as! TolkCollectionVCell) {
                // фиксируем переход по сегвею до заданного контроллера
                let pageVC = segue.destination as! TolkPageVC
                // переходим с выбранной ячейки
                    //let cell = sender as! TolkCollectionVCell
                    //pageVC.imageLinePage = cell.lineImageCell.image
                // установка значения выбранной ячейки для свойства tolkLinePage
                pageVC.tolkLinePage = arrayOfLines[indexPath.row]
                // установка числового значения выбранной ячейки для свойства value
                // передача массива в класс TolkCollectionVC.swift
                pageVC.arrayOfLinesPage = arrayOfLines
            }
        }
    }
}

extension TolkCollectionVC: UICollectionViewDelegateFlowLayout {
    
}
