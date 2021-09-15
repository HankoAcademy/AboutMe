//
//  IOSInterestView.swift
//  AboutMe
//
//  Created by Victoria Park on 9/11/21.
//

import UIKit

class IOSInterestView: UIView {
    let longTextLabel:UILabel = {
        let label = UILabel()
        label.translatesAutoresizingMaskIntoConstraints = false
        label.textColor = .black
        label.text = "I enjoy problem solving and visualizing solutions. I also enjoy interacting with interesting and generous people in the iOS community."
    
        label.numberOfLines = 0
       
        return label
    }()
    let textBoxLine1:UILabel = {
       let label = UILabel()
        label.translatesAutoresizingMaskIntoConstraints = false
        label.text = "I like iOS dev because ..."
        label.font = UIFont.systemFont(ofSize: 20, weight:.semibold)
        label.textAlignment = .left
        label.textColor = .black
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
        
         self.addSubview(textBoxLine1)
         NSLayoutConstraint.activate([
             textBoxLine1.topAnchor.constraint(equalTo: self.topAnchor, constant: 10),
             textBoxLine1.leadingAnchor.constraint(equalTo: self.leadingAnchor, constant:20),
            textBoxLine1.trailingAnchor.constraint(equalTo: self.trailingAnchor)
         ])
        
         self.addSubview(longTextLabel)
         NSLayoutConstraint.activate([
             longTextLabel.topAnchor.constraint(equalTo: textBoxLine1.bottomAnchor, constant: 10),
             longTextLabel.leadingAnchor.constraint(equalTo: self.leadingAnchor, constant:20),
             longTextLabel.trailingAnchor.constraint(equalTo:self.trailingAnchor),
             longTextLabel.heightAnchor.constraint(equalToConstant: 100),
             
         ])
         longTextLabel.sizeToFit()

         
     }
     
    
}
