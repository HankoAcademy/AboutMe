//
//  ViewController.swift
//  AboutMe
//
//  Created by Hannie Kim on 8/1/21.
//

import UIKit

class ViewController: UIViewController {
    var portraitConstraints: [NSLayoutConstraint] = [NSLayoutConstraint]()
    var landscapeConstraints: [NSLayoutConstraint] = [NSLayoutConstraint]()
    
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
        
        let displayHeightPortait: NSLayoutDimension = self.view.safeAreaLayoutGuide.heightAnchor
        let displayWidthPortait: NSLayoutDimension = self.view.safeAreaLayoutGuide.widthAnchor
        
        portraitConstraints = [
            blueBox.heightAnchor.constraint(equalTo: displayHeightPortait, multiplier: 1/5),
            blueBox.widthAnchor.constraint(equalTo: displayWidthPortait, multiplier: 1/3)
        ]
        
        let displayHeightLandscape: NSLayoutDimension = self.view.safeAreaLayoutGuide.widthAnchor
        let displayWidthLandscape: NSLayoutDimension = self.view.safeAreaLayoutGuide.heightAnchor
        
        
        landscapeConstraints = [
            blueBox.heightAnchor.constraint(equalTo: displayHeightLandscape, multiplier: 1/5),
            blueBox.widthAnchor.constraint(equalTo: displayWidthLandscape, multiplier: 1/3)
        ]
        
        if (UIDevice.current.orientation.isLandscape) {
            NSLayoutConstraint.activate(landscapeConstraints)
        } else {
            NSLayoutConstraint.activate(portraitConstraints)
        }
        
    }
    
    private func layoutBlueBox() {
        print("layoutBlueBox called")
        print(self.view.safeAreaLayoutGuide.heightAnchor)
        print(self.view.safeAreaLayoutGuide.widthAnchor)
        
        if (UIDevice.current.orientation.isLandscape) {
            NSLayoutConstraint.deactivate(portraitConstraints)
            NSLayoutConstraint.activate(landscapeConstraints)
        } else {
            NSLayoutConstraint.deactivate(landscapeConstraints)
            NSLayoutConstraint.activate(portraitConstraints)
        }
        
//        NSLayoutConstraint.deactivate([blueBox.heightAnchor.constraint(equalTo: displayHeight, multiplier: 1/5),
//                                       blueBox.widthAnchor.constraint(equalTo: displayWidth, multiplier: 1/3)])
//        NSLayoutConstraint.activate([
//            blueBox.heightAnchor.constraint(equalTo: displayHeight, multiplier: 1/5),
//            blueBox.widthAnchor.constraint(equalTo: displayWidth, multiplier: 1/3)
//        ])
    }
    
    override func viewWillLayoutSubviews() {
        layoutBlueBox()
    }
    

}

