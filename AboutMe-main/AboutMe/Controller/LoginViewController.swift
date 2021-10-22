//
//  ViewController.swift
//  AboutMe
//
//  Created by Hannie Kim on 8/1/21.
//
import UIKit

class LoginViewController: UIViewController {
    //Step 1 Create the View
    let blueView: UIView = {
        let view = UIView()
        view.translatesAutoresizingMaskIntoConstraints = false
        view.backgroundColor = #colorLiteral(red: 0.1529411765, green: 0.2784313725, blue: 0.4196078431, alpha: 1)
        return view
    }()
//MARK: Setting up UI Views
    let aboutMeLabel: UILabel = {
        let label = UILabel()
        label.translatesAutoresizingMaskIntoConstraints = false
        label.text = "Sonnie Le"
        label.font = UIFont.systemFont(ofSize: 26, weight: .bold)
        label.textColor = .white
        return label
    }()
    
    let aboutMeLabelPronouns: UILabel = {
        let label = UILabel()
        label.translatesAutoresizingMaskIntoConstraints = false
        label.text = "She/her/hers"
        label.font = UIFont.systemFont(ofSize: 20, weight: .bold)
        label.textColor = .gray
        return label
    }()
    
    let aboutMeLabelLogo: UIImageView = {
        let imageView = UIImageView(image:#imageLiteral(resourceName: "IMG_2821.jpeg") )
        imageView.translatesAutoresizingMaskIntoConstraints = false
        return imageView
    }()
    
    let submitButton: UIButton = {
        let button = UIButton()
        button.translatesAutoresizingMaskIntoConstraints = false
        button.setTitle("Say Hi 👋🏼", for: .normal)
        button.layer.cornerRadius = 30
        button.backgroundColor = #colorLiteral(red: 0.8392156863, green: 0.2666666667, blue: 0.1568627451, alpha: 1)
        return button
    }()
    
    let label1: UILabel = {
        let label1 = UILabel()
        label1.translatesAutoresizingMaskIntoConstraints = false
        label1.text = "📍 San Diego, CA"
        label1.textColor = .black
        label1.font = .systemFont(ofSize: 30, weight: .bold)
        return label1
    }()
    
    let label2: UILabel = {
        let label2 = UILabel()
        label2.translatesAutoresizingMaskIntoConstraints = false
        label2.numberOfLines = 3
        label2.text = "❤️Coffee, Camping, F1 racing \n \n 🍴Korean BBQ       📺 KDramas"
        label2.textColor = .black
        label2.font = .systemFont(ofSize: 25, weight: .bold)
        return label2
    }()
    
    let label3: UILabel = {
        let label3 = UILabel()
        label3.translatesAutoresizingMaskIntoConstraints = false
        label3.text = "I like iOS Development because..."
        label3.textColor = .black
        label3.font = .systemFont(ofSize: 23, weight: .bold)
        return label3
    }()
    
    let iOSDevBecause: UILabel = {
        let iOSDevBecause = UILabel()
        iOSDevBecause.translatesAutoresizingMaskIntoConstraints = false
        iOSDevBecause.numberOfLines = 10
        iOSDevBecause.text = "I aspire to be able to help people with my ideas and creations. After being in customer service for over 15 years I never get tired of helping others. I wish to have the ability to create exactly what I have in my head. Being creative is definetly something that wakes me up in the morning."
        iOSDevBecause.lineBreakMode = .byWordWrapping
        iOSDevBecause.textAlignment = .left
        iOSDevBecause.textColor = .black
        iOSDevBecause.font = .systemFont(ofSize: 18, weight: .regular)
        return iOSDevBecause
    }()
    override func viewDidLoad() {
        super.viewDidLoad()
        
        view.backgroundColor = .white
        setUpUI()
    }
//MARK: Stack Config
    private func setUpUI() {
        blueLabelContainer()
        setupSubmitButton()
        setupLabels()
    }
    
    private func blueLabelContainer() {
        view.addSubview(blueView)
        
        NSLayoutConstraint.activate([
            blueView.topAnchor.constraint(equalTo: view.safeAreaLayoutGuide.topAnchor, constant: 10),
            blueView.leadingAnchor.constraint(equalTo: view.safeAreaLayoutGuide.leadingAnchor, constant: 20),
            //blueView.bottomAnchor.constraint(equalTo: view.safeAreaLayoutGuide.bottomAnchor, constant: -20),
            blueView.trailingAnchor.constraint(equalTo: view.safeAreaLayoutGuide.trailingAnchor, constant: -20),
            blueView.heightAnchor.constraint(equalToConstant: 300)
        ])
        
        blueView.addSubview(aboutMeLabel)
        blueView.addSubview(aboutMeLabelPronouns)
        blueView.addSubview(aboutMeLabelLogo)
        
        NSLayoutConstraint.activate([
            aboutMeLabel.centerXAnchor.constraint(equalTo: blueView.centerXAnchor),
            aboutMeLabel.centerYAnchor.constraint(equalTo: blueView.bottomAnchor, constant: -50),
            
            aboutMeLabelPronouns.centerXAnchor.constraint(equalTo: blueView.centerXAnchor),
            aboutMeLabelPronouns.centerYAnchor.constraint(equalTo: blueView.bottomAnchor, constant: -20),
        
            aboutMeLabelLogo.centerXAnchor.constraint(equalTo: blueView.safeAreaLayoutGuide.centerXAnchor),
            aboutMeLabelLogo.centerYAnchor.constraint(equalTo: blueView.safeAreaLayoutGuide.bottomAnchor, constant: -20),
            aboutMeLabelLogo.topAnchor.constraint(equalTo: blueView.safeAreaLayoutGuide.topAnchor, constant: 30),
            aboutMeLabelLogo.bottomAnchor.constraint(equalTo: blueView.safeAreaLayoutGuide.bottomAnchor, constant: -65),
            aboutMeLabelLogo.trailingAnchor.constraint(equalTo: blueView.safeAreaLayoutGuide.trailingAnchor, constant: -40),
            aboutMeLabelLogo.leadingAnchor.constraint(equalTo: blueView.safeAreaLayoutGuide.leadingAnchor, constant: 40),
        ])
    }
    
    private func setupSubmitButton() {
        
        view.addSubview(submitButton)
        
        NSLayoutConstraint.activate([
            submitButton.leadingAnchor.constraint(equalTo: view.leadingAnchor, constant: 20),
            submitButton.bottomAnchor.constraint(equalTo: view.safeAreaLayoutGuide.bottomAnchor, constant: -10),
            submitButton.trailingAnchor.constraint(equalTo: view.trailingAnchor, constant: -20),
            submitButton.heightAnchor.constraint(equalTo: view.safeAreaLayoutGuide.heightAnchor, multiplier: 1/8)
        ])
    }
    // MARK: - UI Label Config
    private func setupLabels() {
        view.addSubview(label1)
        view.addSubview(label2)
        view.addSubview(label3)

        label3.addSubview(iOSDevBecause)
        
        label1.backgroundColor = #colorLiteral(red: 0.9764705882, green: 0.9725490196, blue: 0.9490196078, alpha: 1)
        label2.backgroundColor = #colorLiteral(red: 0.9764705882, green: 0.9725490196, blue: 0.9490196078, alpha: 1)
        label3.backgroundColor = #colorLiteral(red: 0.9764705882, green: 0.9725490196, blue: 0.9490196078, alpha: 1)
        iOSDevBecause.backgroundColor = #colorLiteral(red: 0.9764705882, green: 0.9725490196, blue: 0.9490196078, alpha: 1)
        
        NSLayoutConstraint.activate([
            label1.topAnchor.constraint(equalTo: blueView.bottomAnchor, constant: 30),
            label1.leadingAnchor.constraint(equalTo: blueView.leadingAnchor),
            label1.trailingAnchor.constraint(equalTo: blueView.trailingAnchor),
            
            label2.topAnchor.constraint(equalTo: label1.bottomAnchor, constant: 30),
            label2.leadingAnchor.constraint(equalTo: blueView.leadingAnchor),
            label2.trailingAnchor.constraint(equalTo: blueView.trailingAnchor),
            
            label3.topAnchor.constraint(equalTo: label2.bottomAnchor, constant: 30),
            label3.leadingAnchor.constraint(equalTo: blueView.leadingAnchor),
            label3.trailingAnchor.constraint(equalTo: blueView.trailingAnchor),
            
            iOSDevBecause.topAnchor.constraint(equalTo: label3.safeAreaLayoutGuide.bottomAnchor, constant: 0),
            iOSDevBecause.leadingAnchor.constraint(equalTo: label3.leadingAnchor),
            iOSDevBecause.trailingAnchor.constraint(equalTo: label3.trailingAnchor),
        ])
    }
}
