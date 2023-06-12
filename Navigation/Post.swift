//
//  File.swift
//  Navigation
//
//  Created by Aleksey Ryabchenko on 12.06.2023.
//

import UIKit

struct Post {
    
    var title = "Post"
    
    let button = UIButton(type: .system)
    
    let imageView: UIImageView = {
        let imageView = UIImageView(frame: CGRect(x: 0, y: 0, width: 200, height: 180))
        imageView.contentMode = .scaleToFill
        
        return imageView
    }()
    
}
