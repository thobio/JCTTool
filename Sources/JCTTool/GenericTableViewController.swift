//
//  GenericTableViewController.swift
//  
//
//  Created by Thobio Joseph on 26/10/21.
//

import Foundation
import UIKit

class BaseTableViewController<T:BaseCell<U>,U>:UITableViewController {
    let cellId = "cellId"
    var items = [U]()
    override func viewDidLoad() {
        super.viewDidLoad()
        tableView.register(T.self, forCellReuseIdentifier: cellId)
    }
    override func numberOfSections(in tableView: UITableView) -> Int {
        return 1
    }
    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return items.count
    }
    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: cellId, for: indexPath) as! BaseCell<U>
        cell.item = items[indexPath.row]
        return cell
    }
}

class BaseCell<U>:UITableViewCell {
    var item:U!
}
