//
//  ContactView.swift
//  AboutMe
//
//  Created by Victoria Park on 9/11/21.
//

import UIKit

class ContactView: UIView {
    let cityLabel:UILabel = {
        let label = UILabel()
        label.translatesAutoresizingMaskIntoConstraints = false
        label.text = "📍 Irvine, CA"
        label.textAlignment = .left
        label.font = UIFont.systemFont(ofSize: 22,weight:.bold)
        label.textColor = .black
        return label
    }()
    let twitterStack:UIStackView = {
        let stackView = UIStackView()
        stackView.translatesAutoresizingMaskIntoConstraints = false
        stackView.axis = .horizontal
        stackView.distribution = .fillProportionally
        stackView.spacing = 10
        return stackView
    }()
    let twitterImageView:UIImageView = {
        let imageView = UIImageView()
        let image = UIImage(named:"twitterLogo")
        imageView.translatesAutoresizingMaskIntoConstraints = false
        imageView.image = image
        imageView.contentMode = .scaleAspectFit
        
        return imageView
    }()
    let twitterLabel:UILabel = {
        let label = UILabel()
        label.translatesAutoresizingMaskIntoConstraints = false
        label.text = "@VicDevPiano"
        label.font = UIFont.systemFont(ofSize: 20)
        label.textAlignment = .left
        label.textColor = .gray
        return label
    }()
    let linkedInStack:UIStackView = {
        let stackView = UIStackView()
        stackView.translatesAutoresizingMaskIntoConstraints = false
        stackView.axis = .horizontal
        stackView.distribution = .fillProportionally
        stackView.spacing = 10
        return stackView
    }()
    let linkedInImageView:UIImageView = {
        let imageView = UIImageView()
        let image = UIImage(named:"linkedInIcon")
        imageView.translatesAutoresizingMaskIntoConstraints = false
        imageView.image = image
        imageView.contentMode = .scaleAspectFit
        
        return imageView
    }()
    let linkedInLabel:UILabel = {
        let label = UILabel()
        label.translatesAutoresizingMaskIntoConstraints = false
        let text = "linkedin.com/in/victoria-park-9a142542"
        label.text = text
        label.adjustsFontSizeToFitWidth = true
        label.font = UIFont.systemFont(ofSize: 20)
        label.textAlignment = .left
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
        
         self.addSubview(cityLabel)
         NSLayoutConstraint.activate([
             cityLabel.leadingAnchor.constraint(equalTo: self.leadingAnchor, constant: 10),
             cityLabel.topAnchor.constraint(equalTo: self.topAnchor, constant: 15)
         ])
         
         self.addSubview(twitterStack)
         
         NSLayoutConstraint.activate([
             twitterImageView.widthAnchor.constraint(equalToConstant:30),
             twitterImageView.heightAnchor.constraint(equalToConstant: 30),
             linkedInImageView.widthAnchor.constraint(equalToConstant: 30),
             linkedInImageView.heightAnchor.constraint(equalToConstant: 30)
         ])
  
         twitterStack.addArrangedSubview(twitterImageView)
         twitterStack.addArrangedSubview(twitterLabel)
         
         NSLayoutConstraint.activate([
             twitterStack.leadingAnchor.constraint(equalTo: self.leadingAnchor, constant: 10),
             twitterStack.trailingAnchor.constraint(equalTo: self.trailingAnchor, constant: -10),
             twitterStack.topAnchor.constraint(equalTo: cityLabel.bottomAnchor, constant: 10)
          ])
         
         self.addSubview(linkedInStack)
         linkedInStack.addArrangedSubview(linkedInImageView)
         linkedInStack.addArrangedSubview(linkedInLabel)
         
         NSLayoutConstraint.activate([
             linkedInStack.leadingAnchor.constraint(equalTo: self.leadingAnchor, constant: 10),
             linkedInStack.trailingAnchor.constraint(equalTo: self.trailingAnchor, constant: -10),
             linkedInStack.topAnchor.constraint(equalTo: twitterStack.bottomAnchor, constant: 10)
          ])
     }

}

