//
//  CollectionViewController.swift
//  Lesson 5
//
//  Created by Guest User on 20.12.2020.
//

import UIKit


class CollectionViewController: UICollectionViewController {

    override func viewDidLoad() {
        super.viewDidLoad()

        collectionView.delegate = self
        collectionView.dataSource = self
        
        collectionView.register(
            UINib(nibName: "CollectionViewCell",
            bundle: nil),
            forCellWithReuseIdentifier: "CollectionViewCell"
        )
    }
}

extension CollectionViewController {
    
    override func collectionView (_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        30
    }
    
     override func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
       let cell = collectionView.dequeueReusableCell(withReuseIdentifier: "CollectionViewCell", for: indexPath) as! CollectionViewCell
        
        cell.setup(index: indexPath.item)
        
        return cell
    }
}

extension CollectionViewController: UICollectionViewDelegateFlowLayout {
    func collectionView(_ collectionView: UICollectionView,
    layout collectionViewLayout: UICollectionViewLayout,
    sizeForItemAt indexPath: IndexPath
    ) -> CGSize {
        let viewWidth = view.frame.width - 21
        let width = viewWidth / 2
        
        return CGSize(width: width, height: width)
    }
    
    func collectionView(_ collectionView: UICollectionView, layout collectionViewLayout: UICollectionViewLayout, minimumLineSpacingForSectionAt section: Int) -> CGFloat {
        10
    }
    
    func collectionView(_ collectionView: UICollectionView, layout collectionViewLayout: UICollectionViewLayout, minimumInteritemSpacingForSectionAt section: Int) -> CGFloat {
        10
    }
    
    override func collectionView(_ collectionView: UICollectionView, didSelectItemAt indexPath: IndexPath) {
        print(indexPath.item)
    }
    
    }
