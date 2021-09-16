//
//  LocationAndSocialPlatformsView.swift
//  AboutMe
//
//  Created by Diana Ruiz-Olvera on 9/16/21.
//

import UIKit
import Foundation

class LocationAndSocialPlatformsView: UIView {
    
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
    
    let twitterHandle: UILabel = {
        let label = UILabel()
        label.translatesAutoresizingMaskIntoConstraints = false
        label.text = "@paovox"
        label.textColor = .lightGray
        label.font = UIFont.systemFont(ofSize: 16, weight: .regular)
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
        label.font = UIFont.systemFont(ofSize: 16, weight: .regular)
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
    
    override init (frame: CGRect) {
        super.init(frame: frame)
        
        setUpUI()
    }
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    func updateTwitterHandle(newHandle: String) {
        twitterHandle.text = newHandle
    }
    
    func updateLinkedInHandle(newHandle: String) {
        linkedInHandle.text = newHandle
    }
    
    private func setUpUI() {
        
        addSubview(socialsView)
        
        NSLayoutConstraint.activate([
            socialsView.topAnchor.constraint(equalTo: topAnchor, constant: 10),
            socialsView.leadingAnchor.constraint(equalTo: leadingAnchor),
            socialsView.trailingAnchor.constraint(equalTo: trailingAnchor),
            //socialsView.heightAnchor.constraint(equalTo: heightAnchor)
            ])
        
        addLocationView()
        addDivider()
        addSocialPlatformsView()
    }
    
    private func addLocationView() {

        socialsView.addSubview(locationLabel)
        
        NSLayoutConstraint.activate([
            locationLabel.topAnchor.constraint(equalTo: socialsView.topAnchor, constant: -60),
            locationLabel.leadingAnchor.constraint(equalTo: socialsView.leadingAnchor, constant: 10),
            locationLabel.bottomAnchor.constraint(equalTo: bottomAnchor)
            ])
    }
    
    private func addDivider() {

        socialsView.addSubview(divider)
        
        NSLayoutConstraint.activate([
            divider.topAnchor.constraint(equalTo: locationLabel.bottomAnchor, constant: -65),
            divider.leadingAnchor.constraint(equalTo: socialsView.leadingAnchor),
            divider.trailingAnchor.constraint(equalTo: socialsView.trailingAnchor),
            divider.heightAnchor.constraint(equalToConstant: 2)
            ])
    }
    
    private func addSocialPlatformsView() {

        socialsView.addSubview(socialPlatformStackView)
        
        NSLayoutConstraint.activate([
            socialPlatformStackView.topAnchor.constraint(equalTo: divider.bottomAnchor, constant: 8),
            socialPlatformStackView.leadingAnchor.constraint(equalTo: divider.leadingAnchor, constant: 20)
            ])
        
        socialPlatformStackView.addArrangedSubview(twitterIconImageView)
        socialPlatformStackView.bringSubviewToFront(twitterIconImageView)
        socialPlatformStackView.addArrangedSubview(twitterHandle)
        
        socialPlatformStackView.addArrangedSubview(linkedInIconImageView)
        socialPlatformStackView.bringSubviewToFront(linkedInIconImageView)
        socialPlatformStackView.addArrangedSubview(linkedInHandle)
        
        NSLayoutConstraint.activate([
            twitterIconImageView.topAnchor.constraint(equalTo: divider.bottomAnchor, constant: 5),
            twitterIconImageView.leadingAnchor.constraint(equalTo: divider.leadingAnchor, constant: 12),
            twitterIconImageView.widthAnchor.constraint(equalTo: widthAnchor, multiplier: 0.085, constant: 1),
            twitterIconImageView.heightAnchor.constraint(equalTo: heightAnchor, multiplier: 0.19, constant: 1),
            //twitterIconImageView.heightAnchor.constraint(equalToConstant: 25),
            
            twitterHandle.topAnchor.constraint(equalTo: divider.bottomAnchor, constant: 5),
            twitterHandle.leadingAnchor.constraint(equalTo: twitterIconImageView.leadingAnchor, constant: 40),
            twitterHandle.trailingAnchor.constraint(equalTo: divider.trailingAnchor, constant: 0),
            
            linkedInIconImageView.topAnchor.constraint(equalTo: divider.bottomAnchor, constant: 30),
            linkedInIconImageView.leadingAnchor.constraint(equalTo: divider.leadingAnchor, constant: 12),
            linkedInIconImageView.widthAnchor.constraint(equalTo: widthAnchor, multiplier: 0.075, constant: 5),
            linkedInIconImageView.heightAnchor.constraint(equalTo: heightAnchor, multiplier: 0.18, constant: 5),
            linkedInIconImageView.bottomAnchor.constraint(equalTo: socialsView.bottomAnchor, constant: -5),
            
            linkedInHandle.topAnchor.constraint(equalTo: divider.bottomAnchor, constant: 30),
            linkedInHandle.leadingAnchor.constraint(equalTo: linkedInIconImageView.leadingAnchor, constant: 40),
            linkedInHandle.trailingAnchor.constraint(equalTo: divider.trailingAnchor, constant: 0),
            linkedInHandle.bottomAnchor.constraint(equalTo: socialsView.bottomAnchor, constant: -5),

            ])
    }

}
