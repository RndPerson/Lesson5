//
//  TableViewCell.swift
//  Lesson 5
//
//  Created by Guest User on 20.12.2020.
//

import UIKit

class TableViewCell: UITableViewCell {
     
    
    @IBOutlet weak var indexLabel: UILabel!
    @IBOutlet weak var btnGoToCVC: UIButton!
    
    var delegate: ButtonDelegate?
    
    func setup (index: Int) {
        indexLabel.text = "\(index)"
    }
    
    @IBAction func tapButton(_ sender: Any) {
        self.delegate?.tapButton()    }
    }
