//
//  ThemeButton.swift
//  SubclassingUIButton
//
//  Created by Diana Ruiz-Olvera on 9/16/21.
//

import UIKit

class ThemeButton: UIButton {
    
    override var isEnabled: Bool {
        didSet {
            alpha = isEnabled ? 1 : 0.3
        }
    }
    
    override init(frame: CGRect) {
        super.init(frame: frame)
        
        setUpUI()
    }
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    private func setUpUI() {
        backgroundColor = #colorLiteral(red: 0.4311548769, green: 0.8392546177, blue: 0.1019241288, alpha: 1)
        titleLabel?.font = UIFont.systemFont(ofSize: 20, weight: .bold)
        tintColor = .white
    }
    
    func roundCorners(radius: CGFloat) {
        layer.cornerRadius = radius
    }
    
    func update(buttonTitle: String) {
        setTitle(buttonTitle, for: .normal)
    }
}
