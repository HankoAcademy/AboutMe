//
//  DetailView.swift
//  AboutMe
//
//  Created by Sotiri Kolvani on 9/5/21.
//

import Foundation
import UIKit

class DetailView: UIView {
    
    /*  Testing Purposes
     
    let blueView: UIView = {
        let view = UIView()
        view.translatesAutoresizingMaskIntoConstraints = false
        view.backgroundColor = UIColor(red: 57/255, green: 72/255, blue: 107/255, alpha: 1.0)
        return view
    }()
    
    let paddingView: UIView = {
        let view = UIView()
        view.translatesAutoresizingMaskIntoConstraints = false
        view.backgroundColor = .blue
        return view
    }()
    
    let profileNameLabel: UILabel = {
        let label = UILabel()
        label.translatesAutoresizingMaskIntoConstraints = false
        label.text = "Sotiri Kolvani"
        label.font = UIFont.systemFont(ofSize: 26, weight: .bold)
        label.textColor = .white
        return label
    }()
    
    let smallerLabel: UILabel = {
        let label = UILabel()
        label.translatesAutoresizingMaskIntoConstraints = false
        label.text = "He/Him/His"
        label.font = UIFont.systemFont(ofSize: 18, weight: .bold)
        label.textColor = .gray
        return label
    }()
    */
    
    // MARK: - View Properties
    
    let profileImageAndNameBackgroundView: ProfileImageAndNameView = {
            let profileImageAndNameView = ProfileImageAndNameView()
            profileImageAndNameView.translatesAutoresizingMaskIntoConstraints = false
            profileImageAndNameView.backgroundColor = UIColor(red: 57/255, green: 72/255, blue: 107/255, alpha: 1.0)
            profileImageAndNameView.layer.cornerRadius = 20
            return profileImageAndNameView
        }()
    
    let socialsView: UIView = {
        let view = UIView()
        view.translatesAutoresizingMaskIntoConstraints = false
        view.backgroundColor = UIColor(named: "CreamColor")
        return view
    }()
    
    
    let locationLabel: UILabel = {
        let label = UILabel()
        label.translatesAutoresizingMaskIntoConstraints = false
        label.font = UIFont.systemFont(ofSize: 18, weight: .bold)
        label.text = "📍 Jacksonville, FL"
        return label
    }()
    
    let divider: UIView = {
        let view = UIView()
        view.translatesAutoresizingMaskIntoConstraints = false
        view.backgroundColor = .darkGray
        return view
    }()
    
    let twitterStackView : ImageWithLabelStackView = {
        let imageWithLabelStackView = ImageWithLabelStackView()
        imageWithLabelStackView.translatesAutoresizingMaskIntoConstraints = false
        imageWithLabelStackView.imageView.image = UIImage(named: "twitter")
        imageWithLabelStackView.textLabel.text = "@SKolvani"
        return imageWithLabelStackView
    }()
    
    let linkedInStackView : ImageWithLabelStackView = {
        let imageWithLabelStackView = ImageWithLabelStackView()
        imageWithLabelStackView.translatesAutoresizingMaskIntoConstraints = false
        imageWithLabelStackView.imageView.image = UIImage(named: "linkedin")
        imageWithLabelStackView.textLabel.text = "linkedin.com/in/sotiri-kolvani/"
        return imageWithLabelStackView
    }()
    
    /*
     
     *********   My Original Way of Working around the Social icons & Labels   ************
     
    let twitterLabel: UILabel = {
        let label = UILabel()
        label.font = UIFont.systemFont(ofSize: 14, weight: .light)
        label.translatesAutoresizingMaskIntoConstraints = false
        
        let fullString = NSMutableAttributedString(string:"     ")
        
        let image1Attachment = NSTextAttachment()
        image1Attachment.image = #imageLiteral(resourceName: "twitter").imageResized(to: CGSize(width: 14, height: 15))
        
        let image1String = NSAttributedString(attachment: image1Attachment)
        
        fullString.append(image1String)
        fullString.append(NSAttributedString(string:" @SKolvani"))
        label.attributedText = fullString
        return label
    }()
    
    let linkedInLabel: UILabel = {
        let label = UILabel()
        label.translatesAutoresizingMaskIntoConstraints = false
        label.font = UIFont.systemFont(ofSize: 14, weight: .light)
        let fullString = NSMutableAttributedString(string:"     ")
        
        let image1Attachment = NSTextAttachment()
        image1Attachment.image = #imageLiteral(resourceName: "linkedin").imageResized(to: CGSize(width: 14, height: 15))
        let image1String = NSAttributedString(attachment: image1Attachment)
        
        fullString.append(image1String)
        fullString.append(NSAttributedString(string:" linkedin.com/in/sotiri-kolvani"))
        label.attributedText = fullString
        
        return label
    }()
 */
    
    let favoritesView: UIView = {
        let view = UIView()
        view.translatesAutoresizingMaskIntoConstraints = false
        view.backgroundColor = UIColor(named: "CreamColor")
        return view
    }()
    
    let hobbiesLabel: UILabel = {
        let label = UILabel()
        label.translatesAutoresizingMaskIntoConstraints = false
        label.font = UIFont.systemFont(ofSize: 18, weight: .regular)
        label.text = "❤️ Piano, Djing, Traveling, Gaming"
        return label
    }()
    
    let favoriteFoodLabel: UILabel = {
        let label = UILabel()
        label.translatesAutoresizingMaskIntoConstraints = false
        label.font = UIFont.systemFont(ofSize: 18, weight: .regular)
        label.text = "🍴 Gyros & Pastitsio"
        return label
    }()
    
    let favoriteShowLabel: UILabel = {
        let label = UILabel()
        label.translatesAutoresizingMaskIntoConstraints = false
        label.font = UIFont.systemFont(ofSize: 18, weight: .regular)
        label.text = "📺 NCIS"
        return label
    }()
    
    let iOSSectionView: UIView = {
        let view = UIView()
        view.translatesAutoresizingMaskIntoConstraints = false
        view.backgroundColor = UIColor(named: "CreamColor")
        return view
    }()
    
    let iOSTitleLabel: UILabel = {
        let label = UILabel()
        label.translatesAutoresizingMaskIntoConstraints = false
        label.font = UIFont.systemFont(ofSize: 18, weight: .bold)
        label.text = "I like iOS Development Because..."
        return label
    }()
    
    let iOSDescriptionLabel: UILabel = {
        let label = UILabel()
        label.translatesAutoresizingMaskIntoConstraints = false
        label.font = UIFont.systemFont(ofSize: 16, weight: .regular)
        label.numberOfLines  = 5
        label.lineBreakMode = .byWordWrapping
        label.text = "I have always enjoyed building new things and solving problems. Building apps is very cool and even better when I can have my own creation out there in the world that others can access and use & benefit from."
        return label
    }()
    
    
    /* Example of a quick UIStackView
     
    //let socialStackView: UIStackView = {
    //    let stackView = UIStackView()
    //    stackView.translatesAutoresizingMaskIntoConstraints = false
    //    stackView.axis = .vertical
    //    stackView.alignment = .leading
    //    stackView.distribution = .fillEqually
    //    stackView.spacing = 10
    //    stackView.backgroundColor = UIColor(named: "CreamColor")
    //    return stackView
    //}() */
    
    var buttonAction: (() -> Void)?
    
    let submitButton: UIButton = {
        let button = UIButton()
        button.translatesAutoresizingMaskIntoConstraints = false
        button.addTarget(self, action: #selector(buttonPressed), for: .touchUpInside)
        button.setTitle("Say Hi 👋", for: .normal)
        button.backgroundColor = .red
        button.layer.cornerRadius = 30
        return button
    }()

    // MARK: - Initializer
     
     init(buttonAction: @escaping () -> Void){
         self.buttonAction = buttonAction
        
        super.init(frame: .zero)
        
        setUpUi()
    }
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    private func setUpUi() {
        
        setUpProfileView()
        setUpSubmitButton()
        setUpSocialsView()
        setUpFavoritesView()
        setUpiOSSectionView()
    }
    
    /*  Social Icons & Labels Constrains with my original 1st try.
     
    lazy var avatar: UIImageView = {
        
        let imageView = UIImageView(image: #imageLiteral(resourceName: "sotiri"))
        imageView.layer.borderColor = UIColor.lightGray.cgColor
//        imageView.layer.cornerRadius = 40
        imageView.clipsToBounds = true
        return imageView
    }()
    
    private func setUpBlueLabelContainer() {
        
        addSubview(blueView)
        
        let stackView = UIStackView()
        stackView.axis = .vertical
        stackView.alignment = .center
        stackView.translatesAutoresizingMaskIntoConstraints = false
        stackView.distribution = .fillProportionally
        stackView.spacing = 5
//        stackView.alignment = .fill // .Leading .FirstBaseline .Center .Trailing .LastBaseline
//        stackView.distribution = .fillEqually // .FillEqually .FillProportionally .EqualSpacing .EqualCentering
        
        NSLayoutConstraint.activate([
            blueView.topAnchor.constraint(equalTo: safeAreaLayoutGuide.topAnchor, constant: 10),
            blueView.leadingAnchor.constraint(equalTo: leadingAnchor, constant: 20),
            blueView.trailingAnchor.constraint(equalTo: trailingAnchor, constant: -20),
            blueView.heightAnchor.constraint(equalToConstant: 200)
        ])
        
        
        stackView.addArrangedSubview(paddingView)
        stackView.addArrangedSubview(avatar)
        stackView.addArrangedSubview(profileNameLabel)
        stackView.addArrangedSubview(smallerLabel)
        stackView.addArrangedSubview(paddingView)
        
//        stackView.addArrangedSubview(paddingView)
        
        avatar.contentMode = .scaleAspectFit
        avatar.heightAnchor.constraint(equalToConstant: 110).isActive = true

        avatar.widthAnchor.constraint(equalToConstant: 110).isActive = true

        profileNameLabel.heightAnchor.constraint(equalToConstant: 25).isActive = true
        
        smallerLabel.heightAnchor.constraint(equalToConstant: 20).isActive = true
        
         
        
        paddingView.heightAnchor.constraint(equalToConstant: 5).isActive = true
        
        profileNameLabel.textAlignment = .center
        smallerLabel.textAlignment = .center
        

        
        
        blueView.addSubview(stackView)
        
        stackView.topAnchor.constraint(equalTo: blueView.topAnchor, constant: 5).isActive = true
        stackView.bottomAnchor.constraint(equalTo: blueView.bottomAnchor).isActive = true
        stackView.leadingAnchor.constraint(equalTo: blueView.leadingAnchor).isActive = true
        stackView.trailingAnchor.constraint(equalTo: blueView.trailingAnchor).isActive = true
        
    }
    */
    
    private func setUpProfileView(){

            guard let profileImage = UIImage(named: "sotiri") else {
                print("Profile Image is nul")
                return
            }
            
            profileImageAndNameBackgroundView.updateView(image: profileImage, fullname: "Sotiri Kolvani", pronouns: "He/Him/His")
            
            addSubview(profileImageAndNameBackgroundView)
            
            NSLayoutConstraint.activate([
                profileImageAndNameBackgroundView.topAnchor.constraint(equalTo: safeAreaLayoutGuide.topAnchor),
                profileImageAndNameBackgroundView.leadingAnchor.constraint(equalTo: leadingAnchor, constant: 20),
                profileImageAndNameBackgroundView.trailingAnchor.constraint(equalTo: trailingAnchor, constant: -20),
                profileImageAndNameBackgroundView.heightAnchor.constraint(equalTo: heightAnchor, multiplier: 1/3)
            ])

        }
    
    
    
    private func setUpSocialsView() {
        
        addSubview(socialsView)
        
        NSLayoutConstraint.activate([
            socialsView.topAnchor.constraint(equalTo: profileImageAndNameBackgroundView.bottomAnchor, constant: 13),
            socialsView.leadingAnchor.constraint(equalTo: profileImageAndNameBackgroundView.leadingAnchor),
            socialsView.trailingAnchor.constraint(equalTo: profileImageAndNameBackgroundView.trailingAnchor),
            socialsView.heightAnchor.constraint(equalToConstant: 115)
        ])
        
        addLocationView()
        addDivider()
        addTwitter()
        addLinkedIn()
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
    
    private func addTwitter() {
        
        socialsView.addSubview(twitterStackView)
        
        NSLayoutConstraint.activate([
            twitterStackView.topAnchor.constraint(equalTo: divider.bottomAnchor, constant: 8),
            twitterStackView.leadingAnchor.constraint(equalTo: socialsView.leadingAnchor, constant: 10)
        ])
    }
    
    private func addLinkedIn() {
        
        socialsView.addSubview(linkedInStackView)
        
        NSLayoutConstraint.activate([
            linkedInStackView.topAnchor.constraint(equalTo: twitterStackView.bottomAnchor, constant: 18),
            linkedInStackView.leadingAnchor.constraint(equalTo: socialsView.leadingAnchor, constant: 10)
        ])
    }
    
    private func setUpFavoritesView() {
        
        addSubview(favoritesView)
        
        NSLayoutConstraint.activate([
            favoritesView.topAnchor.constraint(equalTo: socialsView.bottomAnchor, constant: 13),
            favoritesView.leadingAnchor.constraint(equalTo: socialsView.leadingAnchor),
            favoritesView.trailingAnchor.constraint(equalTo: socialsView.trailingAnchor),
            favoritesView.heightAnchor.constraint(equalToConstant: 100)
        ])
        
        addHobbies()
        addFavoriteFood()
        addFavoriteShow()
    }
    
    private func addHobbies() {
        
        favoritesView.addSubview(hobbiesLabel)
        
        NSLayoutConstraint.activate([
            hobbiesLabel.topAnchor.constraint(equalTo: favoritesView.topAnchor, constant: 18),
            hobbiesLabel.leadingAnchor.constraint(equalTo: favoritesView.leadingAnchor, constant: 10),
            hobbiesLabel.trailingAnchor.constraint(equalTo: favoritesView.trailingAnchor, constant: -10)
        ])
    }
    
    private func addFavoriteFood() {
        
        favoritesView.addSubview(favoriteFoodLabel)
        
        NSLayoutConstraint.activate([
            favoriteFoodLabel.topAnchor.constraint(equalTo: favoritesView.topAnchor, constant: 60),
            favoriteFoodLabel.leadingAnchor.constraint(equalTo: favoritesView.leadingAnchor, constant: 10),
            favoriteFoodLabel.trailingAnchor.constraint(equalTo: favoritesView.trailingAnchor, constant: -10)
        ])
    }
    
    private func addFavoriteShow() {
        
        favoritesView.addSubview(favoriteShowLabel)
        
        favoriteShowLabel.textAlignment = .right
        
        NSLayoutConstraint.activate([
            favoriteShowLabel.topAnchor.constraint(equalTo: favoritesView.topAnchor, constant: 60),
            favoriteShowLabel.leadingAnchor.constraint(equalTo: favoritesView.leadingAnchor, constant: 30),
            favoriteShowLabel.trailingAnchor.constraint(equalTo: favoritesView.trailingAnchor, constant: -50)
        ])
    }
    
    private func setUpiOSSectionView() {
        
        addSubview(iOSSectionView)
        
        NSLayoutConstraint.activate([
            iOSSectionView.topAnchor.constraint(equalTo: favoritesView.bottomAnchor, constant: 13),
            iOSSectionView.leadingAnchor.constraint(equalTo: favoritesView.leadingAnchor),
            iOSSectionView.trailingAnchor.constraint(equalTo: favoritesView.trailingAnchor),
            iOSSectionView.heightAnchor.constraint(equalToConstant: 150)
        ])
        addiOSTitle()
        addiOSDescription()
    }
    
    private func addiOSTitle() {
        
        iOSSectionView.addSubview(iOSTitleLabel)
        
        NSLayoutConstraint.activate([
            iOSTitleLabel.topAnchor.constraint(equalTo: iOSSectionView.topAnchor, constant: 10),
            iOSTitleLabel.leadingAnchor.constraint(equalTo: iOSSectionView.leadingAnchor, constant: 8),
            iOSTitleLabel.trailingAnchor.constraint(equalTo: iOSSectionView.trailingAnchor, constant: -8)
        ])
    }
    
    
    private func addiOSDescription() {
        
        iOSSectionView.addSubview(iOSDescriptionLabel)
        
        NSLayoutConstraint.activate([
            iOSDescriptionLabel.topAnchor.constraint(equalTo: iOSTitleLabel.bottomAnchor),
            iOSDescriptionLabel.leadingAnchor.constraint(equalTo: iOSTitleLabel.leadingAnchor),
            iOSDescriptionLabel.trailingAnchor.constraint(equalTo: iOSSectionView.trailingAnchor, constant: -4),
            iOSDescriptionLabel.bottomAnchor.constraint(equalTo: iOSSectionView.bottomAnchor, constant: -4)
        ])
    }
    
    private func setUpSubmitButton() {
        
        addSubview(submitButton)
        
        NSLayoutConstraint.activate([
            submitButton.bottomAnchor.constraint(equalTo: safeAreaLayoutGuide.bottomAnchor, constant: -10),
            submitButton.leadingAnchor.constraint(equalTo: leadingAnchor, constant: 50),
            submitButton.trailingAnchor.constraint(equalTo: trailingAnchor, constant: -50),
            submitButton.heightAnchor.constraint(equalToConstant:60)
        ])
    }
    
    @objc func buttonPressed() {
          print("button pressed");
          buttonAction?()
      }
    

} // End of class



/* Testing UIImage & UIImageView with an extension
 
extension UIImage {
    
    func imageResized(to size: CGSize) -> UIImage {
        
        return UIGraphicsImageRenderer(size: size).image { _ in
            
            draw(in: CGRect(origin: .zero, size: size))
        }
    }
}
extension UIImageView {
    public func maskCircle(anyImage: UIImage) {
        self.contentMode = .scaleAspectFit
        self.layer.cornerRadius = self.frame.height / 2
        self.layer.masksToBounds = false
        self.clipsToBounds = true
        self.image = anyImage
    }
}
*/

/* StackView of Labels from the quick Stackview example up top that's commented. 
 private func SetUpSocialStackViews() {
 
 //    addSubview(socialStackView)
 //
 //    NSLayoutConstraint.activate([
 //        socialStackView.topAnchor.constraint(equalTo: blueView.bottomAnchor, constant: 40),
 //        socialStackView.leadingAnchor.constraint(equalTo: blueView.leadingAnchor),
 //        socialStackView.trailingAnchor.constraint(equalTo: blueView.trailingAnchor)
 //    ])
 //
 //    socialStackView.addArrangedSubview(locationLabel)
 //    socialStackView.addArrangedSubview(socialLabelTwo)
 //    socialStackView.addArrangedSubview(socialLabelThree)
 
 //    socialStackView.backgroundColor = .gray
 //    locationLabel.backgroundColor = .gray
 //    socialLabelTwo.backgroundColor = .gray
 //    socialLabelThree.backgroundColor = .gray
 
 
 
 /*  **************************************    SubViews & Constraints individually - Not as a stackView
 addSubview(socialLabelOne)
 addSubview(socialLabelTwo)
 addSubview(socialLabelThree)
 
 NSLayoutConstraint.activate([
 socialLabelOne.topAnchor.constraint(equalTo: blueView.bottomAnchor, constant: 40),
 socialLabelOne.leadingAnchor.constraint(equalTo: blueView.leadingAnchor),
 socialLabelOne.trailingAnchor.constraint(equalTo: blueView.trailingAnchor)
 ])
 
 NSLayoutConstraint.activate([
 socialLabelTwo.topAnchor.constraint(equalTo: socialLabelOne.bottomAnchor, constant: 20),
 socialLabelTwo.leadingAnchor.constraint(equalTo: blueView.leadingAnchor),
 socialLabelTwo.trailingAnchor.constraint(equalTo: blueView.trailingAnchor)
 ])
 
 NSLayoutConstraint.activate([
 socialLabelThree.topAnchor.constraint(equalTo: socialLabelTwo.bottomAnchor, constant: 20),
 socialLabelThree.leadingAnchor.constraint(equalTo: blueView.leadingAnchor),
 socialLabelThree.trailingAnchor.constraint(equalTo: blueView.trailingAnchor)
 ])
 */
 } */
