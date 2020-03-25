//
//  PageViewController.swift
//  Bukvitsa
//
//  Created by Maksim Pavlov on 11.03.2020.
//  Copyright © 2020 Maksim Pavlov. All rights reserved.
//

import UIKit

class PageViewController: UIPageViewController {

    
    var bukvTitle = ""
    var value = 0
    var mainArrayOfSymbol: [String] = []
    
    let arrayOfUnicodeP = [
        "U+0410", "U+0411", "U+0412", "U+0413", "U+0414", "U+0415", "U+0404",
        "U+0416", "U+0405", "U+0417", "U+0418", "U+0406", "U+0407", "U+040B",
        "U+041A", "U+041B", "U+041C", "U+041D", "U+041E", "U+041F", "U+0420",
        "U+0421", "U+0422", "U+0423", "U+0478", "U+0424", "U+0425", "U+047E",
        "U+0426", "U+0427", "U+0428", "U+0429", "U+042A", "U+042B", "U+042C",
        "U+0462", "U+A654", "U+A656", "U+0464", "U+0460", "U+0466", "U+046A",
        "U+0468", "U+046C", "U+046E", "U+0470", "U+0472", "U+0474", "U+04D4"
    ]
    
    let arrayOfHTMLP = [
        "&#1040;", "&#1041;", "&#1042;", "&#1043;", "&#1044;", "&#1045;", "&#1028;",
        "&#1046;", "&#1029;", "&#1047;", "&#1048;", "&#1030;", "&#1031;", "&#1035;",
        "&#1050;", "&#1051;", "&#1052;", "&#1053;", "&#1054;", "&#1055;", "&#1056;",
        "&#1057;", "&#1058;", "&#1059;", "&#1144;", "&#1060;", "&#1061;", "&#1150;",
        "&#1062;", "&#1063;", "&#1064;", "&#1065;", "&#1066;", "&#1067;", "&#1068;",
        "&#1122;", "&#42580;", "&#42582;", "&#1124;", "&#1120;", "&#1126;", "&#1130;",
        "&#1128;", "&#1132;", "&#1134;", "&#1136;", "&#1138;", "&#1140;", "&#1236;"
    ]
    
    let arrayOfCSSP = [
        "\\0410", "\\0411", "\\0412", "\\0413", "\\0414", "\\0415", "\\0404",
        "\\0416", "\\0405", "\\0417", "\\0418", "\\0406", "\\0407", "\\040B",
        "\\041A", "\\041B", "\\041C", "\\041D", "\\041E", "\\041F", "\\0420",
        "\\0421", "\\0422", "\\0423", "\\0478", "\\0424", "\\0425", "\\047E",
        "\\0426", "\\0427", "\\0428", "\\0429", "\\042A", "\\042B", "\\042C",
        "\\0462", "\\A654", "\\A656", "\\0464", "\\0460", "\\0466", "\\046A",
        "\\0468", "\\046C", "\\046E", "\\0470", "\\0472", "\\0474", "\\04D4"
    ]
    
    let arrayOfUnicodeS = [
        "U+0430", "U+0431", "U+0432", "U+0433", "U+0434", "U+0435", "U+0454",
        "U+0436", "U+0455", "U+0437", "U+0438", "U+0456", "U+0457", "U+045B",
        "U+043A", "U+043B", "U+043C", "U+043D", "U+043E", "U+043F", "U+0440",
        "U+0441", "U+0442", "U+0443", "U+0479", "U+0444", "U+0445", "U+047F",
        "U+0446", "U+0447", "U+0448", "U+0449", "U+044A", "U+044B", "U+044C",
        "U+0463", "U+043E", "U+A657", "U+0465", "U+0461", "U+0467", "U+046B",
        "U+0469", "U+046D", "U+046F", "U+0471", "U+0473", "U+0475", "U+04D5"
    ]
    
    let arrayOfHTMLS = [
        "&#1072;", "&#1073;", "&#1074;", "&#1075;", "&#1076;", "&#1077;", "&#1108;",
        "&#1078;", "&#1109;", "&#1079;", "&#1080;", "&#1110;", "&#1111;", "&#1115;",
        "&#1082;", "&#1083;", "&#1084;", "&#1085;", "&#1086;", "&#1087;", "&#1088;",
        "&#1089;", "&#1090;", "&#1091;", "&#1145;", "&#1092;", "&#1093;", "&#1151;",
        "&#1094;", "&#1095;", "&#1096;", "&#1097;", "&#1098;", "&#1099;", "&#1100;",
        "&#1123;", "&#1086;", "&#42583;", "&#1125;", "&#1121;", "&#1127;", "&#1131;",
        "&#1129;", "&#1133;", "&#1135;", "&#1137;", "&#1139;", "&#1141;", "&#1237;"
    ]
    
    let arrayOfCSSS = [
        "\\0430", "\\0431", "\\0432", "\\0433", "\\0434", "\\0435", "\\0454",
        "\\0436", "\\0455", "\\0437", "\\0438", "\\0456", "\\0457", "\\045B",
        "\\043A", "\\043B", "\\043C", "\\043D", "\\043E", "\\043F", "\\0440",
        "\\0441", "\\0442", "\\0443", "\\0479", "\\0444", "\\0445", "\\047F",
        "\\0446", "\\0447", "\\0448", "\\0449", "\\044A", "\\044B", "\\044C",
        "\\0463", "\\043E", "\\A657", "\\0465", "\\0461", "\\0467", "\\046B",
        "\\0469", "\\046D", "\\046F", "\\0471", "\\0473", "\\0475", "\\04D5"
    ]
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        dataSource = self
        
        // при загрузке PageViewCintroller отобразится ViewController с переданным значением
        if let contentViewController = showViewControllerAtIndex(mainArrayOfSymbol.firstIndex(of: bukvTitle)!) {
            setViewControllers([contentViewController], direction: .forward, animated: true, completion: nil)
        }
    }
    
    func showViewControllerAtIndex (_ index: Int) -> DetailVC? {
        guard index >= 0 else { return nil }
        guard index < mainArrayOfSymbol.count else { return nil }
        guard let contentVC = storyboard?.instantiateViewController(withIdentifier: "DetailVCID") as? DetailVC else { return nil }
        contentVC.bukvTitleVC = mainArrayOfSymbol[index]
        contentVC.currentPageVC = index
        contentVC.numberOfPagesVC = mainArrayOfSymbol.count
        
        contentVC.unicodeBukvVCP = arrayOfUnicodeP[index]
        contentVC.htmlBukvVCP = arrayOfHTMLP[index]
        contentVC.cssBukvVCP = arrayOfCSSP[index]
        
        contentVC.unicodeBukvVCS = arrayOfUnicodeS[index]
        contentVC.htmlBukvVCS = arrayOfHTMLS[index]
        contentVC.cssBukvVCS = arrayOfCSSS[index]
        return contentVC
    }


    
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
//    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
//         if segue.identifier == "Detail" {
//            if var indexPath = bukvTitle {
//                let detailVC = segue.destination as! DetailVC
//                detailVC.bukvTitleVC = bukvTitle
//            }
//        }
//    }
    

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
