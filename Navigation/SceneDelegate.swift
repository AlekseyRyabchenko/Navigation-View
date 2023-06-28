//
//  SceneDelegate.swift
//  Navigation
//
//  Created by Aleksey Ryabchenko on 10.06.2023.
//

import UIKit

class SceneDelegate: UIResponder, UIWindowSceneDelegate {

    var window: UIWindow?

    func scene(_ scene: UIScene, willConnectTo session: UISceneSession, options connectionOptions: UIScene.ConnectionOptions) {
        
        guard let windowScene = (scene as? UIWindowScene) else { return }
        
        let window = UIWindow(windowScene: windowScene)
        
        let tabBarController = UITabBarController()
        
        let profileView = UINavigationController(rootViewController: ProfileViewController())
        let feedView = UINavigationController(rootViewController: FeedViewController())
        
        profileView.title = "Profile"
        feedView.title = "Feed"
        profileView.tabBarItem.image = UIImage(systemName: "person.crop.circle")
        feedView.tabBarItem.image = UIImage(systemName: "list.bullet.clipboard.fill")
        
        tabBarController.setViewControllers([profileView, feedView], animated: true)
        tabBarController.modalPresentationStyle = .fullScreen
        tabBarController.tabBar.backgroundColor = UIColor.gray
        tabBarController.tabBar.tintColor = UIColor.blue
        
        window.rootViewController = tabBarController
        
        self.window = window
        window.makeKeyAndVisible()
        
    }
    
}

