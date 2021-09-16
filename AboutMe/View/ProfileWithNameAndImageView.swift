//
//  ProfileWithNameAndImageView.swift
//  AboutMe
//
//  Created by Diana Ruiz-Olvera on 9/16/21.
//

import UIKit
import Foundation

class ProfileWithNameAndImageView: UIView {
    
    let profileView: UIView = {
        let view = UIView()
        view.translatesAutoresizingMaskIntoConstraints = false
        view.backgroundColor = #colorLiteral(red: 0.1764705926, green: 0.4980392158, blue: 0.7568627596, alpha: 1)
        return view
    }()
            
    let profileImageView: UIImageView = {
        let profileImage = UIImage(#imageLiteral(resourceName: "Image"))
        let view = UIImageView(image: profileImage)
        view.translatesAutoresizingMaskIntoConstraints = false
        return view
    }()
    
    let nameLabel: UILabel = {
        let label = UILabel()
        label.translatesAutoresizingMaskIntoConstraints = false
        label.text = "Placeholder"
        label.font = UIFont.systemFont(ofSize: 26, weight: .bold)
        label.textColor = .white
        return label
    }()
    
    let pronounsLabel: UILabel = {
        let label = UILabel()
        label.translatesAutoresizingMaskIntoConstraints = false
        label.text = "Placeholder"
        label.font = UIFont.systemFont(ofSize: 18)
        label.textColor = .systemGray3
        return label
    }()
    
    override init (frame: CGRect) {
        super.init(frame: frame)
        
        setUpUI()
    }
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    func updateName(newName: String) {
        nameLabel.text = newName
    }
    
    func updatePronouns(newPronouns: String) {
        pronounsLabel.text = newPronouns
    }
    
    private func setUpUI() {
        
        addSubview(profileView)
        NSLayoutConstraint.activate([
            profileView.topAnchor.constraint(equalTo: safeAreaLayoutGuide.topAnchor, constant: 10),
            profileView.leadingAnchor.constraint(equalTo: leadingAnchor, constant: 0),
            profileView.trailingAnchor.constraint(equalTo: trailingAnchor, constant: 0),
            profileView.heightAnchor.constraint(equalToConstant: 275),
        ])
        
        profileView.addSubview(profileImageView)
        profileView.bringSubviewToFront(profileImageView)
        NSLayoutConstraint.activate([
            profileImageView.topAnchor.constraint(equalTo: profileView.topAnchor, constant: 20),
            profileImageView.leadingAnchor.constraint(equalTo: profileView.leadingAnchor, constant: 65),
            profileImageView.trailingAnchor.constraint(equalTo: profileView.trailingAnchor, constant: -65),
            profileImageView.bottomAnchor.constraint(equalTo: profileView.bottomAnchor, constant: -65)
        ])
        
        profileView.addSubview(nameLabel)
        NSLayoutConstraint.activate([
            nameLabel.centerXAnchor.constraint(equalTo: profileImageView.centerXAnchor),
            nameLabel.centerYAnchor.constraint(equalTo: profileImageView.bottomAnchor, constant: 20)
        ])
        
        profileView.addSubview(pronounsLabel)
        NSLayoutConstraint.activate([
            pronounsLabel.centerXAnchor.constraint(equalTo: profileImageView.centerXAnchor),
            pronounsLabel.centerYAnchor.constraint(equalTo: nameLabel.bottomAnchor, constant: 10)
        ])
        
    }
}

