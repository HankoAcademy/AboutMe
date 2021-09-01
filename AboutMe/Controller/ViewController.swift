//
//  ViewController.swift
//  AboutMe
//
//  Created by Hannie Kim on 8/1/21.
//

import UIKit

class ViewController: UIViewController {
    
    
    let blueBox: UIView = {
        let view = UIView()
        view.translatesAutoresizingMaskIntoConstraints = false
        view.backgroundColor = .blue
        return view
    }()
    
    override func loadView() {
//        super.viewDidLoad()
        // Do any additional setup after loading the view.
        self.view = UIView()
        self.view.backgroundColor = .white
        
        self.view.addSubview(blueBox)
        layoutBlueBox()

        NSLayoutConstraint.activate([
            blueBox.topAnchor.constraint(equalTo: self.view.safeAreaLayoutGuide.topAnchor),
            blueBox.leftAnchor.constraint(equalTo: self.view.safeAreaLayoutGuide.leftAnchor)
        ])
       
//        NSLayoutConstraint.
        
    }
    
    private func layoutBlueBox() {
        print("layoutBlueBox called")
        var displayHeight: NSLayoutDimension = self.view.safeAreaLayoutGuide.heightAnchor
        var displayWidth: NSLayoutDimension = self.view.safeAreaLayoutGuide.widthAnchor
        
//        let height = self.view.safeAreaLayoutGuide.heightAnchor.value(forKey: )
        
        let shouldNormalizeDisplaySize = UIDevice.current.orientation.isLandscape
        if (shouldNormalizeDisplaySize) {
            displayWidth = self.view.safeAreaLayoutGuide.heightAnchor
            displayHeight = self.view.safeAreaLayoutGuide.widthAnchor
        }
        print(self.view.safeAreaLayoutGuide.heightAnchor)
        print(self.view.safeAreaLayoutGuide.widthAnchor)
        NSLayoutConstraint.deactivate([blueBox.heightAnchor.constraint(equalTo: displayHeight, multiplier: 1/5),
                                       blueBox.widthAnchor.constraint(equalTo: displayWidth, multiplier: 1/3)])
        NSLayoutConstraint.activate([
            blueBox.heightAnchor.constraint(equalTo: displayHeight, multiplier: 1/5),
            blueBox.widthAnchor.constraint(equalTo: displayWidth, multiplier: 1/3)
        ])
    }
    
    override func viewWillLayoutSubviews() {
        layoutBlueBox()
    }
    

}

