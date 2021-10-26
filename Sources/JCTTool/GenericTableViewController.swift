//
//  File.swift
//  
//
//  Created by Thobio Joseph on 26/10/21.
//

import UIKit

public class GenericCell<U>: UITableViewCell {
    var item: U!
    
    public override init(style: UITableViewCell.CellStyle, reuseIdentifier: String?) {
        super.init(style: style, reuseIdentifier: reuseIdentifier)
        setupViews()
    }
    
    public func setupViews() {}
    
    required init?(coder aDecoder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
}

public class GenericTableViewController<T: GenericCell<U>, U>: UITableViewController {
    
    public var items = [U]()
    
    public override func viewDidLoad() {
        super.viewDidLoad()
        
        let reuseIdentifier = NSStringFromClass(T.self)
        tableView.register(T.self, forCellReuseIdentifier: reuseIdentifier)
    }
    
    public override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return items.count
    }
    
    public override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let identifier = NSStringFromClass(T.self)
        let cell = tableView.dequeueReusableCell(withIdentifier: identifier, for: indexPath) as! T
        cell.item = items[indexPath.row]
        return cell
    }
}
