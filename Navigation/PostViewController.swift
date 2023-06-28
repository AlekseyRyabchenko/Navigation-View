//
//  PostViewController.swift
//  Navigation
//
//  Created by Aleksey Ryabchenko on 11.06.2023.
//

import UIKit

class PostViewController: UIViewController {

    var postTitle: String?
    
    override func viewDidLoad() {
        super.viewDidLoad()
        view.backgroundColor = .systemGray
        title = postTitle
        
        self.navigationItem.rightBarButtonItem = UIBarButtonItem(image: UIImage(systemName: "info.square"), style: .done, target: self, action: #selector(showInfo))
        
    }
    
    @objc func showInfo(){
        let infoViewController = InfoViewController()
        present(infoViewController, animated: true)
    }
}

