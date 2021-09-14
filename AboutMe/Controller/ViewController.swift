//
//  ViewController.swift
//  AboutMe
//
//  Created by Hannie Kim on 8/1/21.
//

import UIKit

class ViewController: UIViewController {
    
    let darkBlue = UIColor(red: 64/255, green: 73/255, blue: 105/255, alpha: 1.0)
    let lightBlue = UIColor(red: 224/255, green: 252/255, blue: 255/255, alpha: 1.0)
    let blue = UIColor(red: 189/255, green: 228/255, blue: 244/255, alpha: 1.0)
    
    
    let nameLabel: UILabel = {
       let view = UILabel()
        view.translatesAutoresizingMaskIntoConstraints = false
        
        view.text = "Yani Julian"
        view.textAlignment = NSTextAlignment.center
        view.textColor = UIColor.white
        view.font = UIFont.preferredFont(forTextStyle: UIFont.TextStyle.title1)
        
        return view
    }()
    let pronounsLabel: UILabel = {
       let view = UILabel()
        view.translatesAutoresizingMaskIntoConstraints = false
        
        view.text = "he/him/his"
        view.textAlignment = NSTextAlignment.center
        view.textColor = UIColor.gray
        view.font = UIFont.preferredFont(forTextStyle: UIFont.TextStyle.title3)
        
        return view
    }()

    lazy var profileImage: UIImageView = {
        let view = UIImageView()
        view.translatesAutoresizingMaskIntoConstraints = false
        
        view.image = UIImage(named: "ProfileImage")
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
        
    lazy var headerStack: UIStackView = {
        let view = UIStackView()
        view.translatesAutoresizingMaskIntoConstraints = false
        
        view.axis = NSLayoutConstraint.Axis.vertical
        view.alignment = .center
        view.distribution = .fill
        view.spacing = 5
        
        view.addArrangedSubview(profileView)
        view.setCustomSpacing(20, after: profileView)
        
        view.addArrangedSubview(nameLabel)
        view.addArrangedSubview(pronounsLabel)
        
        return view
    }()
    lazy var headerView: UIView = {
        let view = UIView()
        view.translatesAutoresizingMaskIntoConstraints = false
        
        view.backgroundColor = darkBlue
        view.layer.cornerRadius = 20
        
        view.addSubview(headerStack)
        headerStack.centerYAnchor.constraint(equalTo: view.centerYAnchor, constant: -5).isActive = true
        headerStack.centerXAnchor.constraint(equalTo: view.centerXAnchor).isActive = true
        
        return view
    }()

    
    let locationLabel: UILabel = {
       let view = UILabel()
        view.translatesAutoresizingMaskIntoConstraints = false
        
        view.text = "📍 Chicago, Illinois"
        view.textAlignment = NSTextAlignment.left
        view.textColor = UIColor.label
        view.font = UIFont.preferredFont(forTextStyle: UIFont.TextStyle.title2)
//        view.font = view.font.withSize(view.font.pointSize * 1.2)
        
        return view
    }()
    lazy var locationBorder: UIView = {
        let view = UIView()
        view.translatesAutoresizingMaskIntoConstraints = false
        
        view.backgroundColor = darkBlue
        view.heightAnchor.constraint(equalToConstant: 5).isActive = true
        
        return view
    }()
    lazy var locationHeader: UIView = {
        let view = UIView()
        view.translatesAutoresizingMaskIntoConstraints = false
        
        let margin = CGFloat(16)
        view.directionalLayoutMargins.top = margin
        view.directionalLayoutMargins.leading = margin
        view.directionalLayoutMargins.trailing = margin
        view.directionalLayoutMargins.bottom = 6
        
        view.addSubview(locationLabel)
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
//        view.directionalLayoutMargins.leading = 8
        
        view.addArrangedSubview(locationHeader)
        view.addArrangedSubview(locationBorder)
        locationBorder.widthAnchor.constraint(equalTo: view.widthAnchor).isActive = true
        locationHeader.widthAnchor.constraint(equalTo: view.widthAnchor).isActive = true
        
        view.addArrangedSubview(contactItemView)
//        view.bottomAnchor.constraint(equalTo: contactItemView.bottomAnchor, constant: 16).isActive = true
        return view
    }()
    lazy var contactView: UIView = {
        let view = UIView()
        view.translatesAutoresizingMaskIntoConstraints = false

        view.backgroundColor = blue
        view.layer.cornerRadius = 20
        view.addSubview(contactStack)
        
        contactStack.topAnchor.constraint(equalTo: view.topAnchor).isActive = true
        contactStack.leadingAnchor.constraint(equalTo: view.leadingAnchor).isActive = true
        contactStack.trailingAnchor.constraint(equalTo: view.trailingAnchor).isActive = true
        contactStack.heightAnchor.constraint(equalTo: view.heightAnchor).isActive = true
        return view
    }()
    
    let contactItemView: UIView = {
//       let view = UIView()
//        view.translatesAutoresizingMaskIntoConstraints = false
//
//        let stack = UIStackView()
//        stack.translatesAutoresizingMaskIntoConstraints = false
//        stack.axis = NSLayoutConstraint.Axis.horizontal
//        stack.alignment = .center
//        stack.distribution = .fill
//
//
//
//        let icon = UIImageView()
//        icon.translatesAutoresizingMaskIntoConstraints = false
//
//        let config = UIImage.SymbolConfiguration(textStyle: .title1, scale: .medium)

//        icon.image = UIImage(systemName: "GitHubIcon")
//        icon.image = UIImage(systemName: "pencil.circle.fill", withConfiguration: config)
        //        icon.preferredSymbolConfiguration = icon.image.applyingSymbolConfiguration(UIImage.SymbolConfiguration.init(scale: .medium))
        //        let config = UIImage.SymbolConfiguration(paletteColors: [.systemTeal, .systemGray])

//        let link = UILabel()
//        link.translatesAutoresizingMaskIntoConstraints = false
//
//        link.text = "github.com/bayanijulian"
//        link.textAlignment = NSTextAlignment.center
//        link.textColor = UIColor.label
//        link.font = UIFont.preferredFont(forTextStyle: UIFont.TextStyle.title3)
//
//        stack.addArrangedSubview(icon)
//        stack.addArrangedSubview(link)
        let view = UIView()
        view.translatesAutoresizingMaskIntoConstraints = false
        
        let margin = CGFloat(8)
        view.directionalLayoutMargins = NSDirectionalEdgeInsets(top: margin, leading: margin, bottom: margin, trailing: margin)
        
        let link = UILabel()
        link.translatesAutoresizingMaskIntoConstraints = false
        
        link.text = "github.com/bayanijulian"
        link.textAlignment = NSTextAlignment.left
        link.textColor = UIColor.label
        link.font = UIFont.preferredFont(forTextStyle: UIFont.TextStyle.title2)
        
        let config = UIImage.SymbolConfiguration(textStyle: .title1, scale: .medium)
        let attachment = NSTextAttachment()
        attachment.image = UIImage(named: "GitHubIcon")?.applyingSymbolConfiguration(config)?.withBaselineOffset(fromBottom: link.font.pointSize / 2)
//        attachment.image = UIImage(named: "GitHubIcon")?.applyingSymbolConfiguration(config)
        
        
        let imageString = NSMutableAttributedString(attachment: attachment)
//        imageString.setAttributes([NSAttributedString.Key.kern : 8], range: NSRange.init(location: 0, length: 1))
//        imageString.addAttribute(NSAttributedString.Key.kern, value: -8, range: NSRange.init(location: 0, length: 1))
        let textString = NSAttributedString(string: " github.com/bayanijulian")
        imageString.append(textString)
        imageString.addAttribute(NSAttributedString.Key.kern, value: 16, range: NSRange.init(location: 0, length: 2))
        
        link.attributedText = imageString
        
        link.sizeToFit()
//        attachment.image!
//        link.firstBaselineAnchor.constraint(equalTo: baselineImage!.).isActive = true
//        return stack
        view.addSubview(link)
        link.leadingAnchor.constraint(equalTo: view.layoutMarginsGuide.leadingAnchor).isActive = true
        link.trailingAnchor.constraint(equalTo: view.layoutMarginsGuide.trailingAnchor).isActive = true
        link.topAnchor.constraint(equalTo: view.layoutMarginsGuide.topAnchor).isActive = true
//        view.bottomAnchor.constraint(equalTo: view.layoutMarginsGuide.bottomAnchor).isActive = true
        view.heightAnchor.constraint(equalTo: link.heightAnchor, constant: 20).isActive = true
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
            mainStack.topAnchor.constraint(equalTo: self.view.safeAreaLayoutGuide.topAnchor),
            mainStack.leadingAnchor.constraint(equalTo: self.view.leadingAnchor, constant: 20),
            mainStack.trailingAnchor.constraint(equalTo: self.view.trailingAnchor, constant: -20),

            
            headerView.heightAnchor.constraint(equalTo: self.view.safeAreaLayoutGuide.heightAnchor, multiplier: 4/12),
            headerView.widthAnchor.constraint(equalTo: mainStack.widthAnchor),
            
            contactView.widthAnchor.constraint(equalTo: mainStack.widthAnchor),
//            contactView.heightAnchor.constraint(equalTo: self.view.safeAreaLayoutGuide.heightAnchor, multiplier: 4/12)
        ])
    }
}
