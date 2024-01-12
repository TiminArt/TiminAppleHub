import UIKit

class SceneDelegate: UIResponder, UIWindowSceneDelegate {
    var window: UIWindow?
    func scene(_ scene: UIScene, willConnectTo session: UISceneSession, options connectionOptions: UIScene.ConnectionOptions) {
        guard let scene = (scene as? UIWindowScene) else { return }
        window = UIWindow(windowScene: scene)
        
        let tabBar = UITabBarController()
    
        UITabBar.appearance().barTintColor = UIColor.blue
        UITabBar.appearance().tintColor = UIColor.white
        
        
        let viewController = ViewController()
        let gameListController = GameListController()
        
        let nav1 = UINavigationController(rootViewController: viewController)
        let nav2 = UINavigationController(rootViewController: gameListController)
        nav1.tabBarItem = UITabBarItem(tabBarSystemItem: .contacts, tag: 0)
        nav2.tabBarItem = UITabBarItem(tabBarSystemItem: .mostViewed, tag: 1)
        
        tabBar.viewControllers = [nav1, nav2]
        
        window?.rootViewController = tabBar
        window?.makeKeyAndVisible()
    }
}
