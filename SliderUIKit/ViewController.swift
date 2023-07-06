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
        slider.maximumValue = 5
        //slider.backgroundColor = UIColor.white
        
      //  slider.minimumValueImage = UIImage()
       // slider.maximumValueImage = UIImage(systemName: "paperplane")
        slider.isContinuous = true
        
        slider.minimumTrackTintColor = UIColor.green
        slider.maximumTrackTintColor =  UIColor.red
        slider.thumbTintColor = .brown
        return slider
    }()
    
    
    private let myLabel: UILabel = {
        let label = UILabel()
        label.translatesAutoresizingMaskIntoConstraints = false
        label.textAlignment = .center
        label.text = "Show the number"
        return label
    }()


    override func viewDidLoad() {
        super.viewDidLoad()
        configureViews()
        configureConstraints()
        
    }
    
    @objc private func sliderAction() {
        var alpha = myNewSLider.value
        print("\(alpha)")
        myLabel.text = "Show the number: \(alpha)"
        
        
    }
    
    private func configureViews() {
        view.addSubview(myLabel)
        view.addSubview(myNewSLider)
        myNewSLider.addTarget(self, action: #selector(sliderAction), for: .valueChanged)
        
    }
    
    private func configureConstraints() {
        
        let myLabelConstraints = [
            myLabel.topAnchor.constraint(equalTo: view.safeAreaLayoutGuide.topAnchor, constant: 30),
            myLabel.leadingAnchor.constraint(equalTo: view.safeAreaLayoutGuide.leadingAnchor, constant: 5),
            myLabel.trailingAnchor.constraint(equalTo: view.safeAreaLayoutGuide.trailingAnchor, constant: -5),
        ]
        
        let myNewSLiderConstraint = [
            myNewSLider.topAnchor.constraint(equalTo: myLabel.bottomAnchor, constant: 30),
            myNewSLider.leadingAnchor.constraint(equalTo: view.safeAreaLayoutGuide.leadingAnchor, constant: 20),
            myNewSLider.trailingAnchor.constraint(equalTo: view.safeAreaLayoutGuide.trailingAnchor, constant: -20),
            
        ]
        
        NSLayoutConstraint.activate(myNewSLiderConstraint)
        NSLayoutConstraint.activate(myLabelConstraints)
    }

}

