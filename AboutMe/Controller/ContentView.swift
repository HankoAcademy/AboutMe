//
//  DetailView.swift
//  AboutMe
//
//  Created by Victoria Park on 8/31/21.
//

import UIKit

class ContentView: UIView {
//#F9F8F2 - cream , #27476B - navy blue, and #D64428
   // let height:CGFloat = 896
    
    var buttonAction:(()->Void)?
    
    let profileView:ProfileView = {
        let view = ProfileView()
        view.translatesAutoresizingMaskIntoConstraints = false
        view.backgroundColor = UIColor(hexString: "27476B")
     
        return view
    }()
  
    let contactView:ContactView = {
        let view = ContactView()
        view.translatesAutoresizingMaskIntoConstraints = false
        view.backgroundColor = UIColor(hexString: "#F9F8F2")
        return view
    }()
    
    let interestsView:InterestsView = {
        let view = InterestsView()
        view.translatesAutoresizingMaskIntoConstraints = false
        view.backgroundColor = UIColor(hexString: "#F9F8F2")
        return view
    }()
  
    let iOSView:IOSInterestView = {
       let view = IOSInterestView()
        view.translatesAutoresizingMaskIntoConstraints = false
        view.backgroundColor = UIColor(hexString: "#F9F8F2")
        return view
    }()
 
    let buttonView:UIView = {
        let view = UIView()
        view.translatesAutoresizingMaskIntoConstraints = false
        view.backgroundColor = .white
        return view
        
    }()
    let sayHiButton:RedRoundedButton = {
        let button = RedRoundedButton()
        button.translatesAutoresizingMaskIntoConstraints = false
        button.addTarget(self,action:#selector(buttonTapped),for:.touchUpInside)
        
        return button
    }()
    
    
    init(buttonAction:@escaping()->Void, frame:CGRect = .zero){
        self.buttonAction = buttonAction
        super.init(frame:frame)
        setUpUI()
    }
    @objc func buttonTapped(){
        buttonAction?()
    }
    override func layoutSubviews() {
        print("parent view being laid out")
    }
    required init?(coder: NSCoder) {
        super.init(coder: coder)
        fatalError("init(coder:) has not been implemented")
    }
    
    private func setUpUI(){
        self.backgroundColor = .white
        setUpProfileView()
        setUpContactView()
        setUpInterestsView()
        setUpiOSInterestBox()
        setUpSubmitButton()
    }
    
    private func setUpProfileView(){
        
        self.addSubview(profileView)
        NSLayoutConstraint.activate([
            profileView.topAnchor.constraint(equalTo: self.safeAreaLayoutGuide.topAnchor, constant:20),
            profileView.leadingAnchor.constraint(equalTo: self.safeAreaLayoutGuide.leadingAnchor, constant:20),
            profileView.heightAnchor.constraint(equalToConstant: 240),
            profileView.trailingAnchor.constraint(equalTo: self.safeAreaLayoutGuide.trailingAnchor,constant:-20)
        ])
        
    }
    private func setUpContactView(){
        self.addSubview(contactView)
        
        NSLayoutConstraint.activate([
            contactView.topAnchor.constraint(equalTo: profileView.bottomAnchor, constant: 17),
            contactView.leadingAnchor.constraint(equalTo: profileView.leadingAnchor),
            contactView.trailingAnchor.constraint(equalTo: profileView.trailingAnchor),
            contactView.widthAnchor.constraint(equalTo: profileView.widthAnchor),
            contactView.heightAnchor.constraint(equalToConstant: 130)
           
        ])
        
    }
    private func setUpInterestsView(){
        self.addSubview(interestsView)
     
        NSLayoutConstraint.activate([
            interestsView.topAnchor.constraint(equalTo: contactView.bottomAnchor, constant: 17),
            interestsView.leadingAnchor.constraint(equalTo: contactView.leadingAnchor),
            interestsView.trailingAnchor.constraint(equalTo: contactView.trailingAnchor),
            interestsView.widthAnchor.constraint(equalTo: contactView.widthAnchor),
            interestsView.heightAnchor.constraint(equalToConstant: 115)
        ])
    }
    
    private func setUpiOSInterestBox(){
        self.addSubview(iOSView)
        NSLayoutConstraint.activate([
            iOSView.topAnchor.constraint(equalTo: interestsView.bottomAnchor, constant: 17),
            iOSView.leadingAnchor.constraint(equalTo: interestsView.leadingAnchor),
           iOSView.trailingAnchor.constraint(equalTo: interestsView.trailingAnchor),
           iOSView.heightAnchor.constraint(equalToConstant: 150)
        ])
    }
    
    private func setUpSubmitButton(){
       
        self.addSubview(buttonView)
        buttonView.addSubview(sayHiButton)
       
        NSLayoutConstraint.activate([
            buttonView.topAnchor.constraint(equalTo: iOSView.bottomAnchor, constant: 10),
            buttonView.widthAnchor.constraint(equalTo: iOSView.widthAnchor),
            buttonView.heightAnchor.constraint(equalToConstant: 70),
            buttonView.centerXAnchor.constraint(equalTo: iOSView.centerXAnchor)
            ])
        
        NSLayoutConstraint.activate([
            sayHiButton.topAnchor.constraint(equalTo: buttonView.topAnchor, constant: 10),
            sayHiButton.centerXAnchor.constraint(equalTo: buttonView.centerXAnchor),
            sayHiButton.widthAnchor.constraint(equalToConstant: 150),
            sayHiButton.heightAnchor.constraint(equalToConstant: 50)
        ])
        
    }
 
}
extension UIColor {
    convenience init(hexString: String) {
        let hex = hexString.trimmingCharacters(in: CharacterSet.alphanumerics.inverted)
        var int = UInt64()
        Scanner(string: hex).scanHexInt64(&int)
        let a, r, g, b: UInt64
        switch hex.count {
        case 3: // RGB (12-bit)
            (a, r, g, b) = (255, (int >> 8) * 17, (int >> 4 & 0xF) * 17, (int & 0xF) * 17)
        case 6: // RGB (24-bit)
            (a, r, g, b) = (255, int >> 16, int >> 8 & 0xFF, int & 0xFF)
        case 8: // ARGB (32-bit)
            (a, r, g, b) = (int >> 24, int >> 16 & 0xFF, int >> 8 & 0xFF, int & 0xFF)
        default:
            (a, r, g, b) = (255, 0, 0, 0)
        }
        self.init(red: CGFloat(r) / 255, green: CGFloat(g) / 255, blue: CGFloat(b) / 255, alpha: CGFloat(a) / 255)
    }
}
