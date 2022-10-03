//
//  TabBarController.swift
//  IKEA
//
//  Created by Yu ahyeon on 2022/10/02.
//

import UIKit

class TabBarController: UITabBarController {
    
    // MARK: - property
    
    private lazy var mainViewController: UIViewController = {
        $0.view.backgroundColor = .red
        $0.tabBarItem = UITabBarItem(
            title: nil,
            image: UIImage(systemName: "house"),
            tag: 1
        )
        return $0
    }(UIViewController())
    
    private lazy var searchViewController: UIViewController = {
        $0.tabBarItem = UITabBarItem(
            title: nil,
            image: UIImage(systemName: "text.magnifyingglass"),
            tag: 2
        )
        return $0
    }(UIViewController())
    
    private lazy var userInfoViewController: UIViewController = {
        $0.view.backgroundColor = .yellow
        $0.tabBarItem = UITabBarItem(
            title: nil,
            image: UIImage(systemName: "person"),
            tag: 3
        )
        return $0
    }(UIViewController())
    
    private lazy var wishlistViewController: UIViewController = {
        $0.view.backgroundColor = .green
        $0.tabBarItem = UITabBarItem(
            title: nil,
            image: UIImage(systemName: "heart"),
            tag: 4
        )
        return $0
    }(UIViewController())
    
    private lazy var cartViewController: UIViewController = {
        $0.view.backgroundColor = .blue
        $0.tabBarItem = UITabBarItem(
            title: nil,
            image: UIImage(systemName: "cart"),
            tag: 5
        )
        return $0
    }(UIViewController())
    
    // MARK: - life cycle
    
    override func viewDidLoad() {
        super.viewDidLoad()
        setupAttributes()
    }
    
    // MARK: - func
    
    func setupAttributes() {
        view.backgroundColor = UIColor.systemBackground
        setupTabBar()
    }
    
    func setupTabBar() {
        self.viewControllers = [
            mainViewController,
            searchViewController,
            userInfoViewController,
            wishlistViewController,
            cartViewController
        ]
        tabBar.isTranslucent = false
        self.tabBar.tintColor = UIColor(named: "selectTabBarItem")
        self.tabBar.unselectedItemTintColor = .systemGray2
    }
}
