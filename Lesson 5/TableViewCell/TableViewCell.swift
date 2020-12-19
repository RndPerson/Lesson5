//
//  TableViewCell.swift
//  Lesson 5
//
//  Created by Guest User on 20.12.2020.
//

import UIKit

class TableViewCell: UITableViewCell {
     

    @IBOutlet weak var indexTableLabel: UILabel!
    
    func setup (index: Int) {
        indexTableLabel.text = "\(index)"
    }
    
    
    @IBAction func goToCollectionView(_ sender: Any) {
        
    }
    
}
