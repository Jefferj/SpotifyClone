//
//  TabBarViewController.swift
//  SpotifyClone
//
//  Created by Jefferson Naranjo rodríguez on 8/02/23.
//

import UIKit

class TabBarViewController: UITabBarController {

    override func viewDidLoad() {
        super.viewDidLoad()
        let vcOne = HomeViewController()
        let vcTwo = SearchViewController()
        let vcThree = LibraryViewController()
        
        vcOne.title = "Home"
        vcTwo.title = "Search"
        vcThree.title = "Library"
        
        vcOne.navigationItem.largeTitleDisplayMode = .always
        vcTwo.navigationItem.largeTitleDisplayMode = .always
        vcThree.navigationItem.largeTitleDisplayMode = .always
        
        let navOne = UINavigationController(rootViewController: vcOne)
        let navTwo = UINavigationController(rootViewController: vcTwo)
        let navThree = UINavigationController(rootViewController: vcThree)
        
        navOne.tabBarItem = UITabBarItem(title: "Home", image: UIImage(systemName: "house"), tag: 1)
        navTwo.tabBarItem = UITabBarItem(title: "Search", image: UIImage(systemName: "magnifyingglass"), tag: 1)
        navOne.tabBarItem = UITabBarItem(title: "Library", image: UIImage(systemName: "music.note.list"), tag: 1)
        
        navOne.navigationBar.prefersLargeTitles = true
        navTwo.navigationBar.prefersLargeTitles = true
        navThree.navigationBar.prefersLargeTitles = true
        
        
        
        setViewControllers([navOne, navTwo, navThree], animated: false)
    }
}
