//
//  InterestsView.swift
//  AboutMe
//
//  Created by Victoria Park on 9/11/21.
//

import UIKit

class InterestsView: UIView {
    let interestsLabel:UILabel = {
        let label = UILabel()
        label.translatesAutoresizingMaskIntoConstraints = false
        label.text = "❤️ Piano, singing, happy kids"
        label.font = UIFont.systemFont(ofSize: 20)
        label.textColor = .black
        label.textAlignment = .left
        return label
    }()
    let interestsStack:UIStackView = {
        let stack = UIStackView()
         stack.translatesAutoresizingMaskIntoConstraints = false
         stack.axis = .horizontal
         stack.distribution = .fillEqually
         stack.spacing = 0
        return stack
    }()
    
    let foodLabel:UILabel = {
        let label = UILabel()
        label.translatesAutoresizingMaskIntoConstraints = false
        label.text = "🍴 Eggplant"
        label.font = UIFont.systemFont(ofSize: 20)
        label.textColor = .black
        label.textAlignment = .left
        return label
    }()
    let tvLabel:UILabel = {
        let label = UILabel()
        label.translatesAutoresizingMaskIntoConstraints = false
        label.text = "📺 Kdrama"
        label.font = UIFont.systemFont(ofSize: 20)
        label.textColor = .black
        label.textAlignment = .left
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
    
         self.addSubview(interestsLabel)
         self.addSubview(interestsStack)
         
         NSLayoutConstraint.activate([
             interestsLabel.topAnchor.constraint(equalTo: self.topAnchor, constant:20),
             interestsLabel.leadingAnchor.constraint(equalTo: self.leadingAnchor, constant:10),
             interestsLabel.trailingAnchor.constraint(equalTo: self.trailingAnchor, constant:0)
         ])
         interestsStack.addArrangedSubview(foodLabel)
         interestsStack.addArrangedSubview(tvLabel)
         
         NSLayoutConstraint.activate([
             interestsStack.topAnchor.constraint(equalTo: interestsLabel.bottomAnchor,constant:20),
             interestsStack.leadingAnchor.constraint(equalTo: self.leadingAnchor,constant:10),
             interestsStack.trailingAnchor.constraint(equalTo: self.trailingAnchor)
         ])
         
    }
   
}
