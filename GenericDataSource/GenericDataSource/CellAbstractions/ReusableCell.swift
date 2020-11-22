//
//  ReusableCell.swift
//  GenericDataSource
//
//  Created by Umut SERIFLER on 22/11/2020.
//

import UIKit

public protocol ReusableCell  {
    static var reuseIdentifier: String { get }
}

public extension ReusableCell {
    static var reuseIdentifier: String {
        return String(describing: self)
    }
}
