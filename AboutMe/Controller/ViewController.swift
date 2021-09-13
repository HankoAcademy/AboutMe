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
        view.font = UIFont(name: "Helvetica", size: UIFont.labelFontSize*1.4)
        view.textColor = UIColor.white
        return view
    }()
    let pronounsLabel: UILabel = {
       let view = UILabel()
        view.translatesAutoresizingMaskIntoConstraints = false
        view.textColor = .white
        view.text = "he/him/his"
        view.textAlignment = NSTextAlignment.center
        view.font = UIFont(name: "Helvetica", size: UIFont.labelFontSize)
        view.textColor = UIColor.gray
        return view
    }()

    lazy var profileImage: UIImageView = {
        let view = UIImageView()
        view.image = UIImage(named: "ProfileImage")
        view.translatesAutoresizingMaskIntoConstraints = false
        view.contentMode = .center
        view.transform = CGAffineTransform(scaleX: 1/10, y: 1/10).translatedBy(x: 150, y: -350)
        return view
    }()
    lazy var profileView: UIView = {
        let view = UIView()
        view.translatesAutoresizingMaskIntoConstraints = false
        view.heightAnchor.constraint(equalToConstant: 150).isActive = true
        view.widthAnchor.constraint(equalToConstant: 150).isActive = true
        view.layer.borderColor = CGColor(red: 232/255, green: 69/255, blue: 69/255, alpha: 1.0)
        view.layer.borderWidth = 0
        view.layer.cornerRadius = 75
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
        view.addConstraint(view.heightAnchor.constraint(equalToConstant: 5))
        return view
    }()
    let spacing2: UIView = {
        let view = UIView()
        view.translatesAutoresizingMaskIntoConstraints = false
        view.addConstraint(view.heightAnchor.constraint(equalToConstant: 10))
        return view
    }()
    lazy var headerStack: UIStackView = {
        let view = UIStackView()
        view.translatesAutoresizingMaskIntoConstraints = false
        view.axis = NSLayoutConstraint.Axis.vertical
        view.alignment = .center
        view.distribution = .fill
        view.spacing = 5
        
        view.addArrangedSubview(spacing2)
        view.addArrangedSubview(profileView)
        view.addArrangedSubview(spacing)
        view.addArrangedSubview(nameLabel)
        view.addArrangedSubview(pronounsLabel)
        
        return view
    }()
    
    let darkBlue = UIColor(red: 64/255, green: 73/255, blue: 105/255, alpha: 1.0)
    
    lazy var headerView: UIView = {
        let view = UIView()
        view.translatesAutoresizingMaskIntoConstraints = false
//        view.backgroundColor = UIColor(red: 43/255, green: 46/255, blue: 74/255, alpha: 1.0)
        // rgb(64, 73, 105)
        view.backgroundColor = darkBlue
        view.layer.cornerRadius = 20
        view.addSubview(headerStack)
        return view
    }()

    
    let locationLabel: UILabel = {
       let view = UILabel()
        view.translatesAutoresizingMaskIntoConstraints = false
        
        view.text = "📍 Chicago, Illinois"
        view.textAlignment = NSTextAlignment.left
        
//        view.font = UIFont(name: "Helvetica", size: UIFont.labelFontSize*1.2)
        view.font = UIFont.preferredFont(forTextStyle: UIFont.TextStyle.headline)
        view.font = view.font.withSize(view.font.pointSize * 1.2)
        view.textColor = UIColor.label
        
        return view
    }()
    
    let locationBorder: UIView = {
        let view = UIView()
        view.translatesAutoresizingMaskIntoConstraints = false
        view.heightAnchor.constraint(equalToConstant: 5).isActive = true
        view.backgroundColor = UIColor(red: 64/255, green: 73/255, blue: 105/255, alpha: 1.0)
        return view
    }()
    
    lazy var locationHeader: UIView = {
        let view = UIView()
        view.translatesAutoresizingMaskIntoConstraints = false
        view.addSubview(locationLabel)
        let margin = CGFloat(16)
        view.directionalLayoutMargins.top = margin
        view.directionalLayoutMargins.leading = margin
        view.directionalLayoutMargins.trailing = margin
        view.directionalLayoutMargins.bottom = 6
        view.heightAnchor.constraint(equalTo: locationLabel.heightAnchor, constant: 22).isActive = true
        locationLabel.leadingAnchor.constraint(equalTo: view.layoutMarginsGuide.leadingAnchor).isActive = true
        locationLabel.trailingAnchor.constraint(equalTo: view.layoutMarginsGuide.trailingAnchor).isActive = true
        locationLabel.topAnchor.constraint(equalTo: view.layoutMarginsGuide.topAnchor).isActive = true
        return view
    }()
    
    lazy var contactStack: UIStackView = {
        let view = UIStackView()
        view.translatesAutoresizingMaskIntoConstraints = false
        view.axis = NSLayoutConstraint.Axis.vertical
        view.alignment = .leading
        view.distribution = .fill
        view.spacing = 5
        
//        view.isLayoutMarginsRelativeArrangement = true
//        view.directionalLayoutMargins.leading = 20
        
        view.addArrangedSubview(locationHeader)
        view.addArrangedSubview(locationBorder)
        locationBorder.widthAnchor.constraint(equalTo: view.widthAnchor).isActive = true
        locationHeader.widthAnchor.constraint(equalTo: view.widthAnchor).isActive = true
//        NSLayoutConstraint.deactivate(locationBorder.constraintsAffectingLayout(for: .horizontal))
////
//        locationBorder.leadingAnchor.constraint(equalTo: view.leadingAnchor).isActive = true
//        locationBorder.trailingAnchor.constraint(equalTo: view.trailingAnchor).isActive = true
//        locationLabel.leadingAnchor.constraint(equalTo: view.leadingAnchor, constant: 50).isActive = true
//        locationLabel.widthAnchor.constraint(equalTo: view.widthAnchor).isActive = true
//        locationLabel.layoutMarginsGuide.leadingAnchor.constraint(equalTo: view.leadingAnchor).isActive = true

        return view
    }()
    
    lazy var contactView: UIView = {
        let view = UIView()
        view.translatesAutoresizingMaskIntoConstraints = false
        // rgb(224, 252, 255)
        view.backgroundColor = UIColor(red: 224/255, green: 252/255, blue: 255/255, alpha: 1.0)
        // rgb(189, 228, 244)
        view.backgroundColor = UIColor(red: 189/255, green: 228/255, blue: 244/255, alpha: 1.0)
        view.layer.cornerRadius = 20
        view.addSubview(contactStack)
        
//        contactStack.centerYAnchor.constraint(equalTo: view.centerYAnchor).isActive = true
//        contactStack.centerXAnchor.constraint(equalTo: view.centerXAnchor).isActive = true
        return view
    }()
    
    
    let mainStack: UIStackView = {
        let view = UIStackView()
        view.translatesAutoresizingMaskIntoConstraints = false
        view.axis = NSLayoutConstraint.Axis.vertical
        view.alignment = .leading
        view.distribution = .fill
        view.spacing = 24
        return view
    }()
    
    override func loadView() {
        super.loadView()
        
        self.view = UIView()
        self.view.backgroundColor = UIColor.white
        self.view.addSubview(mainStack)
        mainStack.addArrangedSubview(headerView)
        mainStack.addArrangedSubview(contactView)
        

        NSLayoutConstraint.activate([
            
            headerStack.centerYAnchor.constraint(equalTo: headerView.centerYAnchor, constant: -10),
            headerStack.centerXAnchor.constraint(equalTo: headerView.centerXAnchor),
//            mainStack.centerYAnchor.constraint(equalTo: self.view.centerYAnchor),
//            mainStack.centerXAnchor.constraint(equalTo: self.view.centerXAnchor),
            mainStack.topAnchor.constraint(equalTo: self.view.safeAreaLayoutGuide.topAnchor),
            mainStack.leadingAnchor.constraint(equalTo: self.view.leadingAnchor, constant: 20),
            mainStack.trailingAnchor.constraint(equalTo: self.view.trailingAnchor, constant: -20),
//            mainStack.heightAnchor.constraint(equalTo: self.view.safeAreaLayoutGuide.heightAnchor),
            
            headerView.heightAnchor.constraint(equalTo: self.view.safeAreaLayoutGuide.heightAnchor, multiplier: 4/12),
            headerView.widthAnchor.constraint(equalTo: mainStack.widthAnchor),
            
            contactView.widthAnchor.constraint(equalTo: mainStack.widthAnchor),
            contactView.heightAnchor.constraint(equalTo: self.view.safeAreaLayoutGuide.heightAnchor, multiplier: 4/12),
            contactStack.topAnchor.constraint(equalTo: contactView.topAnchor, constant: 0),
            contactStack.leadingAnchor.constraint(equalTo: contactView.leadingAnchor, constant: 0),
            contactStack.trailingAnchor.constraint(equalTo: contactView.trailingAnchor, constant: 0),
            
            
        ])
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
    }
}
