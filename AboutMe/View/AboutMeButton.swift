//
//  AboutMeButton.swift
//  AboutMe
//
//  Created by Hannie Kim on 9/9/21.
//

import UIKit

class AboutMeButton: UIButton {

    // MARK: - Class Properties
    
    var buttonAction: (() -> Void)?
    
    // MARK: - Initializer
    
    init(buttonAction: @escaping () -> Void) {
        self.buttonAction = buttonAction
        
        super.init(frame: .zero)
        
        setUpUI()
    }
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    // MARK: - UI Setup
    
    private func setUpUI() {
        
        backgroundColor = UIColor(named: "RedColor")
        setTitle("Say Hi 👋🏻", for: .normal)
        addTarget(self, action: #selector(buttonPressed), for: .touchUpInside)
        layer.cornerRadius = 20
    }
    
    // MARK: - Actions
    
    @objc func buttonPressed() {
        buttonAction?()
    }
}
