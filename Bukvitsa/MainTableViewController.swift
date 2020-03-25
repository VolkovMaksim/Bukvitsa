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
        "Азъ", "Боги", "Вѣди", "Глаголи", "Добро", "Есть", "Есмь",
        "Животъ", "Ѕѣло", "Земля", "Иже", "Іжеи", "Їнить", "Ћерфь",
        "Како", "Людїе", "Мыслетѣ", "Нашь", "Онъ", "Покои", "Рѣцы",
        "Слово", "Твѣрдо", "Укъ", "Оукъ", "Фѣртъ", "Хѣръ", "Отъ",
        "Ци", "Червль", "Ша", "Шта", "Еръ", "Еры", "Ерь",
        "Ять", "Юнъ", "Арь", "Эдо", "Омъ", "Энъ", "Одь",
        "Ёта", "Ота", "Кси", "Пси", "Фита", "Ижица", "Ижа"
    ]
    
    // Начальные данные
    let arrayOfSounds = [
        "[а]", "[б]", "[в]", "[г]", "[д]", "[йэ]", "[йе]",
        "[ж]", "[дз]", "[з]", "[и]", "[и]", "[и]", "[гха]",
        "[какó]", "[л]", "[м]", "[н]", "[о]", "[п]", "[р]",
        "[с]", "[т]", "[у]", "[оу]", "[ф]", "[х]", "[от]",
        "[ц]", "[ч]", "[ш]", "[щ]", "[о]", "[ы]", "[е]",
        "[ие]", "[йу]", "[йа]", "[йэ]", "[о]", "[йа,е]", "[о,йу]",
        "[йо]", "[о]", "[кс]", "[пс]", "[ф]", "[и,ю,у,в]", "[и]"
    ]

    override func viewDidLoad() {
        super.viewDidLoad()

        //labelOfSound.text = arrayOfSounds[arrayOfSymbols.firstIndex()]
    }

    // MARK: - Table view data source
    // установка количества ячеек, равного кол-ву эл-тов массива - 49
    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        // #warning Incomplete implementation, return the number of rows
        return arrayOfSymbols.count
    }

    // настройка отображения ячеек
    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "Cell_Bukv", for: indexPath)
        // настройка изображения в ячейке
        cell.imageView?.image = UIImage(named: arrayOfSymbols[indexPath.row])
        // настройка подписи в ячейке
        cell.textLabel?.text = arrayOfSymbols[indexPath.row]
        // изменение шрифта на РОДНИКЪ и его размера
        cell.textLabel?.font = UIFont(name: "-Normal", size: 20)
        // изменение размера шрифта
        //cell.textLabel?.font = cell.textLabel?.font.withSize(25)
        cell.detailTextLabel?.text = arrayOfSounds[indexPath.row]
        cell.detailTextLabel?.font = UIFont(name: "", size: 20)
//        soundLabel.text = arrayOfSounds[indexPath.row]
//        soundLabel.font = UIFont(name: "-Normal", size: 20)
        return cell
    }
    
    /*
    // этот метод позволяет изменить размер ячейки
    override func tableView(_ tableView: UITableView, heightForRowAt indexPath: IndexPath) -> CGFloat {
        return 60
    }
     */

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
                pageVC.value = arrayOfSymbols.firstIndex(of: arrayOfSymbols[indexPath.row])!
                // передача массива в класс PageViewController.swift
                pageVC.mainArrayOfSymbol = arrayOfSymbols
            }
        }
    }
   

}
