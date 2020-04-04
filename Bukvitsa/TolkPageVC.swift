//
//  TolkPageVC.swift
//  Bukvitsa
//
//  Created by Maksim Pavlov on 02.04.2020.
//  Copyright © 2020 Maksim Pavlov. All rights reserved.
//

import UIKit

class TolkPageVC: UIPageViewController {
    
    var mainArrayOfLines: [String] = []
    var tolkLine = ""

    override func viewDidLoad() {
        super.viewDidLoad()

        dataSource = self
        
        if let contentViewController = showViewControllerAtIndex(mainArrayOfLines.firstIndex(of: tolkLine)!) {
            setViewControllers([contentViewController], direction: .forward, animated: true, completion: nil)
        }
    }
    
    func showViewControllerAtIndex (_ index: Int) -> TolkVC? {
        guard index >= 0 else { return nil }
        guard index < mainArrayOfLines.count else { return nil }
        guard let contentVC = storyboard?.instantiateViewController(withIdentifier: "TolkVCID") as? TolkVC else { return nil }
//        contentVC.bukvTitleVC = mainArrayOfSymbol[index]
//        contentVC.currentPageVC = index
//        contentVC.numberOfPagesVC = mainArrayOfSymbol.count
//        contentVC.soundBukvVC = mainArrayOfSound[index]
//
//        contentVC.unicodeBukvVCP = arrayOfUnicodeP[index]
//        contentVC.htmlBukvVCP = arrayOfHTMLP[index]
//        contentVC.cssBukvVCP = arrayOfCSSP[index]
//
//        contentVC.unicodeBukvVCS = arrayOfUnicodeS[index]
//        contentVC.htmlBukvVCS = arrayOfHTMLS[index]
//        contentVC.cssBukvVCS = arrayOfCSSS[index]
        return contentVC
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

extension TolkPageVC: UIPageViewControllerDataSource {
    // пролистывание свайпом назад
    func pageViewController(_ pageViewController: UIPageViewController, viewControllerBefore viewController: UIViewController) -> UIViewController? {
        var currentNumberOfPage = (viewController as! TolkVC).currentLine
        currentNumberOfPage -= 1
        return showViewControllerAtIndex(currentNumberOfPage)
    }
    
    // пролистывание свайпом вперед
    func pageViewController(_ pageViewController: UIPageViewController, viewControllerAfter viewController: UIViewController) -> UIViewController? {
        var currentNumberOfPage = (viewController as! TolkVC).currentLine
        currentNumberOfPage += 1
        return showViewControllerAtIndex(currentNumberOfPage)
    }
    
    
}
