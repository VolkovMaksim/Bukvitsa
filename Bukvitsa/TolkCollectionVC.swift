//
//  TolkCollectionVC.swift
//  Bukvitsa
//
//  Created by Maksim Pavlov on 02.04.2020.
//  Copyright © 2020 Maksim Pavlov. All rights reserved.
//

import UIKit

private let reuseIdentifier = "TolkCell"

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

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using [segue destinationViewController].
        // Pass the selected object to the new view controller.
    }
    */

    // MARK: UICollectionViewDataSource


    override func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        return arrayOfLines.count
    }

    override func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        let cell = collectionView.dequeueReusableCell(withReuseIdentifier: reuseIdentifier, for: indexPath) as! TolkCollectionVCell
    
        cell.lineImage.image = UIImage(named: arrayOfLines[indexPath.row])
    
        return cell
    }

    // MARK: UICollectionViewDelegate

    /*
    // Uncomment this method to specify if the specified item should be highlighted during tracking
    override func collectionView(_ collectionView: UICollectionView, shouldHighlightItemAt indexPath: IndexPath) -> Bool {
        return true
    }
    */

    /*
    // Uncomment this method to specify if the specified item should be selected
    override func collectionView(_ collectionView: UICollectionView, shouldSelectItemAt indexPath: IndexPath) -> Bool {
        return true
    }
    */

    /*
    // Uncomment these methods to specify if an action menu should be displayed for the specified item, and react to actions performed on the item
    override func collectionView(_ collectionView: UICollectionView, shouldShowMenuForItemAt indexPath: IndexPath) -> Bool {
        return false
    }

    override func collectionView(_ collectionView: UICollectionView, canPerformAction action: Selector, forItemAt indexPath: IndexPath, withSender sender: Any?) -> Bool {
        return false
    }

    override func collectionView(_ collectionView: UICollectionView, performAction action: Selector, forItemAt indexPath: IndexPath, withSender sender: Any?) {
    
    }
    */

}
