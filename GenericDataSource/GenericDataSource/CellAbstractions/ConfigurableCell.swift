//
//  ConfigurableCell.swift
//  GenericDataSource
//
//  Created by Umut SERIFLER on 22/11/2020.
//

import UIKit

public protocol ConfigurableCell: ReusableCell {
    associatedtype T
    func configure(_ item: T, at indexPath: IndexPath)
}
