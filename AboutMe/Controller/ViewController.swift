//
//  ViewController.swift
//  AboutMe
//
//  Created by Hannie Kim on 8/1/21.
//

import UIKit

class ViewController: UIViewController {
    var portraitConstraints: [NSLayoutConstraint] = [NSLayoutConstraint]()
    var landscapeConstraints: [NSLayoutConstraint] = [NSLayoutConstraint]()
    
    let blueBox: UIView = {
        let view = UIView()
        view.translatesAutoresizingMaskIntoConstraints = false
        view.backgroundColor = .blue
        view.layer.cornerRadius = 50
        return view
    }()
    let nameLabel: UILabel = {
       let view = UILabel()
        view.translatesAutoresizingMaskIntoConstraints = false
        view.textColor = .white
        view.text = "Yani Julian"
        view.textAlignment = NSTextAlignment.center
//        view.font = UIFont(name: "Times New Roman", size: 32)
        
        return view
    }()
    let pronounsLabel: UILabel = {
       let view = UILabel()
        view.translatesAutoresizingMaskIntoConstraints = false
        view.textColor = .white
        view.text = "he/him/his"
        view.textAlignment = NSTextAlignment.center
        return view
    }()
    let profileImage: UIImageView = {
        let image = UIImage(named: "ProfileImage")!
        let view = UIImageView()
        view.image = image
        view.translatesAutoresizingMaskIntoConstraints = false
        view.contentMode = UIView.ContentMode.scaleAspectFit
        view.layer.cornerRadius = 50
        return view
    }()
    
    let headerStack: UIStackView = {
        let view = UIStackView()
        view.translatesAutoresizingMaskIntoConstraints = false
        view.axis = NSLayoutConstraint.Axis.vertical
        view.alignment = .center
        view.distribution = .fill
        return view
    }()
    
    override func loadView() {
//        super.loadView()
        self.view = UIView()
        self.view.backgroundColor = .white
        
        
        headerStack.addArrangedSubview(profileImage)
        
        headerStack.addArrangedSubview(nameLabel)
        headerStack.addArrangedSubview(pronounsLabel)
        self.blueBox.addSubview(headerStack)
        
        NSLayoutConstraint.activate([
            
//            pronounsLabel.heightAnchor.constraint(equalTo: headerStack.heightAnchor, multiplier: 1/10),
//            pronounsLabel.bottomAnchor.constraint(equalTo: headerStack.bottomAnchor),
            
//            nameLabel.heightAnchor.constraint(equalTo: headerStack.heightAnchor, multiplier: 1/10),
//            nameLabel.bottomAnchor.constraint(equalTo: pronounsLabel.topAnchor),
            profileImage.widthAnchor.constraint(equalTo: headerStack.widthAnchor, multiplier: 3/5),
            profileImage.heightAnchor.constraint(equalTo: headerStack.heightAnchor, multiplier: 3/5),
            
            headerStack.bottomAnchor.constraint(equalTo: blueBox.bottomAnchor, constant: 20),
            headerStack.topAnchor.constraint(equalTo: blueBox.topAnchor, constant: -20),
            headerStack.trailingAnchor.constraint(equalTo: blueBox.trailingAnchor, constant: 20),
            headerStack.leadingAnchor.constraint(equalTo: blueBox.leadingAnchor, constant: -20),
//            profileImage.topAnchor.constraint(equalTo: headerStack.topAnchor),
//            profileImage.topAnchor.constraint(lessThanOrEqualTo: headerStack.topAnchor, constant: 200),
//            profileImage.widthAnchor.constraint(equalToConstant: 200),
//            profileImage.heightAnchor.constraint(equalTo: headerStack.heightAnchor, multiplier: 3/4)
//            profileImage.bottomAnchor.constraint(equalTo: nameLabel.topAnchor),
//            profileImage.widthAnchor.constraint(equalTo: headerStack.widthAnchor, multiplier: 1/3)
        ])
        
//        blueBox.addSubview(profileImage);
//        NSLayoutConstraint.activate([
//            profileImage.heightAnchor.constraint(equalTo: blueBox.heightAnchor, multiplier: 1/3),
//            profileImage.widthAnchor.constraint(equalTo: blueBox.widthAnchor, multiplier: 1/3),
//            profileImage.centerXAnchor.constraint(equalTo: blueBox.centerXAnchor),
//            profileImage.centerYAnchor.constraint(equalTo: blueBox.centerYAnchor, constant: -50)
//        ])
//
//        blueBox.addSubview(nameLabel);
//        NSLayoutConstraint.activate([
//            nameLabel.centerXAnchor.constraint(equalTo: blueBox.centerXAnchor),
//            nameLabel.centerYAnchor.constraint(equalTo: blueBox.centerYAnchor, constant: 20)
//        ])
        self.view.addSubview(blueBox)

//        layoutBlueBox()

        NSLayoutConstraint.activate([
            blueBox.topAnchor.constraint(equalTo: self.view.safeAreaLayoutGuide.topAnchor),
            blueBox.leadingAnchor.constraint(equalTo: self.view.leadingAnchor, constant: 20),
            blueBox.trailingAnchor.constraint(equalTo: self.view.trailingAnchor, constant: -20)
        ])
        
        let displayHeightPortait: NSLayoutDimension = self.view.safeAreaLayoutGuide.heightAnchor
        let displayWidthPortait: NSLayoutDimension = self.view.safeAreaLayoutGuide.widthAnchor
        
        portraitConstraints = [
            blueBox.heightAnchor.constraint(equalTo: displayHeightPortait, multiplier: 4/9),
//            blueBox.widthAnchor.constraint(equalTo: displayWidthPortait, multiplier: 1)
        ]
        
        let displayHeightLandscape: NSLayoutDimension = self.view.safeAreaLayoutGuide.widthAnchor
        let displayWidthLandscape: NSLayoutDimension = self.view.safeAreaLayoutGuide.heightAnchor
        
        
        landscapeConstraints = [
            blueBox.heightAnchor.constraint(equalTo: displayHeightLandscape, multiplier: 1/5),
//            blueBox.widthAnchor.constraint(equalTo: displayWidthLandscape, multiplier: 1/3)
        ]
        
        if (UIDevice.current.orientation.isLandscape) {
            NSLayoutConstraint.activate(landscapeConstraints)
        } else {
            NSLayoutConstraint.activate(portraitConstraints)
        }
//        self.view.addSubview(profileImage)
//        NSLayoutConstraint.activate([
////            profileImage.heightAnchor.constraint(equalTo: displayHeightPortait, multiplier: 4/9),
////            profileImage.widthAnchor.constraint(equalTo: displayWidthPortait, multiplier: 1),
//            profileImage.bottomAnchor.constraint(equalTo: self.view.safeAreaLayoutGuide.bottomAnchor)
//        ])
        
    }
    
    private func layoutBlueBox() {
        print("layoutBlueBox called")
        print(self.view.safeAreaLayoutGuide.heightAnchor)
        print(self.view.safeAreaLayoutGuide.widthAnchor)
        
        if (UIDevice.current.orientation.isLandscape) {
            NSLayoutConstraint.deactivate(portraitConstraints)
            NSLayoutConstraint.activate(landscapeConstraints)
        } else {
            NSLayoutConstraint.deactivate(landscapeConstraints)
            NSLayoutConstraint.activate(portraitConstraints)
        }
        
//        NSLayoutConstraint.deactivate([blueBox.heightAnchor.constraint(equalTo: displayHeight, multiplier: 1/5),
//                                       blueBox.widthAnchor.constraint(equalTo: displayWidth, multiplier: 1/3)])
//        NSLayoutConstraint.activate([
//            blueBox.heightAnchor.constraint(equalTo: displayHeight, multiplier: 1/5),
//            blueBox.widthAnchor.constraint(equalTo: displayWidth, multiplier: 1/3)
//        ])
    }
    
    override func viewWillLayoutSubviews() {
//        layoutBlueBox()
    }
    

}

