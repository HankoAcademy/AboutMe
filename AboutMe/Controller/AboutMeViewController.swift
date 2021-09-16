//
//  ViewController.swift
//  AboutMe
//
//  Created by Hannie Kim on 8/1/21.
//

import UIKit

class AboutMeViewController: UIViewController {
    
    let scrollView = UIScrollView()
    var detailView: DetailView!
        
    override func loadView() {
        detailView = DetailView(buttonAction: { [weak self] in
            self?.displayAlert()
        })

        self.view = UIView()
        view.backgroundColor = .white
        setUpScrollView()
        
    }
    
    private func displayAlert() {
        
        let alertController = UIAlertController(title: nil, message: "To infinity and beyond! 🚀", preferredStyle: .alert)
        alertController.addAction(UIAlertAction(title: "OK", style: .cancel, handler: nil))
        present(alertController, animated: true, completion: nil)
    }
    
    private func setUpScrollView(){
        scrollView.translatesAutoresizingMaskIntoConstraints = false
        self.view.addSubview(scrollView)
        detailView.translatesAutoresizingMaskIntoConstraints = false
        detailView.backgroundColor = .white
        scrollView.addSubview(detailView)
        
        scrollView.topAnchor.constraint(equalTo: view.topAnchor).isActive = true
        scrollView.bottomAnchor.constraint(equalTo: view.bottomAnchor).isActive = true
        scrollView.centerXAnchor.constraint(equalTo: view.centerXAnchor).isActive = true
        scrollView.widthAnchor.constraint(equalTo: view.widthAnchor).isActive = true
  
        detailView.topAnchor.constraint(equalTo: scrollView.topAnchor).isActive = true
        detailView.bottomAnchor.constraint(equalTo: scrollView.bottomAnchor).isActive = true
        detailView.widthAnchor.constraint(equalTo: scrollView.widthAnchor).isActive = true
        detailView.heightAnchor.constraint(equalToConstant: 775).isActive = true
    }

}
