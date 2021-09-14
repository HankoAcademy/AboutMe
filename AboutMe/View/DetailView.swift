//
//  DetailView.swift
//  AboutMe
//
//  Created by Diana Ruiz-Olvera on 9/9/21.
//

import UIKit

class DetailView: UIView {
    
    let profileView: UIView = {
        let view = UIView()
        view.translatesAutoresizingMaskIntoConstraints = false
        view.backgroundColor = #colorLiteral(red: 0.1764705926, green: 0.4980392158, blue: 0.7568627596, alpha: 1)
        return view
    }()
            
    let profileImageView: UIImageView = {
        let imageName = "Diana"
        let profileImage = UIImage(#imageLiteral(resourceName: "Image"))
        let view = UIImageView(image: profileImage)
        view.translatesAutoresizingMaskIntoConstraints = false
        //view.frame = CGRect(x: 0, y: 0, width: 100, height: 100)
        return view
    }()
    
    let myNameLabel: UILabel = {
        let label = UILabel()
        label.translatesAutoresizingMaskIntoConstraints = false
        label.text = "Diana Ruiz"
        label.font = UIFont.systemFont(ofSize: 26, weight: .bold)
        label.textColor = .white
        return label
    }()
    
    let myPronounsLabel: UILabel = {
        let label = UILabel()
        label.translatesAutoresizingMaskIntoConstraints = false
        label.text = "she/her/hers"
        label.font = UIFont.systemFont(ofSize: 18)
        label.textColor = .systemGray3
        return label
    }()
    
    let twitterHandle: UILabel = {
        let label = UILabel()
        label.translatesAutoresizingMaskIntoConstraints = false
        label.text = "@paovox"
        label.textColor = .lightGray
        return label
    }()
    
    let twitterIconImageView: UIImageView = {
        let twitterIcon = UIImage(#imageLiteral(resourceName: "twitterIcon"))
        let view = UIImageView(image: twitterIcon)
        view.translatesAutoresizingMaskIntoConstraints = false
        return view
    }()
    
    let linkedInHandle: UILabel = {
        let label = UILabel()
        label.translatesAutoresizingMaskIntoConstraints = false
        label.text = "linkedin.com/in/drolvera/"
        label.textColor = .lightGray
        return label
    }()
    
    let linkedInIconImageView: UIImageView = {
        let linkedInIcon = UIImage(#imageLiteral(resourceName: "linkedin"))
        let view = UIImageView(image: linkedInIcon)
        view.translatesAutoresizingMaskIntoConstraints = false
        return view
    }()
    
    let socialsView: UIView = {
        let view = UIView()
        view.translatesAutoresizingMaskIntoConstraints = false
        view.backgroundColor = #colorLiteral(red: 0.9763863683, green: 0.9726029038, blue: 0.9489071965, alpha: 1)
        return view
    }()
    
    let socialPlatformStackView: UIStackView = {
        let stackView = UIStackView()
        stackView.translatesAutoresizingMaskIntoConstraints = false
        stackView.axis = .vertical
        stackView.alignment = .center
        stackView.distribution = .fillEqually
        stackView.spacing = 10
        return stackView
    }()

    let locationLabel: UILabel = {
       let label = UILabel()
        label.translatesAutoresizingMaskIntoConstraints = false
        label.font = UIFont.systemFont(ofSize: 18, weight: .bold)
        label.text = "📍 Boston, MA"
        label.textColor = .black
        return label
    }()
    
    let divider: UIView = {
        let view = UIView()
        view.translatesAutoresizingMaskIntoConstraints = false
        view.backgroundColor = .darkGray
        return view
    }()

    
    let favoritesView: UIStackView = {
        let stackView = UIStackView()
        stackView.translatesAutoresizingMaskIntoConstraints = false
        stackView.axis = .vertical
        stackView.alignment = .center
        stackView.distribution = .fillEqually
        stackView.spacing = 10
        stackView.backgroundColor = #colorLiteral(red: 0.9763863683, green: 0.9726029038, blue: 0.9489071965, alpha: 1)
        return stackView
    }()
    
    let hobbiesLabel: UILabel = {
       let label = UILabel()
        label.translatesAutoresizingMaskIntoConstraints = false
        label.text = "❤️ Running, Piano, Tai Chi and Astrology"
        label.font = UIFont.systemFont(ofSize: 14)
        label.textColor = .black
        return label
    }()
    
    let foodLabel: UILabel = {
       let label = UILabel()
        label.translatesAutoresizingMaskIntoConstraints = false
        label.text = "🍴 Mexican Food"
        label.font = UIFont.systemFont(ofSize: 14)
        label.textColor = .black
        return label
    }()
    
    let tvShowLabel: UILabel = {
       let label = UILabel()
        label.translatesAutoresizingMaskIntoConstraints = false
        label.text = "📺 Community"
        label.font = UIFont.systemFont(ofSize: 14)
        label.textColor = .black
        return label
    }()
    
    let iOSDevView: UIView = {
        let view = UIView()
        view.translatesAutoresizingMaskIntoConstraints = false
        view.backgroundColor = #colorLiteral(red: 0.9763863683, green: 0.9726029038, blue: 0.9489071965, alpha: 1)
        return view
    }()
    
    let iOSDevTitleLabel: UILabel = {
       let label = UILabel()
        label.translatesAutoresizingMaskIntoConstraints = false
        label.text = "I like iOS Development because..."
        label.font = UIFont.systemFont(ofSize: 18, weight: .bold)
        label.textColor = .black
        return label
    }()
    
    let iOSDevDescriptionLabel: UILabel = {
       let label = UILabel()
        label.translatesAutoresizingMaskIntoConstraints = false
        label.lineBreakMode = .byWordWrapping
        label.numberOfLines = 0
        label.preferredMaxLayoutWidth = 275
        label.font = UIFont.systemFont(ofSize: 12, weight: .regular)
        label.textColor = .darkGray
        label.text = """
        I became an Apple fan about 10 years ago when I bought my first iPhone. As I learned to use it, I quickly realized how much I loved the simplicity, friendliness and efficiency of its design.
            Once I decided to become a developer, I knew I wanted to dive into iOS and learn how to build fun, useful and life-changing iPhone apps.
        """
        return label
    }()
    
    let submitButton: UIButton = {
        let button = UIButton()
        button.translatesAutoresizingMaskIntoConstraints = false
        button.setTitle("Say Hola! 🙋🏽‍♀️", for: .normal)
        button.backgroundColor = #colorLiteral(red: 0.4311548769, green: 0.8392546177, blue: 0.1019241288, alpha: 1)
        button.layer.cornerRadius = 20
        button.sizeToFit()
        return button
    }()
    
    init() {
        super.init(frame: .zero)
        setUpUI()
    }
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    private func setUpUI() {
        setUpProfileView()
        setUpSocialsView()
        addFavoriteThingsView()
        addiOSDevView()
        addSubmitButton()
    }
    
    private func setUpProfileView() {
        addSubview(profileView)
        NSLayoutConstraint.activate([
            profileView.topAnchor.constraint(equalTo: safeAreaLayoutGuide.topAnchor, constant: 10),
            profileView.leadingAnchor.constraint(equalTo: leadingAnchor, constant: 30),
            profileView.trailingAnchor.constraint(equalTo: trailingAnchor, constant: -30),
            profileView.heightAnchor.constraint(equalTo: heightAnchor, multiplier: 1/3),
        ])
        
        profileView.addSubview(profileImageView)
        profileView.bringSubviewToFront(profileImageView)
        NSLayoutConstraint.activate([
            profileImageView.topAnchor.constraint(equalTo: profileView.topAnchor, constant: 20),
            profileImageView.leadingAnchor.constraint(equalTo: profileView.leadingAnchor, constant: 65),
            profileImageView.trailingAnchor.constraint(equalTo: profileView.trailingAnchor, constant: -65),
            profileImageView.bottomAnchor.constraint(equalTo: profileView.bottomAnchor, constant: -65)
        ])
        
        profileView.addSubview(myNameLabel)
        NSLayoutConstraint.activate([
            myNameLabel.centerXAnchor.constraint(equalTo: profileImageView.centerXAnchor),
            myNameLabel.centerYAnchor.constraint(equalTo: profileImageView.bottomAnchor, constant: 20)
        ])
        
        profileView.addSubview(myPronounsLabel)
        NSLayoutConstraint.activate([
            myPronounsLabel.centerXAnchor.constraint(equalTo: profileImageView.centerXAnchor),
            myPronounsLabel.centerYAnchor.constraint(equalTo: myNameLabel.bottomAnchor, constant: 10)
        ])
        
    }
    
    private func setUpSocialsView() {

        addSubview(socialsView)
        
        NSLayoutConstraint.activate([
            socialsView.topAnchor.constraint(equalTo: profileView.bottomAnchor, constant: 15),
            socialsView.leadingAnchor.constraint(equalTo: profileView.leadingAnchor),
            socialsView.trailingAnchor.constraint(equalTo: profileView.trailingAnchor),
            socialsView.heightAnchor.constraint(equalToConstant: 115)
            ])
        
        addLocationView()
        addDivider()
        addSocialPlatformsView()
    }
    
    private func addLocationView() {

        socialsView.addSubview(locationLabel)
        
        NSLayoutConstraint.activate([
            locationLabel.topAnchor.constraint(equalTo: socialsView.topAnchor, constant: 8),
            locationLabel.leadingAnchor.constraint(equalTo: socialsView.leadingAnchor, constant: 10)
            ])
    }
    
    private func addDivider() {

        socialsView.addSubview(divider)
        
        NSLayoutConstraint.activate([
            divider.topAnchor.constraint(equalTo: locationLabel.bottomAnchor, constant: 8),
            divider.leadingAnchor.constraint(equalTo: socialsView.leadingAnchor),
            divider.trailingAnchor.constraint(equalTo: socialsView.trailingAnchor),
            divider.heightAnchor.constraint(equalToConstant: 2)
            ])
    }
    
    private func addSocialPlatformsView() {

        socialsView.addSubview(socialPlatformStackView)
        
        NSLayoutConstraint.activate([
            socialPlatformStackView.topAnchor.constraint(equalTo: divider.bottomAnchor, constant: 4),
            socialPlatformStackView.leadingAnchor.constraint(equalTo: divider.leadingAnchor, constant: 20)
            ])
        
        socialPlatformStackView.addArrangedSubview(twitterIconImageView)
        socialPlatformStackView.bringSubviewToFront(twitterIconImageView)
        socialPlatformStackView.addArrangedSubview(twitterHandle)
        
        socialPlatformStackView.addArrangedSubview(linkedInIconImageView)
        socialPlatformStackView.bringSubviewToFront(linkedInIconImageView)
        socialPlatformStackView.addArrangedSubview(linkedInHandle)
        
        NSLayoutConstraint.activate([
            twitterIconImageView.topAnchor.constraint(equalTo: divider.bottomAnchor, constant: 8),
            twitterIconImageView.leadingAnchor.constraint(equalTo: divider.leadingAnchor, constant: 12),
            twitterIconImageView.widthAnchor.constraint(equalTo: widthAnchor, multiplier: 0.07, constant: 5),
            twitterIconImageView.heightAnchor.constraint(equalTo: heightAnchor, multiplier: 0.03, constant: 5),
            //twitterIconImageView.heightAnchor.constraint(equalToConstant: 25),
            
            twitterHandle.topAnchor.constraint(equalTo: divider.bottomAnchor, constant: 8),
            twitterHandle.leadingAnchor.constraint(equalTo: twitterIconImageView.leadingAnchor, constant: 45),
            twitterHandle.trailingAnchor.constraint(equalTo: divider.trailingAnchor, constant: 0),
            
            linkedInIconImageView.topAnchor.constraint(equalTo: divider.bottomAnchor, constant: 40),
            linkedInIconImageView.leadingAnchor.constraint(equalTo: divider.leadingAnchor, constant: 12),
            linkedInIconImageView.widthAnchor.constraint(equalTo: widthAnchor, multiplier: 0.075, constant: 5),
            linkedInIconImageView.heightAnchor.constraint(equalTo: heightAnchor, multiplier: 0.035, constant: 5),
            
            linkedInHandle.topAnchor.constraint(equalTo: divider.bottomAnchor, constant: 40),
            linkedInHandle.leadingAnchor.constraint(equalTo: linkedInIconImageView.leadingAnchor, constant: 45),
            linkedInHandle.trailingAnchor.constraint(equalTo: divider.trailingAnchor, constant: 0),
            linkedInHandle.bottomAnchor.constraint(equalTo: socialsView.bottomAnchor, constant: -8),

            ])
    }
    
    private func addFavoriteThingsView() {

        addSubview(favoritesView)
        
        NSLayoutConstraint.activate([
            favoritesView.topAnchor.constraint(equalTo: socialsView.bottomAnchor, constant: 15),
            favoritesView.leadingAnchor.constraint(equalTo: socialsView.leadingAnchor),
            favoritesView.trailingAnchor.constraint(equalTo: socialsView.trailingAnchor),
            favoritesView.heightAnchor.constraint(equalToConstant: 75)
            ])
        
        favoritesView.addArrangedSubview(hobbiesLabel)
        favoritesView.addArrangedSubview(foodLabel)
        favoritesView.addArrangedSubview(tvShowLabel)
        
        NSLayoutConstraint.activate([
            hobbiesLabel.topAnchor.constraint(equalTo: favoritesView.topAnchor, constant: 5),
            hobbiesLabel.leadingAnchor.constraint(equalTo: divider.leadingAnchor, constant: 12),
            hobbiesLabel.bottomAnchor.constraint(equalTo: foodLabel.topAnchor, constant: -2),

            foodLabel.topAnchor.constraint(equalTo: hobbiesLabel.bottomAnchor, constant: 2),
            foodLabel.leadingAnchor.constraint(equalTo: divider.leadingAnchor, constant: 12),
            
            tvShowLabel.topAnchor.constraint(equalTo: hobbiesLabel.bottomAnchor, constant: 2),
            tvShowLabel.leadingAnchor.constraint(equalTo: foodLabel.leadingAnchor, constant: 150),
            tvShowLabel.trailingAnchor.constraint(equalTo: favoritesView.trailingAnchor, constant: 0),
            tvShowLabel.bottomAnchor.constraint(equalTo: favoritesView.bottomAnchor, constant: 10)
            ])
        
    }
    
    private func addiOSDevView() {

        addSubview(iOSDevView)
        
        NSLayoutConstraint.activate([
            iOSDevView.topAnchor.constraint(equalTo: favoritesView.bottomAnchor, constant: 15),
            iOSDevView.leadingAnchor.constraint(equalTo: favoritesView.leadingAnchor),
            iOSDevView.trailingAnchor.constraint(equalTo: favoritesView.trailingAnchor),
            iOSDevView.heightAnchor.constraint(equalToConstant: 155)
            ])
        
        iOSDevView.addSubview(iOSDevTitleLabel)
        iOSDevTitleLabel.addSubview(iOSDevDescriptionLabel)
        
        NSLayoutConstraint.activate([
            iOSDevTitleLabel.topAnchor.constraint(equalTo: iOSDevView.topAnchor, constant: 10),
            iOSDevTitleLabel.leadingAnchor.constraint(equalTo: iOSDevView.leadingAnchor, constant: 12),
            
            iOSDevDescriptionLabel.topAnchor.constraint(equalTo: iOSDevTitleLabel.bottomAnchor, constant: 0),
            iOSDevDescriptionLabel.leadingAnchor.constraint(equalTo: iOSDevTitleLabel.leadingAnchor, constant: 0),
            iOSDevDescriptionLabel.bottomAnchor.constraint(equalTo: iOSDevView.bottomAnchor, constant: -5)
        
            ])
    }
    
    private func addSubmitButton() {
        
        addSubview(submitButton)
        
        NSLayoutConstraint.activate([
            submitButton.leadingAnchor.constraint(equalTo: leadingAnchor, constant: 100),
            submitButton.bottomAnchor.constraint(equalTo: safeAreaLayoutGuide.bottomAnchor, constant: -10),
            submitButton.trailingAnchor.constraint(equalTo: trailingAnchor,constant: -100),
            submitButton.heightAnchor.constraint(equalToConstant: 45)
        ])
    }
    
}
