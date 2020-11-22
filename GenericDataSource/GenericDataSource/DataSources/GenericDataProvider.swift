//
//  GenericDataProvider.swift
//  GenericDataSource
//
//  Created by Umut SERIFLER on 22/11/2020.
//

import UIKit

public protocol GenericDataProvider {
    associatedtype T
    func numberOfSections() -> Int
    func numberOfItems(in section: Int) -> Int
    func item(at indexPath: IndexPath) -> T?
    func updateItem(at indexPath: IndexPath, value: T)
}
