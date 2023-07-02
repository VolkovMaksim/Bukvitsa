//
//  TolkPageViewController.swift
//  Bukvitsa
//
//  Created by Maksim Volkov on 02.07.2023.
//

import UIKit

class TolkPageViewController: UIPageViewController {
    
    let matritsa = Matritsa()
    
    override func viewDidLoad() {
        super.viewDidLoad()

        dataSource = self
        
        if let contentViewController = showViewControllerAtIndex(matritsa.arrayOfLinesPage.firstIndex(of: matritsa.arrayOfLinesPage[0])!) {
            setViewControllers([contentViewController], direction: .forward, animated: true, completion: nil)
        }
    }
    
    func showViewControllerAtIndex (_ index: Int) -> TolkViewController? {
        guard index >= 0 else { return nil }
        guard index < matritsa.arrayOfLinesPage.count else { return nil }
        guard let contentVC = storyboard?.instantiateViewController(withIdentifier: "TolkVCID") as? TolkViewController else { return nil }
        // передаем в переменную элемент массива по выбранному номеру
        contentVC.currentLineVC = index
        return contentVC
    }
}

extension TolkPageViewController: UIPageViewControllerDataSource {
    // пролистывание свайпом назад
    func pageViewController(_ pageViewController: UIPageViewController, viewControllerBefore viewController: UIViewController) -> UIViewController? {
        var currentNumberOfPage = (viewController as! TolkViewController).currentLineVC
        currentNumberOfPage -= 1
        return showViewControllerAtIndex(currentNumberOfPage)
    }
    
    // пролистывание свайпом вперед
    func pageViewController(_ pageViewController: UIPageViewController, viewControllerAfter viewController: UIViewController) -> UIViewController? {
        var currentNumberOfPage = (viewController as! TolkViewController).currentLineVC
        currentNumberOfPage += 1
        return showViewControllerAtIndex(currentNumberOfPage)
    }
}
