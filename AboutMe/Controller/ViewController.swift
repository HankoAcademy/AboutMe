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
        view.backgroundColor = UIColor(red: 43/255, green: 46/255, blue: 74/255, alpha: 1.0)
        view.layer.cornerRadius = 20
        return view
    }()
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
    let profileImage: UIImageView = {
        let view = UIImageView()
        
//        let image: UIImage? = {
//            guard let newimage = UIImage(named: "ProfileImage") else {
//                return nil
//            }
////            let scaleFactor = UIScreen.main.scale
////            let scale = CGAffineTransform(scaleX: scaleFactor, y: scaleFactor)
////            let size = view.bounds.size.applying(scale)
//            let size = CGSize(width: newimage.size.width / 1, height: newimage.size.height / 1)
//            let origin = CGPoint(x: 0, y: 0)
//            let renderer = UIGraphicsImageRenderer(size: size)
//            return renderer.image { (context) in
//                newimage.draw(in: CGRect(origin: origin, size: size))
//            }
//        }()
        view.image = UIImage(named: "ProfileImage")
//        let inset = CGFloat(20)
//        view.image?.resizableImage(withCapInsets: UIEdgeInsets(top: inset, left: inset, bottom: inset, right: inset), resizingMode: .stretch)
//        view.image = image
        view.translatesAutoresizingMaskIntoConstraints = false
        view.contentMode = .center
//        view.layer.cornerRadius = image.size.width / 2.0
//        view.layer.cornerRadius = 100
//        view.layer.masksToBounds = false
//        view.layer.borderColor = UIColor.blue.cgColor
//        view.layer.borderWidth = 1
//        view.clipsToBounds = true
        view.transform = CGAffineTransform(scaleX: 1/10, y: 1/10).translatedBy(x: 140, y: -300)
//        view.transform = CGAffineTransform(translationX: 50, y: -10)
        return view
    }()
    
    
    
    let spacing: UIView = {
        let view = UIView()
        view.translatesAutoresizingMaskIntoConstraints = false
        view.addConstraint(view.heightAnchor.constraint(equalToConstant: 20))
        return view
    }()
    
    let profileView: UIView = {
        let view = UIView()
        view.translatesAutoresizingMaskIntoConstraints = false
        view.heightAnchor.constraint(equalToConstant: 200).isActive = true
        view.widthAnchor.constraint(equalToConstant: 200).isActive = true
        view.layer.borderColor = CGColor(red: 232/255, green: 69/255, blue: 69/255, alpha: 1.0)
        view.layer.borderWidth = 2
        view.layer.cornerRadius = 100
        view.clipsToBounds = true
        return view
    }()
    
    let headerStack: UIStackView = {
        let view = UIStackView()
        view.translatesAutoresizingMaskIntoConstraints = false
        view.axis = NSLayoutConstraint.Axis.vertical
        view.alignment = .center
        view.distribution = .fill
        view.spacing = 5
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
        return view
    }()
    
    override func loadView() {
//        super.loadView()
        self.view = UIView()
        self.view.backgroundColor = .white
        
        profileView.addSubview(profileImage)
        
        headerStack.addArrangedSubview(profileView)
        headerStack.addArrangedSubview(spacing)
        headerStack.addArrangedSubview(nameLabel)
        headerStack.addArrangedSubview(pronounsLabel)
        blueBox.addSubview(headerStack)
        
        NSLayoutConstraint.activate([
            
//            pronounsLabel.heightAnchor.constraint(equalTo: headerStack.heightAnchor, multiplier: 1/10),
//            pronounsLabel.bottomAnchor.constraint(equalTo: headerStack.bottomAnchor),
            
//            nameLabel.heightAnchor.constraint(equalTo: headerStack.heightAnchor, multiplier: 1/10),
//            nameLabel.bottomAnchor.constraint(equalTo: pronounsLabel.topAnchor),
//            profileImage.widthAnchor.constraint(equalTo: headerStack.widthAnchor, multiplier: 3/5),
//            profileImage.heightAnchor.constraint(equalTo: headerStack.heightAnchor, multiplier: 3/5),
            profileImage.centerYAnchor.constraint(equalTo: profileView.centerYAnchor),
            profileImage.centerXAnchor.constraint(equalTo: profileView.centerXAnchor),
            profileImage.widthAnchor.constraint(equalTo: profileView.widthAnchor),
            profileImage.heightAnchor.constraint(equalTo: profileView.heightAnchor),
            
//            headerStack.bottomAnchor.constraint(equalTo: blueBox.bottomAnchor, constant: 20),
//            headerStack.topAnchor.constraint(equalTo: blueBox.topAnchor, constant: 20),
//            headerStack.trailingAnchor.constraint(equalTo: blueBox.trailingAnchor, constant: 20),
//            headerStack.leadingAnchor.constraint(equalTo: blueBox.leadingAnchor, constant: -20),
            headerStack.centerYAnchor.constraint(equalTo: blueBox.centerYAnchor, constant: -10),
            headerStack.centerXAnchor.constraint(equalTo: blueBox.centerXAnchor),
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
            blueBox.trailingAnchor.constraint(equalTo: self.view.trailingAnchor, constant: -20),
            blueBox.heightAnchor.constraint(equalTo: self.view.safeAreaLayoutGuide.heightAnchor, multiplier: 4/9)
        ])
        
//        let displayHeightPortait: NSLayoutDimension =
//        let displayWidthPortait: NSLayoutDimension = self.view.safeAreaLayoutGuide.widthAnchor
//
//        portraitConstraints = [
//            blueBox.heightAnchor.constraint(equalTo: self.view.safeAreaLayoutGuide.heightAnchor, multiplier: 5/9),
//            blueBox.widthAnchor.constraint(equalTo: displayWidthPortait, multiplier: 1)
//        ]
        
        
//        NSLayoutConstraint.activate(portraitConstraints)
        
        
//        let displayHeightLandscape: NSLayoutDimension = self.view.safeAreaLayoutGuide.widthAnchor
//        let displayWidthLandscape: NSLayoutDimension = self.view.safeAreaLayoutGuide.heightAnchor
//
//
//        landscapeConstraints = [
//            blueBox.heightAnchor.constraint(equalTo: displayHeightLandscape, multiplier: 1/5),
//            blueBox.widthAnchor.constraint(equalTo: displayWidthLandscape, multiplier: 1/3)
//        ]
//
//        if (UIDevice.current.orientation.isLandscape) {
//            NSLayoutConstraint.activate(landscapeConstraints)
//        } else {
//            NSLayoutConstraint.activate(portraitConstraints)
//        }
//        self.view.addSubview(profileImage)
//        NSLayoutConstraint.activate([
//            profileImage.heightAnchor.constraint(equalTo: displayHeightPortait, multiplier: 4/9),
//            profileImage.widthAnchor.constraint(equalTo: displayWidthPortait, multiplier: 1),
//            profileImage.bottomAnchor.constraint(equalTo: self.view.safeAreaLayoutGuide.bottomAnchor)
//        ])
        
    }
    
//    private func layoutBlueBox() {
//        print("layoutBlueBox called")
//        print(self.view.safeAreaLayoutGuide.heightAnchor)
//        print(self.view.safeAreaLayoutGuide.widthAnchor)
//
//        if (UIDevice.current.orientation.isLandscape) {
//            NSLayoutConstraint.deactivate(portraitConstraints)
//            NSLayoutConstraint.activate(landscapeConstraints)
//        } else {
//            NSLayoutConstraint.deactivate(landscapeConstraints)
//            NSLayoutConstraint.activate(portraitConstraints)
//        }
//
//        NSLayoutConstraint.deactivate([blueBox.heightAnchor.constraint(equalTo: displayHeight, multiplier: 1/5),
//                                       blueBox.widthAnchor.constraint(equalTo: displayWidth, multiplier: 1/3)])
//        NSLayoutConstraint.activate([
//            blueBox.heightAnchor.constraint(equalTo: displayHeight, multiplier: 1/5),
//            blueBox.widthAnchor.constraint(equalTo: displayWidth, multiplier: 1/3)
//        ])
//    }
    
//    override func viewWillLayoutSubviews() {
//        layoutBlueBox()
//    }
    

}

