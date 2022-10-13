//
//  ViewController.swift
//  ShoppingList
//
//  Created by Eunchan Kim on 2022/10/12.
//

import UIKit

class ViewController: UIViewController {


    var items = ["그립톡 구매하기", "사이다 구매", "아이패드 케이스 최저가 알아보기", "양말"]
    
    @IBOutlet weak var tableView: UITableView!
    @IBOutlet weak var textField: UITextField!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        textField.borderStyle = .none
        textField.layer.cornerRadius = 10
        
        
        
        tableView.dataSource = self
        tableView.delegate = self
        
        let nibName = UINib(nibName: "TableViewCell", bundle: nil)
        tableView.register(nibName, forCellReuseIdentifier: "TableViewCell")
        
        
    }


    @IBAction func addBtnClick(_ sender: UIButton) {
        
        items.append(textField.text!)
        print(textField.text!)
        textField.text = ""
        print(items)
        tableView.reloadData()
    
    }
    
    override func viewWillAppear(_ animated: Bool) {
       
    }
}
extension ViewController: UITableViewDataSource {
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return items.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "TableViewCell", for: indexPath) as! TableViewCell
        cell.cellLabel.text = items[indexPath.row]
        return cell
    }
    func tableView(_ tableView: UITableView, editingStyleForRowAt indexPath: IndexPath) -> UITableViewCell.EditingStyle {
        return .delete
    }

}
extension ViewController: UITableViewDelegate {
    func tableView(_ tableView: UITableView, commit editingStyle: UITableViewCell.EditingStyle, forRowAt indexPath: IndexPath) {
        if editingStyle == .delete {
            items.remove(at: indexPath.row)
            tableView.deleteRows(at: [indexPath], with: .automatic)
//            tableView.beginUpdates()
//            items.remove(at: (indexPath as NSIndexPath).row)
//
//            tableView.endUpdates()
        } else if editingStyle == .insert {
            
        }
    }
    
}
