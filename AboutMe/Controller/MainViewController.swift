//
//  ViewController.swift
//  AboutMe
//  First Project for Hanko Academy by Victoria Park
//  Created by Hannie Kim on 8/1/21.
//

import UIKit

class MainViewController: UIViewController{
    
    let scrollView = UIScrollView()
    var contentView:ContentView!
    
    override func loadView() {
     
        contentView = ContentView(buttonAction:{[weak self] in
            self?.displayAlert()
        })
        self.view = UIView()
        view.backgroundColor = .white
        setUpScrollView()
        
    }
    private func setUpScrollView(){
        scrollView.translatesAutoresizingMaskIntoConstraints = false
        self.view.addSubview(scrollView)
        contentView.translatesAutoresizingMaskIntoConstraints = false
        contentView.backgroundColor = .white
        
        scrollView.addSubview(contentView)
      
        contentView.heightAnchor.constraint(equalToConstant: 850).isActive = true
        
        scrollView.centerXAnchor.constraint(equalTo: view.centerXAnchor).isActive = true
        scrollView.widthAnchor.constraint(equalTo: view.widthAnchor).isActive = true
        scrollView.topAnchor.constraint(equalTo: view.topAnchor).isActive = true
        scrollView.bottomAnchor.constraint(equalTo: view.bottomAnchor).isActive = true
     
        contentView.widthAnchor.constraint(equalTo: scrollView.widthAnchor).isActive = true
        contentView.topAnchor.constraint(equalTo: scrollView.topAnchor).isActive = true
        contentView.bottomAnchor.constraint(equalTo: scrollView.bottomAnchor).isActive = true
    }
    private func displayAlert(){
        let message1 = "Your mind contains a universe on which the creator has bestowed all its light"
        let alertController = UIAlertController(title:nil,message:message1,preferredStyle:.alert)
        alertController.addAction(UIAlertAction(title:"OK", style:.cancel, handler:nil))
        present(alertController, animated:true, completion:nil)
    }
}

