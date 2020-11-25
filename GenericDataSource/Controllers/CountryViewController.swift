//
//  CountryViewController.swift
//  GenericDataSource
//
//  Created by Umut SERIFLER on 23/11/2020.
//

import UIKit

class CountryViewController: UIViewController {
    
    lazy var collectionView: UICollectionView! = {
        var collectionView = UICollectionView(frame: CGRect(origin: .zero, size: self.view.frame.size), collectionViewLayout: UICollectionViewFlowLayout())
        collectionView.backgroundColor = .white
        collectionView.register(CountryCollectionViewCell.self, forCellWithReuseIdentifier: CountryCollectionViewCell.reuseIdentifier)
       return collectionView
    }()
    
    fileprivate var countryDataSource: CountryDataSource?
    fileprivate var selectedIndexPath: IndexPath? = nil
    
    override func viewDidLoad() {
        super.viewDidLoad()
        self.view.addSubview(collectionView)
        countryDataSource = setUpDataSource()
        // Do any additional setup after loading the view.
    }
    
}

// MARK: - Data Source
class CountryDataSource: CollectionArrayDataSource<CountryViewModel, CountryCollectionViewCell> {}


//// MARK: - Private Methods
fileprivate extension CountryViewController {
    func setUpDataSource() -> CountryDataSource? {
        let viewModels = (0..<32).map {
            return CountryViewModel(title: "Title \($0)", subTitle: "Subtitle: \($0)")
        }
        let dataSource = CountryDataSource(collectionView: collectionView!, array: [viewModels])
        dataSource.collectionItemSelectionHandler = { [weak self] indexPath in
            guard let strongSelf = self else { return }
            strongSelf.selectedIndexPath = indexPath
        }
        return dataSource
    }
}
