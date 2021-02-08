//
//  PageViewController.swift
//  Bukvitsa
//
//  Created by Maksim Pavlov on 11.03.2020.
//  Copyright © 2020 Maksim Volkov. All rights reserved.
//

import UIKit

class PageViewController: UIPageViewController {
    
    let bukvitsa = Bukvitsa()

    var bukvTitle = ""
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        dataSource = self
        // при загрузке PageViewCintroller отобразится ViewController с переданным значением
        if let contentViewController = showViewControllerAtIndex(bukvitsa.arrayOfSymbols.firstIndex(of: bukvTitle)!) {
            setViewControllers([contentViewController], direction: .forward, animated: true, completion: nil)
        }
    }
    
    func showViewControllerAtIndex (_ index: Int) -> DetailVC? {
        guard index >= 0 else { return nil }
        guard index < bukvitsa.arrayOfSymbols.count else { return nil }
        guard let contentVC = storyboard?.instantiateViewController(withIdentifier: "DetailVCID") as? DetailVC else { return nil }
        contentVC.currentPageVC = index
        return contentVC
    }
}

extension PageViewController: UIPageViewControllerDataSource {
    // пролистывание свайпом назад
    func pageViewController(_ pageViewController: UIPageViewController, viewControllerBefore viewController: UIViewController) -> UIViewController? {
        var currentNumberOfPage = (viewController as! DetailVC).currentPageVC
        currentNumberOfPage -= 1
        return showViewControllerAtIndex(currentNumberOfPage)
    }
    
    // пролистывание свайпом вперед
    func pageViewController(_ pageViewController: UIPageViewController, viewControllerAfter viewController: UIViewController) -> UIViewController? {
        var currentNumberOfPage = (viewController as! DetailVC).currentPageVC
        currentNumberOfPage += 1
        return showViewControllerAtIndex(currentNumberOfPage)
    }
}
