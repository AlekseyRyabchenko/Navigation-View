//
//  FeedViewController.swift
//  Navigation
//
//  Created by Aleksey Ryabchenko on 10.06.2023.
//

import UIKit

class FeedViewController: UIViewController {
    
    private var textField: UITextField?
    
    let imageView: UIImageView = {
        let imageView = UIImageView(frame: CGRect(x: 0, y: 0, width: 150, height: 140))
        imageView.contentMode = .scaleToFill
        
        return imageView
    }()

    override func viewDidLoad() {
        super.viewDidLoad()
        view.backgroundColor = .white
        title = "Feed"
        
        view.addSubview(imageView)
        imageView.center = view.center
        imageView.image = UIImage(systemName: "list.clipboard.fill")
        imageView.tintColor = .blue
        
        let button = UIButton(type: .system)
        button.setTitle("Post", for: .normal)
        button.frame = CGRect(origin: CGPoint(x: 120, y: 300), size: CGSize(width: 150, height: 30))
        button.backgroundColor = .red
        view.addSubview(button)
        button.addTarget(self, action: #selector(showPost), for: .touchUpInside)
        
        textField = UITextField()
        textField?.frame = CGRect(origin: CGPoint(x: 45, y: 200), size: CGSize(width: 300, height: 30))
        textField?.backgroundColor = .gray
        view.addSubview(textField!)
        
    }
    
    @objc func showPost(){
        let postViewController = PostViewController()
        postViewController.message = textField?.text
        navigationController?.pushViewController(postViewController, animated: true)
    }
}

class PostViewController: UIViewController {
    
    var message: String?
    
    let imageView: UIImageView = {
        let imageView = UIImageView(frame: CGRect(x: 0, y: 0, width: 150, height: 140))
        imageView.contentMode = .scaleToFill
        
        return imageView
    }()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        view.backgroundColor = .white
        title = "Post"
        
        view.addSubview(imageView)
        imageView.center = view.center
        imageView.image = UIImage(systemName: "signpost.right.and.left")
        imageView.tintColor = .blue
        
        let labelText = UILabel(frame: CGRect(x: 45, y: 200, width: 300, height: 30))
        labelText.text = message
        labelText.backgroundColor = .white
        view.addSubview(labelText)
        
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
