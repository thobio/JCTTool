//
//  GenericCollectionViewController.swift
//  
//
//  Created by Thobio Joseph on 29/09/22.
//

import UIKit

class GenericCollectionViewController<T:BaseCollectionCell<U>,U>:UICollectionViewController {
    let cellId = "cellId"
    var items = [U]()
    override func viewDidLoad() {
        super.viewDidLoad()
        collectionView.register(T.self, forCellWithReuseIdentifier: cellId)
    }
    override func numberOfSections(in collectionView: UICollectionView) -> Int {
        return 1
    }
    override func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        return items.count
    }
    override func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        let cell = collectionView.dequeueReusableCell(withReuseIdentifier: cellId, for: indexPath) as! BaseCollectionCell<U>
        cell.item = items[indexPath.row]
        return cell
    }
    
}


class BaseCollectionCell<U>:UICollectionViewCell {
    var item:U!
}
