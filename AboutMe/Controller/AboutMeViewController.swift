//
//  ViewController.swift
//  AboutMe
//
//  Created by Hannie Kim on 8/1/21.
//  Edited by Sotiri Kolvani
//

import UIKit

class AboutMeViewController: UIViewController {
    
    override func loadView() {
        
        
        view = DetailView(buttonAction: { [weak self] in
                    self?.buttonAlert()
                })
        
        /*   Scroll View last minute 1st try - Will continue working on this!
       
        let scrollView = UIScrollView()
        let detailsView = DetailView()
        scrollView.addSubview(detailsView)
        // detailsView.fillSuperview()
        self.view.addSubview(scrollView)
        self.view.backgroundColor = .white
        */
        
        view.backgroundColor = .white
        
    }
    
    // MARK: - Actions
    
    private func buttonAlert() {
        
        let alertController = UIAlertController(title: nil, message: "Yo-Yo! It's great to meet you!", preferredStyle: .alert)
        alertController.addAction(UIAlertAction(title: "OK", style: .cancel, handler: nil))
        present(alertController, animated: true, completion: nil)
    }

}


