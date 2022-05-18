import UIKit

final class MainTabBarController: UITabBarController {
    
    private let profileViewController = UINavigationController(rootViewController: ProfileViewController())
    private let careViewController = UINavigationController(rootViewController: CareViewController())
    private let mapViewController = UINavigationController(rootViewController: MapViewController())

    override func viewDidLoad() {
        super.viewDidLoad()
        addVCToTabBar()
        setupUITabBar()
        setupTitleForTabBar()
    }

    private func setupTabBar() {
    }
    
    private func addVCToTabBar() {
        setViewControllers([profileViewController, careViewController, mapViewController], animated: true)
    }
    
    private func setupUITabBar() {
        tabBar.tintColor = .theme.accent
        tabBar.backgroundColor = .gray
        tabBar.layer.cornerRadius = 15
        
        profileViewController.tabBarItem.image = UIImage(systemName: "person.circle")
        careViewController.tabBarItem.image = UIImage(systemName: "pawprint")
        mapViewController.tabBarItem.image = UIImage(systemName: "map.fill")
        
        profileViewController.title = "Профиль"
        careViewController.title = "Забота"
        mapViewController.title = "Карта"
    }
    
    private func setupTitleForTabBar() {

    }
    
}

