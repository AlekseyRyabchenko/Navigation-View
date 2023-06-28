//
//  FeedViewController.swift
//  Navigation
//
//  Created by Aleksey Ryabchenko on 10.06.2023.
//

import UIKit

class FeedViewController: UIViewController {
    
    let post = Post(title: "Post")
    
    override func viewDidLoad() {
        super.viewDidLoad()
        view.backgroundColor = .white
        title = "Feed"
        
        let button = UIButton(type: .system)
        button.setTitle("Post", for: .normal)
        button.frame = CGRect(origin: CGPoint(x: 120, y: 300), size: CGSize(width: 150, height: 30))
        button.backgroundColor = .red
        view.addSubview(button)
        button.addTarget(self, action: #selector(showPost), for: .touchUpInside)
        
    }
    
    @objc func showPost(){
        let postViewController = PostViewController()
        postViewController.postTitle = post.title
        navigationController?.pushViewController(postViewController, animated: true)
    }
}
