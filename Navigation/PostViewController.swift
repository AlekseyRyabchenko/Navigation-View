//
//  PostViewController.swift
//  Navigation
//
//  Created by Aleksey Ryabchenko on 11.06.2023.
//

import UIKit

class PostViewController: UIViewController {

    var message: String?
    
    let imageView: UIImageView = {
        let imageView = UIImageView(frame: CGRect(x: 0, y: 0, width: 150, height: 140))
        imageView.contentMode = .scaleToFill
        
        return imageView
    }()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        view.backgroundColor = .systemGray
        title = message
        
        view.addSubview(imageView)
        imageView.center = view.center
        imageView.image = UIImage(systemName: "signpost.right.and.left")
        imageView.tintColor = .blue
        
        self.navigationItem.rightBarButtonItem = UIBarButtonItem(image: UIImage(systemName: "info.square"), style: .done, target: self, action: #selector(showInfo))
        
    }
    
    @objc func showInfo(){
        let infoViewController = InfoViewController()
        present(infoViewController, animated: true)
    }
}

