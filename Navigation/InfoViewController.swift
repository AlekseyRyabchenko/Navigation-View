//
//  InfoViewController.swift
//  Navigation
//
//  Created by Aleksey Ryabchenko on 11.06.2023.
//

import UIKit

class InfoViewController: UIViewController {
    
    override func viewDidLoad() {
        super.viewDidLoad()
        view.backgroundColor = .white
        title = "Info"
        
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
