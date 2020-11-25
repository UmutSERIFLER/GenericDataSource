//
//  BeerViewController.swift
//  GenericDataSource
//
//  Created by Umut SERIFLER on 22/11/2020.
//

import UIKit

class BeerViewController: UIViewController {
    
    lazy var tableView: UITableView! = {
        var tableView = UITableView(frame: CGRect(origin: .zero, size: self.view.frame.size))
        tableView.backgroundColor = .white
        tableView.register(BeerTableViewCell.self, forCellReuseIdentifier: BeerTableViewCell.reuseIdentifier)
       return tableView
    }()
    
    fileprivate var beerDataSource: BeerDataSource?
    fileprivate var selectedIndexPath: IndexPath? = nil

    override func viewDidLoad() {
        super.viewDidLoad()
        self.view.addSubview(tableView)
        beerDataSource = setUpDataSource()
        // Do any additional setup after loading the view.
    }


}

// MARK: - Data Source
class BeerDataSource: TableArrayDataSource<BeerViewModel, BeerTableViewCell> {}


//// MARK: - Private Methods
fileprivate extension BeerViewController {
    func setUpDataSource() -> BeerDataSource? {
        let viewModels = (0..<32).map {
            return BeerViewModel(title: "Title \($0)", subTitle: "Subtitle: \($0)")
        }
        let dataSource = BeerDataSource(tableView: tableView, array: [viewModels])
        dataSource.tableItemSelectionHandler = { [weak self] indexPath in
            guard let strongSelf = self else { return }
           strongSelf.selectedIndexPath = indexPath
        }
        return dataSource
    }
}

