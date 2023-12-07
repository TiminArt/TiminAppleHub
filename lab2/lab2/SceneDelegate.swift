//
//  SceneDelegate.swift
//  lab2
//
//  Created by Артемий Тимин on 04.12.2023.
//

import UIKit

class SceneDelegate: UIResponder, UIWindowSceneDelegate {
    var window: UIWindow?
    func scene(_ scene: UIScene, willConnectTo session: UISceneSession, options connectionOptions: UIScene.ConnectionOptions) {
        guard let scene = (scene as? UIWindowScene) else { return }
        window = UIWindow(windowScene: scene)
        
        let tb = UITabBarController()
    
        let vc = ViewController()
        let mvc = MyViewController()
        
        let nav1 = UINavigationController(rootViewController: vc)
        let nav2 = UINavigationController(rootViewController: mvc)
        nav1.tabBarItem = UITabBarItem(tabBarSystemItem: .contacts, tag: 0)
        nav2.tabBarItem = UITabBarItem(tabBarSystemItem: .favorites, tag: 1)
        
        tb.viewControllers = [nav1, nav2]
        
        window?.rootViewController = tb
        window?.makeKeyAndVisible()
    }
}
