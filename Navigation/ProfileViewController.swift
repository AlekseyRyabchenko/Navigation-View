//
//  ProfileViewController.swift
//  Navigation
//
//  Created by Aleksey Ryabchenko on 10.06.2023.
//

import UIKit

class ProfileViewController: UIViewController {
    
    let imageView: UIImageView = {
        let imageView = UIImageView(frame: CGRect(x: 0, y: 0, width: 150, height: 140))
        imageView.contentMode = .scaleToFill
        
        return imageView
    }()

    override func viewDidLoad() {
        super.viewDidLoad()
        view.backgroundColor = .white
        title = "Profile"
        
        view.addSubview(imageView)
        imageView.center = view.center
        imageView.image = UIImage(systemName: "person.crop.square")
        imageView.tintColor = .systemBlue
    }

}
