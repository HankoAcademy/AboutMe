//
//  redRoundedButtom.swift
//  AboutMe
//
//  Created by Victoria Park on 9/11/21.
//

import UIKit

class RedRoundedButton: UIButton {

    override init(frame:CGRect){
        super.init(frame:frame)
        setUpUI()
    }
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    private func setUpUI(){
        layer.cornerRadius = 20
        titleLabel?.font = UIFont(name:"Noteworthy-Bold",size:20)
        titleLabel?.tintColor = .white
        setTitle("Say Hi 👋", for: .normal)
        backgroundColor = .red
        
    }

}
