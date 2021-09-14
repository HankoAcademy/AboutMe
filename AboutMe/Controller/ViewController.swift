//
//  AboutMeVC.swift
//  AboutMe
//
//  Created by Mutlu Aydın on 9/2/21.
//

import UIKit

class AboutMeVC: UIViewController {
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        view.backgroundColor = .systemBackground
        
        aStack()
        bStack()
        cStack()
        dStack()
        sayHiButton()

    }
    
    // Mark: First Stack
    
    func aStack () {
             
        let imageView = UIImageView(image: UIImage(named: "profile"))
        imageView.translatesAutoresizingMaskIntoConstraints = false
        imageView.contentMode = .scaleAspectFit
        
        let nameLabel = makeLabel(withText: "Mutlu Aydin")
        nameLabel.font = UIFont.systemFont(ofSize: 20, weight: .bold)
        nameLabel.textColor = .white
        nameLabel.textAlignment = .center
        
        let pronounceLabel = makeLabel(withText: "he/him/his")
        pronounceLabel.font = UIFont.systemFont(ofSize: 20, weight: .semibold)
        pronounceLabel.textColor = .gray
        pronounceLabel.textAlignment = .center
        
        let pronounceStackView = UIStackView(arrangedSubviews: [pronounceLabel])
        pronounceStackView.translatesAutoresizingMaskIntoConstraints = false
        pronounceStackView.spacing = 10
        
        let aStackView = UIStackView(arrangedSubviews: [imageView, nameLabel, pronounceStackView])
        aStackView.translatesAutoresizingMaskIntoConstraints = false
        aStackView.backgroundColor = .imageColor
        aStackView.axis = .vertical
        aStackView.spacing = 10
        
        view.addSubview(aStackView)
        
        NSLayoutConstraint.activate([
        
            // Mark: First stackview constraints
            aStackView.widthAnchor.constraint(equalToConstant: view.frame.width*0.85),
            aStackView.heightAnchor.constraint(equalToConstant: 300),
            aStackView.centerXAnchor.constraint(equalTo: view.centerXAnchor, constant: 0),
            aStackView.topAnchor.constraint(equalTo: view.safeAreaLayoutGuide.topAnchor, constant: 0),

            // Mark: First stackview image constraints
            imageView.topAnchor.constraint(equalTo: aStackView.topAnchor , constant: 10),
            imageView.bottomAnchor.constraint(equalTo: aStackView.bottomAnchor, constant: -100),
            
            // Mark: First stackview pronounce label constraints
            nameLabel.topAnchor.constraint(equalTo: aStackView.topAnchor, constant: 210),
            nameLabel.bottomAnchor.constraint(equalTo: aStackView.bottomAnchor, constant: -60),
            
            // Mark: First stackview pronounce label constraints
            pronounceLabel.topAnchor.constraint(equalTo: aStackView.topAnchor, constant: 240),
            pronounceLabel.bottomAnchor.constraint(equalTo: aStackView.bottomAnchor, constant: -20)
        
        ])
    }
    
    // Mark: Second Stack
    
    func bStack () {
        
        // Mark: Location Stack
        let locationImageView = UIImageView(image: UIImage(systemName: "mappin"))
        locationImageView.tintColor = .red
        locationImageView.translatesAutoresizingMaskIntoConstraints = false
        locationImageView.contentMode = .center
             
        let locationLabel = makeLabel(withText: "Pasadene, CA")
        locationLabel.font = UIFont.systemFont(ofSize: 15, weight: .regular)
        locationLabel.textColor = .gray
        locationLabel.textAlignment = .left

        let secondFirstStack = UIStackView(arrangedSubviews: [locationImageView,locationLabel])
        secondFirstStack.translatesAutoresizingMaskIntoConstraints = false
        secondFirstStack.axis = .horizontal
        
        let separatorView = UIStackView(frame: CGRect(x: 0, y: 0, width: 0, height: 0))
        separatorView.backgroundColor = UIColor.black
        separatorView.translatesAutoresizingMaskIntoConstraints  = false
       

        // Mark: Twitter Stack
        let twitterImageView = UIImageView(image: UIImage(named: "twitter_logo"))
        twitterImageView.translatesAutoresizingMaskIntoConstraints = false
        twitterImageView.contentMode = .scaleAspectFit
        
             
        let twitterLabel = makeLabel(withText: " @mutluaydin")
        twitterLabel.font = UIFont.systemFont(ofSize: 15, weight: .regular)
        twitterLabel.textColor = .gray
        twitterLabel.textAlignment = .left
        
        let secondSecondStack = UIStackView(arrangedSubviews: [twitterImageView,twitterLabel])
        secondSecondStack.translatesAutoresizingMaskIntoConstraints = false
        secondSecondStack.axis = .horizontal
        
        // Mark: Linkedin Stack
        let linkedinImageView = UIImageView(image: UIImage(named: "LinkedIn_logo_initials"))
        linkedinImageView.translatesAutoresizingMaskIntoConstraints = false
        linkedinImageView.contentMode = .scaleAspectFit
             
        let linkedinLabel = makeLabel(withText: " https://www.linkedin.com/in/mutluaydin/")
        linkedinLabel.font = UIFont.systemFont(ofSize: 15, weight: .regular)
        linkedinLabel.textColor = .gray
        linkedinLabel.textAlignment = .left
        
        let secondThirdStack = UIStackView(arrangedSubviews: [linkedinImageView,linkedinLabel])
        secondThirdStack.translatesAutoresizingMaskIntoConstraints = false
        secondThirdStack.axis = .horizontal
        
        let bStackView = UIStackView(arrangedSubviews: [secondFirstStack, secondSecondStack, secondThirdStack])
        bStackView.translatesAutoresizingMaskIntoConstraints = false
        bStackView.backgroundColor = .grayish
        bStackView.axis = .vertical
        bStackView.alignment = .leading
    
        bStackView.addSubview(secondFirstStack)
        bStackView.addSubview(secondSecondStack)
        bStackView.addSubview(secondThirdStack)
        
        
        view.addSubview(bStackView)
        
        secondFirstStack.addSubview(separatorView)

        NSLayoutConstraint.activate([
           separatorView.leadingAnchor.constraint(equalTo:bStackView.leadingAnchor),
           separatorView.trailingAnchor.constraint(equalTo:bStackView.trailingAnchor),
           separatorView.heightAnchor.constraint(equalToConstant:2),
           separatorView.bottomAnchor.constraint(equalTo:secondFirstStack.bottomAnchor)
           ])
        
        NSLayoutConstraint.activate([
        
            // Mark: Second stackview constraints
            bStackView.widthAnchor.constraint(equalToConstant: view.frame.width*0.85),
            bStackView.heightAnchor.constraint(equalToConstant: 100),
            bStackView.centerXAnchor.constraint(equalTo: view.centerXAnchor, constant: 0),
            bStackView.topAnchor.constraint(equalTo: view.safeAreaLayoutGuide.topAnchor, constant: 320),

            // Mark: secondFirstStack constraints
            locationImageView.leadingAnchor.constraint(equalTo: secondFirstStack.leadingAnchor, constant: 15),
            locationImageView.widthAnchor.constraint(equalToConstant: 30),

            secondFirstStack.topAnchor.constraint(equalTo: bStackView.topAnchor, constant: 0),
            secondFirstStack.bottomAnchor.constraint(equalTo: bStackView.bottomAnchor, constant: -67),
            
            // Mark: secondSecondStack constraints
            twitterImageView.leadingAnchor.constraint(equalTo: secondSecondStack.leadingAnchor, constant: 15),
            twitterImageView.widthAnchor.constraint(equalToConstant: 30),

            secondSecondStack.topAnchor.constraint(equalTo: bStackView.topAnchor, constant: 33),
            secondSecondStack.bottomAnchor.constraint(equalTo: bStackView.bottomAnchor, constant: -33),
            
            // Mark: secondThirdStack constraints
            linkedinImageView.leadingAnchor.constraint(equalTo: secondThirdStack.leadingAnchor, constant: 15),
            linkedinImageView.widthAnchor.constraint(equalToConstant: 30),
            
            secondThirdStack.topAnchor.constraint(equalTo: bStackView.topAnchor, constant: 66)
            
        ])
    }
    
  
    
    // Mark: Second Stack
    
    func cStack () {
        
        // Mark: Location Stack
        let favoritesImageView = UIImageView(image: UIImage(systemName: "heart.fill"))
        favoritesImageView.tintColor = .red
        favoritesImageView.translatesAutoresizingMaskIntoConstraints = false
        favoritesImageView.contentMode = .center
             
        let favoritesLabel = makeLabel(withText: "Pasadene, CA")
        favoritesLabel.font = UIFont.systemFont(ofSize: 15, weight: .regular)
        favoritesLabel.textColor = .gray
        favoritesLabel.textAlignment = .left
        
        let firstStack = UIStackView(arrangedSubviews: [favoritesImageView,favoritesLabel])
        firstStack.translatesAutoresizingMaskIntoConstraints = false
        firstStack.axis = .horizontal
        
        // Mark: Food Stack
        let foodImageView = UIImageView(image: UIImage(systemName: "flame"))
        foodImageView.translatesAutoresizingMaskIntoConstraints = false
        foodImageView.contentMode = .center
        
        let foodLabel = makeLabel(withText: "Pizza, Salads")
        foodLabel.font = UIFont.systemFont(ofSize: 15, weight: .regular)
        foodLabel.textColor = .gray
        foodLabel.textAlignment = .left
        
        let secondStack = UIStackView(arrangedSubviews: [foodImageView,foodLabel])
        secondStack.translatesAutoresizingMaskIntoConstraints = false
        secondStack.axis = .horizontal
        
        // Mark: TV Stack
        let tvImageView = UIImageView(image: UIImage(systemName: "film" ))
        tvImageView.translatesAutoresizingMaskIntoConstraints = false
        tvImageView.contentMode = .center
             
        let tvLabel = makeLabel(withText: "The Office, Friends")
        tvLabel.font = UIFont.systemFont(ofSize: 15, weight: .regular)
        tvLabel.textColor = .gray
        tvLabel.textAlignment = .right
        
        let thirdStack = UIStackView(arrangedSubviews: [tvImageView,tvLabel])
        thirdStack.translatesAutoresizingMaskIntoConstraints = false
        thirdStack.axis = .horizontal
        
        let bAndCStackView = UIStackView(arrangedSubviews: [secondStack, thirdStack])
        bAndCStackView.translatesAutoresizingMaskIntoConstraints = false
        bAndCStackView.axis = .horizontal
        
        let cStackView = UIStackView(arrangedSubviews: [firstStack, bAndCStackView])
        cStackView.translatesAutoresizingMaskIntoConstraints = false
        cStackView.backgroundColor = .grayish
        cStackView.axis = .vertical
        cStackView.alignment = .leading
                    
        view.addSubview(cStackView)
        
        cStackView.addSubview(firstStack)
        cStackView.addSubview(bAndCStackView)

        NSLayoutConstraint.activate([
        
            // Mark: Second stackview constraints
            cStackView.widthAnchor.constraint(equalToConstant: view.frame.width*0.85),
            cStackView.heightAnchor.constraint(equalToConstant: 60),
            cStackView.centerXAnchor.constraint(equalTo: view.centerXAnchor, constant: 0),
            cStackView.topAnchor.constraint(equalTo: view.safeAreaLayoutGuide.topAnchor, constant: 440),

            // Mark: frstStack constraints
            favoritesImageView.leadingAnchor.constraint(equalTo: firstStack.leadingAnchor, constant: 0),
            favoritesImageView.widthAnchor.constraint(equalToConstant: 30),

            firstStack.topAnchor.constraint(equalTo: cStackView.topAnchor, constant: 0),
            firstStack.bottomAnchor.constraint(equalTo: cStackView.bottomAnchor, constant: -30),
                    
            // Mark: secondStack constraints
            foodImageView.leadingAnchor.constraint(equalTo: bAndCStackView.leadingAnchor, constant: 0),
            foodImageView.widthAnchor.constraint(equalToConstant: 30),
            
            foodLabel.rightAnchor.constraint(equalTo: secondStack.rightAnchor, constant: 0),

            secondStack.leadingAnchor.constraint(equalTo: bAndCStackView.leadingAnchor, constant: 0),
            
            // Mark: thirdStack constraints
            tvImageView.leadingAnchor.constraint(equalTo: thirdStack.leadingAnchor, constant: 0),
            tvImageView.widthAnchor.constraint(equalToConstant: 30),
            
            thirdStack.trailingAnchor.constraint(equalTo: bAndCStackView.trailingAnchor, constant: 0),
            
            bAndCStackView.bottomAnchor.constraint(equalTo: cStackView.bottomAnchor, constant: 0)
            
        ])
        
    }
    
    // Mark: Second Stack
    
    func dStack () {
             
        let titleLabel = makeLabel(withText: "I like iOS development because...")
        titleLabel.font = UIFont.systemFont(ofSize: 18, weight: .bold)
        titleLabel.textColor = .black
        titleLabel.textAlignment = .left
        
        let textLabel = makeLabel(withText: "I like mobile development because \n the mobile device is not only a web browser. \nYou can do a lot of things with it. I chose iOS \nbecause I believe It has the best \n environment and device quality.")
        textLabel.font = UIFont.systemFont(ofSize: 18, weight: .regular)
        textLabel.textColor = .black
        textLabel.numberOfLines = 6
        
        let textLabelStackView = UIStackView(arrangedSubviews: [textLabel])
        textLabelStackView.translatesAutoresizingMaskIntoConstraints = false
        textLabelStackView.axis = .horizontal
        textLabelStackView.alignment = .top
        
        textLabelStackView.addArrangedSubview(textLabel)
        
        let dStackView = UIStackView(arrangedSubviews: [titleLabel, textLabelStackView])
        dStackView.translatesAutoresizingMaskIntoConstraints = false
        dStackView.backgroundColor = .grayish
        dStackView.axis = .vertical
        dStackView.alignment = .leading
                    
        view.addSubview(dStackView)
        textLabelStackView.addArrangedSubview(textLabel)
        
        NSLayoutConstraint.activate([
        
            // Mark: D stackview constraints
            dStackView.widthAnchor.constraint(equalToConstant: view.frame.width*0.85),
            dStackView.heightAnchor.constraint(equalToConstant: 245),
            dStackView.centerXAnchor.constraint(equalTo: view.centerXAnchor, constant: 0),
            dStackView.bottomAnchor.constraint(equalTo: view.safeAreaLayoutGuide.bottomAnchor, constant: -80),

            // Mark: D FirstStack constraints
            titleLabel.topAnchor.constraint(equalTo: dStackView.topAnchor, constant: 0),
            titleLabel.heightAnchor.constraint(equalToConstant: 40),
            titleLabel.leadingAnchor.constraint(equalTo: dStackView.leadingAnchor, constant: 0),
            titleLabel.trailingAnchor.constraint(equalTo: dStackView.trailingAnchor, constant: 0),

            // Mark: D SecondStack constraints
            textLabelStackView.topAnchor.constraint(equalTo: titleLabel.bottomAnchor, constant: 0),
            textLabelStackView.bottomAnchor.constraint(equalTo: dStackView.bottomAnchor, constant: 0),
            textLabelStackView.leadingAnchor.constraint(equalTo: dStackView.leadingAnchor, constant: 0),
//            textLabelStackView.trailingAnchor.constraint(equalTo: dStackView.trailingAnchor, constant: 0),
            
            // Mark: D ThirdStack constraints
            textLabel.topAnchor.constraint(equalTo: textLabelStackView.topAnchor, constant: 0),
            textLabel.bottomAnchor.constraint(equalTo: textLabelStackView.bottomAnchor, constant: -50),
            textLabel.leadingAnchor.constraint(equalTo: textLabelStackView.leadingAnchor, constant: 0),
            textLabel.trailingAnchor.constraint(equalTo: textLabelStackView.trailingAnchor, constant: 0)
        
        ])
    }
    
    func sayHiButton() {
        
        let sayHiButton = makeButton(title: "Say Hi! 👋", color: .buttonColor)
        
        let buttonHeight : CGFloat = 60
        
        sayHiButton.layer.cornerRadius = buttonHeight / 2
        sayHiButton.clipsToBounds = true
        
        view.addSubview(sayHiButton)
        
        sayHiButton.addTarget(self, action: #selector(sayHiPressed), for: .touchUpInside)
        
        
        sayHiButton.bottomAnchor.constraint(equalTo: view.safeAreaLayoutGuide.bottomAnchor, constant: 0).isActive = true
        sayHiButton.centerXAnchor.constraint(equalTo: view.centerXAnchor, constant: 0).isActive = true
        sayHiButton.heightAnchor.constraint(equalToConstant: buttonHeight).isActive = true
        sayHiButton.widthAnchor.constraint(equalToConstant: 250).isActive = true
        
    }
    
    @objc func sayHiPressed () -> UIAlertController {
        
        let sayHiAlert = UIAlertController (title: "", message: "👋\nGreat to meet you...", preferredStyle: .alert)
        sayHiAlert.addAction(UIAlertAction(title: "OK", style: .default, handler: nil))
        self.present(sayHiAlert, animated: true, completion: nil)
        
        return sayHiAlert
    }
    
    func makeLabel (withText text: String) -> UILabel {
        
        let makeLabel = UILabel()
        makeLabel.translatesAutoresizingMaskIntoConstraints = false
        makeLabel.text = text
        
        return makeLabel
    }
    
    func makeButton (title: String, color: UIColor) -> UIButton {
        
        let button = UIButton()
        button.translatesAutoresizingMaskIntoConstraints = false
        button.setTitle(title, for: .normal)
        button.titleLabel?.adjustsFontSizeToFitWidth = true
        button.contentEdgeInsets = UIEdgeInsets.init(top: 8, left: 16, bottom: 8, right: 16)
        button.backgroundColor = color
        
        return button
    }
    
}

extension UIColor {
    
    static let imageColor = UIColor(red: 30/255, green: 60/255, blue: 60/255, alpha: 1)
    static let grayish = UIColor(red: 249/255, green: 248/255, blue: 243/255, alpha: 1)
    static let buttonColor = UIColor(red: 198/255, green: 78/255, blue: 53/255, alpha: 1)
}
