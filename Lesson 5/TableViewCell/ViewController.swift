//
//  ViewController.swift
//  Lesson 5
//
//  Created by Guest User on 19.12.2020.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var tableLabel: UILabel!
    @IBOutlet weak var tableView: UITableView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        tableView.delegate = self
        tableView.dataSource = self
        
        tableView.register(
                UINib(nibName: "TableViewCell",
                bundle: nil),
                forCellReuseIdentifier: "indexCell")
        
        tableView.register(UINib(nibName: "TableViewCell",
                            bundle: nil),
                           forCellReuseIdentifier: "btnGoToCVC")
    }
    
}
extension ViewController : UITableViewDataSource {
        
        func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
            return 15
        }
      
        func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
            
          let cell =  tableView.dequeueReusableCell(withIdentifier: "indexCell", for: indexPath) as! TableViewCell
            
            cell.setup(index: indexPath.row)
            
            return cell
            
        }
        
    }

    extension ViewController :  UITableViewDelegate {
        func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
            tableLabel.text = "Index: \(indexPath.row)"
        }
    }


