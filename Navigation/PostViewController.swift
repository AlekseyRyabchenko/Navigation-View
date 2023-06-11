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

class InfoViewController: UIViewController {
    
    let imageView: UIImageView = {
        let imageView = UIImageView(frame: CGRect(x: 0, y: 0, width: 150, height: 140))
        imageView.contentMode = .scaleToFill
        
        return imageView
    }()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        view.backgroundColor = .white
        title = "Info"
        
        view.addSubview(imageView)
        imageView.center = view.center
        imageView.image = UIImage(systemName: "info.square.fill")
        imageView.tintColor = .blue
        
        let button = UIButton(type: .system)
        button.setTitle("Alert", for: .normal)
        button.frame = CGRect(origin: CGPoint(x: 120, y: 300), size: CGSize(width: 150, height: 30))
        button.backgroundColor = .red
        view.addSubview(button)
        button.addTarget(self, action: #selector(showAlert), for: .touchUpInside)
    }
    
    @objc func showAlert(){
        let alertViewController = UIAlertController(title: "Alert", message: "Warning Alert", preferredStyle: .alert)
        alertViewController.addAction(UIAlertAction(title: "Ok", style: .destructive, handler: { action in print("OK Alert") }))
        alertViewController.addAction(UIAlertAction(title: "Cancel", style: .cancel, handler: { action in print("Cancel Alert")}))
        present(alertViewController, animated: true)
    }
}

