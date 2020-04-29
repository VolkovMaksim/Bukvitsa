//
//  MainTableViewController.swift
//  Bukvitsa
//
//  Created by Maksim Pavlov on 10.03.2020.
//  Copyright © 2020 Maksim Pavlov. All rights reserved.
//

import UIKit

class MainTableViewController: UITableViewController {
    
    
    
    // Начальные данные
    let arrayOfSymbols = [
        "азъ",      "Боги",     "вѣди",     "глаголи",  "добро",    "есть",             "єсмь",
        "животъ",   "ѕѣло",     "землѧ",    "иже",      "іжеи",     "їнить",            "ћервь",
        "како",     "людїе",    "мыслитѣ",  "нашь",     "онъ",      "покои",            "рѣцы",
        "слово",    "твѣрдо",   "укъ",      "ѹкъ",     "фѣртъ",    "хѣръ",             "ѿъ",
        "ци",       "червль",   "ша",       "ща",       "еръ",      "еры",              "ерь",
        "ять",      "юнь",      "арь",      "эдо",      "ѡъ",       "енъ",              "одь",
        "ёта",      "ота",      "кси",      "пси",      "фита",     "ижица",            "ижа"
    ]
    
    // Начальные данные
    let arrayOfSounds = [
        "[а]",      "[б]",      "[в]",      "[г]",      "[д]",      "[е]",              "[йе]",
        "[ж]",      "[дз]",     "[з]",      "[и]",      "[и]",      "[и]",              "[гх]",
        "[k]",      "[л]",      "[м]",      "[н]",      "[о]",      "[п]",              "[ръ]",
        "[с]",      "[тэ]",     "[у]",      "[оу]",     "[ф]",      "[х]",              "[от]",
        "[ц]",      "[ч]",      "[ш]",      "[шт]",     "[о]",      "[ы]",              "[е]",
        "[ие]",     "[о,ю]",    "[а,я]",    "[ие,э]",   "[ом,о]",   "[е]",              "[еу,ю,е]",
        "[ё]",      "[о]",      "[kс]",     "[пс]",     "[ф]",      "[й,у,ю,и,в,н]",    "[й]"
    ]

    override func viewDidLoad() {
        super.viewDidLoad()
        tableView.showsVerticalScrollIndicator = false
    }

    // MARK: - Table view data source
    // установка количества ячеек, равного кол-ву эл-тов массива - 49
    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return arrayOfSymbols.count
    }

    // настройка отображения ячеек
    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "Cell_Bukv", for: indexPath) as! CustomTableViewCell
        // настройка изображения в ячейке
        cell.imageView?.image = UIImage(named: arrayOfSymbols[indexPath.row] + "-128")
        // настройка подписи в ячейке
        cell.textLabel?.text = arrayOfSymbols[indexPath.row]
        // изменение шрифта на РОДНИКЪ и его размера
        cell.textLabel?.font = UIFont(name: "-Normal", size: 22)
        // изменение размера шрифта
        cell.soundLabel?.text = arrayOfSounds[indexPath.row]
        return cell
    }
    

    // этот метод позволяет изменить размер ячейки
    override func tableView(_ tableView: UITableView, heightForRowAt indexPath: IndexPath) -> CGFloat {
        return 64
    }


    // MARK: - Navigation

    // функция для передачи данных по сегвею "DetailPage"
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // если идентификатор сигвея соответствует "DetailPage"
        if segue.identifier == "DetailPage" {
            // если новая константа принимает значение выбранной ячейки
            if let indexPath = self.tableView.indexPathForSelectedRow {
                // новая константа VC, класса PageViewController, которая будет в конце перехода по сегвею
                let pageVC = segue.destination as! PageViewController
                // установка значения выбранной ячейки для свойства bukvTitle
                pageVC.bukvTitle = arrayOfSymbols[indexPath.row]
                // установка числового значения выбранной ячейки для свойства value
                //pageVC.value = arrayOfSymbols.firstIndex(of: arrayOfSymbols[indexPath.row])!
                // передача массива в класс PageViewController.swift
                pageVC.mainArrayOfSymbol = arrayOfSymbols
                pageVC.mainArrayOfSound = arrayOfSounds
            }
        }
    }
}
