//
//  ViewController.swift
//  AboutMe
//
//  Created by Hannie Kim on 8/1/21.
//

import UIKit

class ViewController: UIViewController {
    
    let nameLabel: UILabel = {
       let view = UILabel()
        view.translatesAutoresizingMaskIntoConstraints = false
        view.textColor = .white
        view.text = "Yani Julian"
        view.textAlignment = NSTextAlignment.center
        view.font = UIFont(name: "Helvetica", size: UIFont.labelFontSize*1.6)
        
        return view
    }()
    let pronounsLabel: UILabel = {
       let view = UILabel()
        view.translatesAutoresizingMaskIntoConstraints = false
        view.textColor = .white
        view.text = "he/him/his"
        view.textAlignment = NSTextAlignment.center
        view.font = UIFont(name: "Helvetica", size: UIFont.labelFontSize*1.2)
        return view
    }()

    lazy var profileImage: UIImageView = {
        let view = UIImageView()
        view.image = UIImage(named: "ProfileImage")
        view.translatesAutoresizingMaskIntoConstraints = false
        view.contentMode = .center
        view.transform = CGAffineTransform(scaleX: 1/10, y: 1/10).translatedBy(x: 140, y: -300)
        return view
    }()
    lazy var profileView: UIView = {
        let view = UIView()
        view.translatesAutoresizingMaskIntoConstraints = false
        view.heightAnchor.constraint(equalToConstant: 200).isActive = true
        view.widthAnchor.constraint(equalToConstant: 200).isActive = true
        view.layer.borderColor = CGColor(red: 232/255, green: 69/255, blue: 69/255, alpha: 1.0)
        view.layer.borderWidth = 2
        view.layer.cornerRadius = 100
        view.clipsToBounds = true
        view.addSubview(profileImage)
        profileImage.centerYAnchor.constraint(equalTo: view.centerYAnchor).isActive = true
        profileImage.centerXAnchor.constraint(equalTo: view.centerXAnchor).isActive = true
        profileImage.widthAnchor.constraint(equalTo: view.widthAnchor).isActive = true
        profileImage.heightAnchor.constraint(equalTo: view.heightAnchor).isActive = true
        return view
    }()
    
    
    let spacing: UIView = {
        let view = UIView()
        view.translatesAutoresizingMaskIntoConstraints = false
        view.addConstraint(view.heightAnchor.constraint(equalToConstant: 20))
        return view
    }()
    lazy var headerStack: UIStackView = {
        let view = UIStackView()
        view.translatesAutoresizingMaskIntoConstraints = false
        view.axis = NSLayoutConstraint.Axis.vertical
        view.alignment = .center
        view.distribution = .fill
        view.spacing = 5
        
        view.addArrangedSubview(profileView)
        view.addArrangedSubview(spacing)
        view.addArrangedSubview(nameLabel)
        view.addArrangedSubview(pronounsLabel)
        
        return view
    }()
    lazy var blueBox: UIView = {
        let view = UIView()
        view.translatesAutoresizingMaskIntoConstraints = false
        view.backgroundColor = UIColor(red: 43/255, green: 46/255, blue: 74/255, alpha: 1.0)
        view.layer.cornerRadius = 20
        view.addSubview(headerStack)
        return view
    }()
    
    
    let locationStack: UIStackView = {
        let view = UIStackView()
        view.translatesAutoresizingMaskIntoConstraints = false
        view.axis = NSLayoutConstraint.Axis.vertical
        view.alignment = .center
        view.distribution = .fill
        view.spacing = 5
        return view
    }()
    
    
    let mainStack: UIStackView = {
        let view = UIStackView()
        view.translatesAutoresizingMaskIntoConstraints = false
        view.axis = NSLayoutConstraint.Axis.vertical
        view.alignment = .center
        view.distribution = .fill
        view.spacing = 5
        view.backgroundColor = .white
        return view
    }()
    
    override func loadView() {
        super.loadView()
        
        self.view = mainStack
        self.view.backgroundColor = .white
        self.view.addSubview(blueBox)

        NSLayoutConstraint.activate([
            headerStack.centerYAnchor.constraint(equalTo: blueBox.centerYAnchor, constant: -10),
            headerStack.centerXAnchor.constraint(equalTo: blueBox.centerXAnchor),
            blueBox.topAnchor.constraint(equalTo: self.view.safeAreaLayoutGuide.topAnchor),
            blueBox.leadingAnchor.constraint(equalTo: self.view.leadingAnchor, constant: 20),
            blueBox.trailingAnchor.constraint(equalTo: self.view.trailingAnchor, constant: -20),
            blueBox.heightAnchor.constraint(equalTo: self.view.safeAreaLayoutGuide.heightAnchor, multiplier: 4/9)
        ])
    }
}
