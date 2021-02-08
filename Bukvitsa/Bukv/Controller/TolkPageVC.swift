//
//  TolkPageVC.swift
//  Bukvitsa
//
//  Created by Maksim Pavlov on 02.04.2020.
//  Copyright © 2020 Maksim Volkov. All rights reserved.
//

import UIKit

class TolkPageVC: UIPageViewController {
    
    let matritsa = Matritsa()
    
    override func viewDidLoad() {
        super.viewDidLoad()

        dataSource = self
        
        if let contentViewController = showViewControllerAtIndex(matritsa.arrayOfLinesPage.firstIndex(of: matritsa.arrayOfLinesPage[0])!) {
            setViewControllers([contentViewController], direction: .forward, animated: true, completion: nil)
        }
    }
    
    func showViewControllerAtIndex (_ index: Int) -> TolkVC? {
        guard index >= 0 else { return nil }
        guard index < matritsa.arrayOfLinesPage.count else { return nil }
        guard let contentVC = storyboard?.instantiateViewController(withIdentifier: "TolkVCID") as? TolkVC else { return nil }
        // передаем в переменную элемент массива по выбранному номеру
        contentVC.currentLineVC = index
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
