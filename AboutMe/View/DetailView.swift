//
//  DetailView.swift
//  AboutMe
//
//  Created by Christian on 9/5/21.
//

import Foundation
import UIKit

class DetailView: UIView {
    
    let profileImageWithNameView: ProfileImageWithNameView = {
        let profileImageWithNameView = ProfileImageWithNameView()
        profileImageWithNameView.translatesAutoresizingMaskIntoConstraints = false
        return profileImageWithNameView
    }()
    
    let socialsView: UIView = {
        let view = UIView()
        view.translatesAutoresizingMaskIntoConstraints = false
        view.backgroundColor = UIColor(named: "CreamColor")
        return view
    }()
    
    let divider: UIView = {
        let view = UIView()
        view.translatesAutoresizingMaskIntoConstraints = false
        view.backgroundColor = .darkGray
        return view
    }()
    
    let locationLabel: UILabel = {
        let label = UILabel()
        label.translatesAutoresizingMaskIntoConstraints = false
        label.font = UIFont.systemFont(ofSize: 18, weight: .bold)
        label.text = "📍 Virginia Beach, VA"
        return label
    }()
    
    let twitterView: ImageWithLabelStack = {
       let imageWithLabelStack = ImageWithLabelStack()
        imageWithLabelStack.translatesAutoresizingMaskIntoConstraints = false
        imageWithLabelStack.imageView.image = UIImage(named: "twitter")
        imageWithLabelStack.imageView.image = imageWithLabelStack.imageView.image?.withRenderingMode(.alwaysTemplate)
        imageWithLabelStack.imageView.tintColor = UIColor(named: "NavyColor")
        return imageWithLabelStack
    }()
    
    let linkedInView: ImageWithLabelStack = {
        let imageWithLabelStack = ImageWithLabelStack()
        imageWithLabelStack.translatesAutoresizingMaskIntoConstraints = false
        imageWithLabelStack.imageView.image = UIImage(named: "linkedIn")
        imageWithLabelStack.imageView.image = imageWithLabelStack.imageView.image?.withRenderingMode(.alwaysTemplate)
        imageWithLabelStack.imageView.tintColor = UIColor(named: "NavyColor")
        imageWithLabelStack.textLabel.text = "linkedin.com/in/christianhawkes"
        return imageWithLabelStack
    }()
    
    let favoritesView: UIView = {
        let view = UIView()
        view.translatesAutoresizingMaskIntoConstraints = false
        view.backgroundColor = UIColor(named: "CreamColor")
        return view
    }()
    
    let favoriteThingsLabel: UILabel = {
       let label = UILabel()
        label.translatesAutoresizingMaskIntoConstraints = false
        label.font = UIFont.systemFont(ofSize: 15, weight: .bold)
        label.text = "❤️ Coffee, spending time with family, reading"
        return label
    }()
    
    let favoriteFoodLabel: UILabel = {
       let label = UILabel()
        label.translatesAutoresizingMaskIntoConstraints = false
        label.font = UIFont.systemFont(ofSize: 15, weight: .bold)
        label.text = "🍴 Pad Thai"
        return label
    }()
    
    let favoriteShowLabel: UILabel = {
        let label = UILabel()
         label.translatesAutoresizingMaskIntoConstraints = false
         label.font = UIFont.systemFont(ofSize: 15, weight: .bold)
         label.text = "📺 The Office"
         return label
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
        setUpFavoritesView()
    }
    
    private func setUpProfileView() {
        guard let profileImage = UIImage(named: "Christian") else {
            print("Profile image unexpectedly return nil")
            return
        }
        
        profileImageWithNameView.updateView(image: profileImage, name: "Christian Hawkes", pronouns: "He/Him/His")
        
        addSubview(profileImageWithNameView)
        
        NSLayoutConstraint.activate([
            profileImageWithNameView.leadingAnchor.constraint(equalTo: leadingAnchor, constant: 20),
            profileImageWithNameView.topAnchor.constraint(equalTo: safeAreaLayoutGuide.topAnchor, constant: 20),
            profileImageWithNameView.trailingAnchor.constraint(equalTo: trailingAnchor, constant: -20),
            profileImageWithNameView.heightAnchor.constraint(equalTo: heightAnchor, multiplier: 1/3)
        ])
    }
    
    private func setUpSocialsView() {
        addSubview(socialsView)
        
        NSLayoutConstraint.activate([
            socialsView.topAnchor.constraint(equalTo: profileImageWithNameView.bottomAnchor, constant: 30),
            socialsView.leadingAnchor.constraint(equalTo: profileImageWithNameView.leadingAnchor),
            socialsView.heightAnchor.constraint(equalToConstant: 125),
            socialsView.trailingAnchor.constraint(equalTo: profileImageWithNameView.trailingAnchor)
        ])
        
        addLocationView()
        addDivider()
        addTwitterView()
        addLinkedInView()
    }
    
    private func addLocationView() {
        socialsView.addSubview(locationLabel)
        
        NSLayoutConstraint.activate([
            locationLabel.topAnchor.constraint(equalTo: socialsView.topAnchor, constant: 8),
            locationLabel.leadingAnchor.constraint(equalTo: socialsView.leadingAnchor, constant: 8)
        ])
    }
    
    private func addDivider() {
        socialsView.addSubview(divider)
        
        NSLayoutConstraint.activate([
            divider.topAnchor.constraint(equalTo: locationLabel.bottomAnchor, constant: 8),
            divider.leadingAnchor.constraint(equalTo: socialsView.leadingAnchor),
            divider.heightAnchor.constraint(equalToConstant: 2),
            divider.trailingAnchor.constraint(equalTo: socialsView.trailingAnchor)
        ])
    }
    
    private func addTwitterView() {
        socialsView.addSubview(twitterView)
        
        NSLayoutConstraint.activate([
            twitterView.topAnchor.constraint(equalTo: divider.bottomAnchor, constant: 4),
            twitterView.leadingAnchor.constraint(equalTo: locationLabel.leadingAnchor),
        ])
    }
    
    private func addLinkedInView() {
        socialsView.addSubview(linkedInView)
        
        NSLayoutConstraint.activate([
            linkedInView.topAnchor.constraint(equalTo: twitterView.bottomAnchor, constant: 4),
            linkedInView.leadingAnchor.constraint(equalTo: twitterView.leadingAnchor),
            linkedInView.bottomAnchor.constraint(equalTo: socialsView.bottomAnchor, constant: -4)
        ])
    }
    
    private func setUpFavoritesView() {
        addSubview(favoritesView)
        
        NSLayoutConstraint.activate([
            favoritesView.topAnchor.constraint(equalTo: socialsView.bottomAnchor, constant: 30),
            favoritesView.leadingAnchor.constraint(equalTo: socialsView.leadingAnchor),
            favoritesView.heightAnchor.constraint(equalToConstant: 80),
            favoritesView.trailingAnchor.constraint(equalTo: socialsView.trailingAnchor)
        ])
        
        addFavoriteThingsLabel()
        addFavoriteFoodLabel()
        addFavoriteShowLabel()
    }
    
    private func addFavoriteThingsLabel() {
        favoritesView.addSubview(favoriteThingsLabel)
        
        NSLayoutConstraint.activate([
            favoriteThingsLabel.topAnchor.constraint(equalTo: favoritesView.topAnchor, constant: 15),
            favoriteThingsLabel.leadingAnchor.constraint(equalTo: favoritesView.leadingAnchor, constant: 8),
            
        ])
    }
    
    private func addFavoriteFoodLabel() {
        favoritesView.addSubview(favoriteFoodLabel)
        
        NSLayoutConstraint.activate([
            favoriteFoodLabel.topAnchor.constraint(equalTo: favoriteThingsLabel.bottomAnchor, constant: 20),
            favoriteFoodLabel.leadingAnchor.constraint(equalTo: favoriteThingsLabel.leadingAnchor),
            
        ])
    }
    
    private func addFavoriteShowLabel() {
        favoritesView.addSubview(favoriteShowLabel)
        
        NSLayoutConstraint.activate([
            favoriteShowLabel.topAnchor.constraint(equalTo: favoriteFoodLabel.topAnchor),
            favoriteShowLabel.leadingAnchor.constraint(equalTo: favoriteFoodLabel.trailingAnchor, constant: 20),
            favoriteShowLabel.trailingAnchor.constraint(equalTo: favoritesView.trailingAnchor, constant: -10)
        ])
    }
    
    
}
