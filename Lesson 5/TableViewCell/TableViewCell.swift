//
//  TableViewCell.swift
//  Lesson 5
//
//  Created by Guest User on 20.12.2020.
//

import UIKit

class TableViewCell: UITableViewCell {
     
    
    @IBOutlet weak var indexLabel: UILabel!
    
    func setup (index: Int) {
        indexLabel.text = "Index: \(index)"
    }

    
    
    @IBAction func goToCollectionView(_ sender: Any) {
        
    }
    
}
