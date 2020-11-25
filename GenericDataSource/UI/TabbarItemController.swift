//
//  TabbarItemController.swift
//  GenericDataSource
//
//  Created by Umut SERIFLER on 22/11/2020.
//

import UIKit
struct TabbarItemController {
    
    let controller: UIViewController
    let imageEnabled: String
    let imageDisabled: String
    private let controllerName: String
    
    init(itemType: TabBarItems) {
        switch itemType {
        case .Beer:
            self.controllerName = ""
            self.controller = BeerViewController()
            self.imageEnabled = "beer_selected_icon"
            self.imageDisabled = "beer_deselected_icon"
        case .Country:
            self.controllerName = ""
            self.controller = CountryViewController()
            self.imageEnabled = "country_selected_icon"
            self.imageDisabled = "country_deselected_icon"
        }
    }
}
