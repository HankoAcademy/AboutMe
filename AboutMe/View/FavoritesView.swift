//
//  FavoritesView.swift
//  AboutMe
//
//  Created by Diana Ruiz-Olvera on 9/16/21.
//

import UIKit
import Foundation

class FavoritesView:UIView {
    
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
        label.text = "❤️ All the things!"
        label.font = UIFont.systemFont(ofSize: 14)
        label.textColor = .black
        return label
    }()
    
    let foodLabel: UILabel = {
       let label = UILabel()
        label.translatesAutoresizingMaskIntoConstraints = false
        label.text = "🍴 All the food!"
        label.font = UIFont.systemFont(ofSize: 14)
        label.textColor = .black
        return label
    }()
    
    let tvShowLabel: UILabel = {
       let label = UILabel()
        label.translatesAutoresizingMaskIntoConstraints = false
        label.text = "📺 All the shows!"
        label.font = UIFont.systemFont(ofSize: 14)
        label.textColor = .black
        return label
    }()
        
    override init (frame: CGRect) {
        super.init(frame: frame)
        
        setUpUI()
    }
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    func updateHobbies(newHobbies: String) {
        hobbiesLabel.text = newHobbies
    }
    
    func updateFood(newFood: String) {
        foodLabel.text = newFood
    }
    
    func updateTVshow(newShow: String) {
        tvShowLabel.text = newShow
    }
    
    private func setUpUI() { 
        addSubview(favoritesView)
        
        NSLayoutConstraint.activate([
            favoritesView.topAnchor.constraint(equalTo: favoritesView.topAnchor, constant: 0),
            favoritesView.leadingAnchor.constraint(equalTo: favoritesView.leadingAnchor),
            favoritesView.widthAnchor.constraint(equalTo: widthAnchor, multiplier: 0.985, constant: 5),
            favoritesView.heightAnchor.constraint(equalToConstant: 75)
            ])
        
        favoritesView.addArrangedSubview(hobbiesLabel)
        favoritesView.addArrangedSubview(foodLabel)
        favoritesView.addArrangedSubview(tvShowLabel)
        
        NSLayoutConstraint.activate([
            hobbiesLabel.topAnchor.constraint(equalTo: favoritesView.topAnchor, constant: 5),
            hobbiesLabel.leadingAnchor.constraint(equalTo: favoritesView.leadingAnchor, constant: 12),
            hobbiesLabel.bottomAnchor.constraint(equalTo: foodLabel.topAnchor, constant: -2),

            foodLabel.topAnchor.constraint(equalTo: hobbiesLabel.bottomAnchor, constant: 2),
            foodLabel.leadingAnchor.constraint(equalTo: favoritesView.leadingAnchor, constant: 12),
            
            tvShowLabel.topAnchor.constraint(equalTo: hobbiesLabel.bottomAnchor, constant: 2),
            tvShowLabel.leadingAnchor.constraint(equalTo: foodLabel.leadingAnchor, constant: 150),
            tvShowLabel.trailingAnchor.constraint(equalTo: favoritesView.trailingAnchor, constant: 0),
            tvShowLabel.bottomAnchor.constraint(equalTo: favoritesView.bottomAnchor, constant: 10)
            ])
    }
    
}
