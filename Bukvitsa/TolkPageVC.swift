//
//  TolkPageVC.swift
//  Bukvitsa
//
//  Created by Maksim Pavlov on 02.04.2020.
//  Copyright © 2020 Maksim Pavlov. All rights reserved.
//

import UIKit

class TolkPageVC: UIPageViewController {
    
    var arrayOfLinesPage: [String] = []
    var tolkLinePage = ""

    override func viewDidLoad() {
        super.viewDidLoad()

        dataSource = self
        
        if let contentViewController = showViewControllerAtIndex(arrayOfLinesPage.firstIndex(of: tolkLinePage)!) {
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
