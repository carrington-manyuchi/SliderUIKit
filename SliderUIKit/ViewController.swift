//
//  ViewController.swift
//  SliderUIKit
//
//  Created by DA MAC M1 157 on 2023/07/06.
//

import UIKit

class ViewController: UIViewController {
    
    private let myNewSLider: UISlider = {
        let slider = UISlider()
        slider.translatesAutoresizingMaskIntoConstraints = false
        slider.value = 0.5
        slider.minimumValue = 0
        slider.maximumValue = 1
        
        slider.minimumValueImage = UIImage()
        slider.maximumValueImage = UIImage(systemName: "paperplane")
        slider.isContinuous = true
        
        slider.minimumTrackTintColor = UIColor.lightGray
        slider.maximumTrackTintColor =  UIColor.red
        //slider.thumbTintColor = .white
        return slider
    }()
    
    private let userProfile: UIImageView = {
        let imageView = UIImageView()
        return imageView
    }()

    override func viewDidLoad() {
        super.viewDidLoad()
        configureViews()
        configureConstraints()
    }
    
    private func configureViews() {
        view.addSubview(myNewSLider)
    }
    
    private func configureConstraints() {
        let myNewSLiderConstraint = [
            myNewSLider.topAnchor.constraint(equalTo: view.safeAreaLayoutGuide.topAnchor, constant: 30),
            myNewSLider.leadingAnchor.constraint(equalTo: view.safeAreaLayoutGuide.leadingAnchor, constant: 20),
            myNewSLider.trailingAnchor.constraint(equalTo: view.safeAreaLayoutGuide.trailingAnchor, constant: 20),
            
        ]
        
        NSLayoutConstraint.activate(myNewSLiderConstraint)
    }

}

