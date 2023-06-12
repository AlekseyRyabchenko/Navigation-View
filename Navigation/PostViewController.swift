//
//  PostViewController.swift
//  Navigation
//
//  Created by Aleksey Ryabchenko on 11.06.2023.
//

import UIKit

class PostViewController: UIViewController {

//    var message: String?
    
    let imageView = Post().imageView
    
    override func viewDidLoad() {
        super.viewDidLoad()
        view.backgroundColor = .systemGray
        title = Post().title
        
        view.addSubview(imageView)
        imageView.center = view.center
        imageView.image = UIImage(systemName: "text.bubble")
        imageView.tintColor = .blue
        
        self.navigationItem.rightBarButtonItem = UIBarButtonItem(image: UIImage(systemName: "info.square"), style: .done, target: self, action: #selector(showInfo))
        
    }
    
    @objc func showInfo(){
        let infoViewController = InfoViewController()
        present(infoViewController, animated: true)
    }
}

