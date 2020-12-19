//
//  ViewController.swift
//  Lesson 5
//
//  Created by Guest User on 19.12.2020.
//

import UIKit

class ViewController: UIViewController, UITableViewDataSource {

    @IBOutlet weak var indexNumber: UILabel!
    @IBOutlet weak var tableView: UITableView!
    override func viewDidLoad() {
        super.viewDidLoad()
        
        tableView.dataSource = self
        
        tableView.register(UINib(nibName: "TableViewCell", bundle: nil), forCellReuseIdentifier: "TableViewCell")
    }
}
    extension ViewController {
        
        func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
            return 100
        }
        
        func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
            let cell = tableView.dequeueReusableCell(withIdentifier: "TableViewCell", for: indexPath) as! TableViewCell
            
            cell.setup(index: indexPath.row)
            
            return cell
            
        }
        
    }

    extension ViewController :  UITableViewDelegate {
        func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
            indexNumber.text = "Index: \(indexPath.row)"
        }
    }
    


