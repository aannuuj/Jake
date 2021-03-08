//
//  ViewController.swift
//  Jake
//
//  Created by Hariom Palkar on 08/03/21.
//

import UIKit

class ViewController: UIViewController {
    
    fileprivate let imageView = UIImageView(image: UIImage(named: "jake"))
    fileprivate let cardHeight = UIScreen.main.bounds.height / 2.2
    fileprivate let cardWidth = UIScreen.main.bounds.width - ( UIScreen.main.bounds.width / 5 )
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        // backgrround color
        view.backgroundColor = UIColor.white
        
        // UIimage view
        view.addSubview(imageView)
        imageView.contentMode = .scaleAspectFill
        
        // auto layout constraints
        imageView.translatesAutoresizingMaskIntoConstraints = false
        imageView.centerYAnchor.constraint(equalTo: view.centerYAnchor).isActive = true
        imageView.centerXAnchor.constraint(equalTo: view.centerXAnchor).isActive = true
        imageView.heightAnchor.constraint(equalToConstant: cardHeight).isActive = true
        imageView.widthAnchor.constraint(equalToConstant: cardWidth ).isActive = true
       
        // corner radius
        imageView.clipsToBounds = true
        imageView.layer.cornerRadius = 20
        
    }
}

