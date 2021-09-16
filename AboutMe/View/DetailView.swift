//
//  DetailView.swift
//  AboutMe
//
//  Created by Diana Ruiz-Olvera on 9/9/21.
//

import UIKit

class DetailView: UIView {
    
    let myProfileView: ProfileWithNameAndImageView = {
        let myProfileView = ProfileWithNameAndImageView()
        myProfileView.translatesAutoresizingMaskIntoConstraints = false
        myProfileView.updateName(newName: "Diana Ruiz-Olvera")
        myProfileView.updatePronouns(newPronouns: "she/her/hers")
        return myProfileView
    }()
    
    let mySocialsView: LocationAndSocialPlatformsView = {
        let mySocialsView = LocationAndSocialPlatformsView()
        mySocialsView.translatesAutoresizingMaskIntoConstraints = false
        mySocialsView.updateTwitterHandle(newHandle: "@drolvera")
        return mySocialsView
    }()
    
    let myFavoritesView: FavoritesView = {
        let myFavoritesView = FavoritesView()
        myFavoritesView.translatesAutoresizingMaskIntoConstraints = false
        myFavoritesView.updateHobbies(newHobbies: "❤️ Running, Piano, Tai Chi and Astrology")
        myFavoritesView.updateFood(newFood: "🍴 Mexican Food")
        myFavoritesView.updateTVshow(newShow: "📺 Community")
        return myFavoritesView
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
    
    let sayHiButton: ThemeButton = {
        let button = ThemeButton()
        button.translatesAutoresizingMaskIntoConstraints = false
        button.update(buttonTitle: "Hey Space Ranger! 👩🏽‍🚀" )
        button.roundCorners(radius: 20)
        button.isEnabled = true
        button.sizeToFit()
        button.addTarget(self, action: #selector(buttonTapped), for: .touchUpInside)
        return button
    }()
    
    var buttonAction: (() -> Void)?
    
    init(buttonAction: @escaping () -> Void, frame: CGRect = .zero) {
        self.buttonAction = buttonAction
        super.init(frame: frame)
        
        setUpUI()
    }
    
//    init() {
//        super.init(frame: .zero)
//        setUpUI()
//    }
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    private func setUpUI() {
        setUpProfileView()
        setUpSocialsView()
        addFavoriteThingsView()
        addiOSDevView()
        addSayHiButton()
    }
    
    private func setUpProfileView() {
        addSubview(myProfileView)
        
        NSLayoutConstraint.activate([
            myProfileView.topAnchor.constraint(equalTo: safeAreaLayoutGuide.topAnchor, constant: 0),
            myProfileView.leadingAnchor.constraint(equalTo: leadingAnchor, constant: 30),
            myProfileView.trailingAnchor.constraint(equalTo: trailingAnchor, constant: -30),
            myProfileView.heightAnchor.constraint(equalTo: heightAnchor, multiplier: 1/3, constant: 1)
        ])
    }
    
    private func setUpSocialsView() {

        addSubview(mySocialsView)
        
        NSLayoutConstraint.activate([
            mySocialsView.topAnchor.constraint(equalTo: myProfileView.bottomAnchor, constant: 25),
            mySocialsView.leadingAnchor.constraint(equalTo: myProfileView.leadingAnchor),
            mySocialsView.trailingAnchor.constraint(equalTo: myProfileView.trailingAnchor),
            mySocialsView.heightAnchor.constraint(equalToConstant: 115)
            ])
        
    }
    
    private func addFavoriteThingsView() {

        addSubview(myFavoritesView)
        
        NSLayoutConstraint.activate([
            myFavoritesView.topAnchor.constraint(equalTo: mySocialsView.bottomAnchor, constant: 5),
            myFavoritesView.leadingAnchor.constraint(equalTo: mySocialsView.leadingAnchor),
            myFavoritesView.trailingAnchor.constraint(equalTo: mySocialsView.trailingAnchor),
            myFavoritesView.heightAnchor.constraint(equalToConstant: 75)
            ])
    }
    
    private func addiOSDevView() {

        addSubview(iOSDevView)
        
        NSLayoutConstraint.activate([
            iOSDevView.topAnchor.constraint(equalTo: myFavoritesView.bottomAnchor, constant: 8),
            iOSDevView.leadingAnchor.constraint(equalTo: myFavoritesView.leadingAnchor),
            iOSDevView.trailingAnchor.constraint(equalTo: myFavoritesView.trailingAnchor),
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
    
    private func addSayHiButton() {
        
        addSubview(sayHiButton)
        
        NSLayoutConstraint.activate([
            sayHiButton.topAnchor.constraint(equalTo: iOSDevView.bottomAnchor, constant: 20),
            sayHiButton.leadingAnchor.constraint(equalTo: leadingAnchor, constant: 70),
            sayHiButton.trailingAnchor.constraint(equalTo: trailingAnchor,constant: -70),
            sayHiButton.bottomAnchor.constraint(equalTo: bottomAnchor, constant: -25),
            sayHiButton.heightAnchor.constraint(equalToConstant: 45)
        ])
    }
    
    @objc func buttonTapped() {
        print("Button tapped")
        buttonAction?()
    }
    
}
