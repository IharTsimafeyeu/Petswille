//
//  ViewController.swift
//  Petswille
//
//  Created by Игорь Тимофеев on 22.04.22.
//

import UIKit

final class MainTabBarController: UITabBarController {

    override func viewDidLoad() {
        super.viewDidLoad()
        tabBar.barTintColor = UIColor.yellow
        setupTabBar()
    }

    private func setupTabBar() {
        let profileViewController = UINavigationController(rootViewController: ProfileViewController())
        profileViewController.tabBarItem.image = UIImage(named: "person.circle")
        profileViewController.tabBarItem.selectedImage = UIImage(named: "person.circle")
        
        let careViewController = UINavigationController(rootViewController: CareViewController())
        careViewController.tabBarItem.image = UIImage(named: "pawprint")
        careViewController.tabBarItem.selectedImage = UIImage(named: "pawprint")
        
        let mapViewController = UINavigationController(rootViewController: MapViewController())
        mapViewController.tabBarItem.image = UIImage(named: "map.fill")
        mapViewController.tabBarItem.selectedImage = UIImage(named: "map.fill")
        
        viewControllers = [careViewController, profileViewController, mapViewController]
    }
    
}

