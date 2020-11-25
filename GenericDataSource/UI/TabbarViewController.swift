//
//  TabbarViewController.swift
//  GenericDataSource
//
//  Created by Umut SERIFLER on 22/11/2020.
//

import UIKit

enum TabBarItems: String {
    case Beer
    case Country
}

class TabbarViewController: UITabBarController, UITabBarControllerDelegate {

    lazy var viewControllersArray: [UIViewController]! = {
        var vcArray : [UIViewController] = []
        vcArray.append(setViewControllerForTabBarItem(itemType: .Beer))
        vcArray.append(setViewControllerForTabBarItem(itemType: .Country))
        return vcArray
    }()
    var itemController: TabbarItemController!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        self.delegate = self
        self.tabBar.tintColor = .white
        viewControllers = viewControllersArray
    }
    
    func tabBarController(_ tabBarController: UITabBarController, shouldSelect viewController: UIViewController) -> Bool {
        return true
    }
    
}

private extension TabbarViewController{
    
    func setViewControllerForTabBarItem(itemType: TabBarItems)-> UIViewController {
        itemController =  TabbarItemController(itemType: itemType)
        itemController.controller.tabBarItem = UITabBarItem(title: itemType.rawValue, image: UIImage(named: itemController.imageDisabled)!.withRenderingMode(.automatic), selectedImage: UIImage(named:itemController.imageEnabled)?.withRenderingMode(.automatic))
        let viewController = UINavigationController(rootViewController: itemController.controller)
        return viewController
    }
}
