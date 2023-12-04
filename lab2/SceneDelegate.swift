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
        
        let vc = ViewController()
        let nav = UINavigationController(rootViewController: vc)
        window?.rootViewController = nav

//      Таб-бар
//        let tabController = UITabBarController()
//        tabController.viewControllers = [viewController, myViewController]
//        window?.rootViewController = tabController
        
        window?.makeKeyAndVisible()
    }
}
