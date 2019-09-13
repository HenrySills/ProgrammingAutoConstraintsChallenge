//
//  ProgrammaticAutoViewController.swift
//  ProgrammaticAutoLayout
//
//  Created by Henry Sills on 9/12/19.
//  Copyright © 2019 Henry Sills. All rights reserved.
//

import UIKit

class ProgrammaticAutoViewController: UIViewController {
    override func viewDidLoad() {
        super.viewDidLoad()

        let imageView = UIImageView()
        imageView.image = UIImage(named: "dog.jpg")
        
        view.addSubview(imageView)
        
        //enables auto layout
        imageView.translatesAutoresizingMaskIntoConstraints = false
    
        imageView.anchor(top: view.safeAreaLayoutGuide.topAnchor, leading: view.leadingAnchor, bottom: view.safeAreaLayoutGuide.bottomAnchor, trailing: view.trailingAnchor, padding: .init(top: 200, left: 100, bottom: 400, right: 100))
 }
 
}

extension UIView {
    func anchor(top: NSLayoutYAxisAnchor, leading: NSLayoutXAxisAnchor, bottom: NSLayoutYAxisAnchor,trailing: NSLayoutXAxisAnchor, padding: UIEdgeInsets = .zero){
        //enables auto layout
        translatesAutoresizingMaskIntoConstraints = false
        
        
        topAnchor.constraint(equalTo: top, constant: padding.top).isActive = true
        leadingAnchor.constraint(equalTo: leading, constant: padding.left).isActive = true
        bottomAnchor.constraint(equalTo: bottom, constant: -padding.bottom).isActive = true
        trailingAnchor.constraint(equalTo: trailing, constant: -padding.right).isActive = true
    }
}
