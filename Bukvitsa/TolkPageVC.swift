//
//  TolkPageVC.swift
//  Bukvitsa
//
//  Created by Maksim Pavlov on 02.04.2020.
//  Copyright © 2020 Maksim Pavlov. All rights reserved.
//

import UIKit

class TolkPageVC: UIPageViewController {
    
    var arrayOfLinesPage = [
        "А Б В Г Д Е Є", "Ж Ѕ З И І Ї Ћ", "К Л М Н О П Р", "С Т У Ѹ Ф Х Ѿ",
        "Ц Ч Ш Щ Ъ Ы Ь", "Ѣ Ю Ꙗ Ѥ Ѡ Ѧ Ѫ", "Ѩ Ѭ Ѯ Ѱ Ѳ Ѵ Ӕ", "А Ѕ М Ѹ Ъ Ѧ Ӕ",
        "Є Ї О Ѹ Ш Ю Ѩ", "А Ж К С Ц Ѣ Ѩ", "Б Ѕ Л Т Ч Ю Ѭ", "В З М У Ш Ꙗ Ѯ",
        "Г И Н Ѹ Щ Ѥ Ѱ", "Д І О Ф Ъ Ѡ Ѳ", "Е Ї П Х Ы Ѧ Ѵ", "Є Ћ Р Ѿ Ь Ѫ Ӕ"
    ]
    

    override func viewDidLoad() {
        super.viewDidLoad()

        dataSource = self
        
        if let contentViewController = showViewControllerAtIndex(arrayOfLinesPage.firstIndex(of: arrayOfLinesPage[0])!) {
            setViewControllers([contentViewController], direction: .forward, animated: true, completion: nil)
        }
    }
    
    func showViewControllerAtIndex (_ index: Int) -> TolkVC? {
        guard index >= 0 else { return nil }
        guard index < arrayOfLinesPage.count else { return nil }
        guard let contentVC = storyboard?.instantiateViewController(withIdentifier: "TolkVCID") as? TolkVC else { return nil }
        // передаем в переменную элемент массива по выбранному номеру
        contentVC.tolkLabelVC = arrayOfLinesPage[index] + "-500"
        contentVC.currentLineVC = index
        contentVC.numberOfLineVC = arrayOfLinesPage.count
        return contentVC
    }
}

extension TolkPageVC: UIPageViewControllerDataSource {
    // пролистывание свайпом назад
    func pageViewController(_ pageViewController: UIPageViewController, viewControllerBefore viewController: UIViewController) -> UIViewController? {
        var currentNumberOfPage = (viewController as! TolkVC).currentLineVC
        currentNumberOfPage -= 1
        return showViewControllerAtIndex(currentNumberOfPage)
    }
    
    // пролистывание свайпом вперед
    func pageViewController(_ pageViewController: UIPageViewController, viewControllerAfter viewController: UIViewController) -> UIViewController? {
        var currentNumberOfPage = (viewController as! TolkVC).currentLineVC
        currentNumberOfPage += 1
        return showViewControllerAtIndex(currentNumberOfPage)
    }
}
