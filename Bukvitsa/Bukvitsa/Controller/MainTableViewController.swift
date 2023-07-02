//
//  MainTableViewController.swift
//  Bukvitsa
//
//  Created by Maksim Volkov on 02.07.2023.
//

import UIKit

class MainTableViewController: UITableViewController {

    let bukvitsa = Bukvitsa()

    override func viewDidLoad() {
        super.viewDidLoad()
        tableView.showsVerticalScrollIndicator = false
    }

    // MARK: - Table view data source
    // установка количества ячеек, равного кол-ву эл-тов массива - 49
    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return bukvitsa.arrayOfSymbols.count
    }

    // настройка отображения ячеек
    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "CellBukvitsa", for: indexPath) as! DetailTableViewCell
        // настройка изображения в ячейке
        cell.imageView?.image = UIImage(named: bukvitsa.arrayOfSymbols[indexPath.row] + "-128")
        // настройка подписи в ячейке
        cell.textLabel?.text = bukvitsa.arrayOfSymbols[indexPath.row]
        // изменение шрифта на РОДНИКЪ и его размера
        cell.textLabel?.font = UIFont(name: "-Normal", size: 22)
        // изменение размера шрифта
        cell.soundLabel?.text = bukvitsa.arrayOfSounds[indexPath.row]
        return cell
    }
    
    // этот метод позволяет изменить размер ячейки
    override func tableView(_ tableView: UITableView, heightForRowAt indexPath: IndexPath) -> CGFloat {
        return 64
    }


}
