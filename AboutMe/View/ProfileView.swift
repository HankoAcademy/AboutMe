//
//  ProfileView.swift
//  AboutMe
//
//  Created by Victoria Park on 9/11/21.
//

import UIKit

class ProfileView: UIView {
    let stackView:UIStackView = {
        let sView = UIStackView()
        sView.axis = .vertical
        sView.distribution = .fillProportionally
        sView.alignment = .center
        sView.spacing = 10
        return sView
    }()
    let profileImageView:UIImageView = {
        let imageView = UIImageView()
        imageView.translatesAutoresizingMaskIntoConstraints = false
        imageView.contentMode = .scaleAspectFit
        
        imageView.image = UIImage(named:"Victoria")
        return imageView
    }()
    let descriptionStack:UIStackView = {
        let stackView = UIStackView()
        stackView.translatesAutoresizingMaskIntoConstraints = false
        stackView.axis = .vertical
        stackView.distribution = .fillProportionally
        stackView.spacing = 0
        return stackView
    }()
    let nameLabel: UILabel = {
        let label = UILabel()
        label.translatesAutoresizingMaskIntoConstraints = false
        label.text = "Victoria Park"
        label.font = UIFont.systemFont(ofSize: 24,weight: .bold)
        label.textColor = .white
        label.textAlignment = .center
        return label
    }()
    let pronounsLabel:UILabel = {
        let label = UILabel()
        label.translatesAutoresizingMaskIntoConstraints = false
        label.text = "She/Her/Hers"
        label.textAlignment = .center
        label.font = UIFont.systemFont(ofSize: 18,weight: .semibold)
        label.textColor = .gray
        return label
    }()
    
    override init(frame: CGRect) {
        super.init(frame:frame)
        print("profile view being laid out")
        setUpUI()
    }
    
    required init?(coder: NSCoder) {
        super.init(coder: coder)
        fatalError("init(coder:) has not been implemented")
    }
    
    private func setUpUI(){
       
        stackView.translatesAutoresizingMaskIntoConstraints = false
        self.addSubview(stackView)
        NSLayoutConstraint.activate([
            profileImageView.heightAnchor.constraint(equalToConstant: 130),
            profileImageView.widthAnchor.constraint(equalToConstant: 130)
                                        ])
        descriptionStack.addArrangedSubview(nameLabel)
        descriptionStack.addArrangedSubview(pronounsLabel)
        stackView.addArrangedSubview(profileImageView)
        stackView.addArrangedSubview(descriptionStack)
        
        NSLayoutConstraint.activate([
            stackView.topAnchor.constraint(equalTo:self.topAnchor,constant: 20),
            stackView.centerXAnchor.constraint(equalTo: self.centerXAnchor),
            stackView.bottomAnchor.constraint(equalTo: self.bottomAnchor, constant: -10)
        ])
    }
    
}
