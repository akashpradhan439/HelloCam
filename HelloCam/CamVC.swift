//
//  CamVC.swift
//  HelloCam
//
//  Created by MMI on 12/10/23.
//

import UIKit

class CamVC : UIViewController {
    
    private let flashLight : UIImageView = UIImageView()
    private let mainImageView : UIView = UIView()
    private let bottomView : UIView = UIView()
    private let backButton : UIButton = UIButton()
    private let shutterButton : UIButton = UIButton()
    private let photoText : UITextView = UITextView()
    private let videoText: UITextView = UITextView()
    private let QRScanText : UITextView = UITextView()
    private let galleryViewButton : UIButton = UIButton()
    private let camSwitchButton : UIButton = UIButton()
    private let quickShutterButton : UIButton = UIButton()
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        self.view.backgroundColor = .clear
        
        setMainView()
        setBottomView()
        setFlashView()
        
    }
    
    func setDelegates(){
        photoText.delegate = self
        videoText.delegate = self
        QRScanText.delegate = self
    }
    
    private func setMainView() {
        view.addSubview(mainImageView)
        mainImageView.translatesAutoresizingMaskIntoConstraints = false
        mainImageView.backgroundColor = .black
        
        NSLayoutConstraint.activate([
            mainImageView.topAnchor.constraint(equalTo: view.safeAreaLayoutGuide.topAnchor),
            mainImageView.leadingAnchor.constraint(equalTo: view.safeAreaLayoutGuide.leadingAnchor),
            mainImageView.trailingAnchor.constraint(equalTo: view.safeAreaLayoutGuide.trailingAnchor),
            mainImageView.bottomAnchor.constraint(equalTo: view.safeAreaLayoutGuide.bottomAnchor)
        ])
    }
    
    private func setBottomView(){
        view.addSubview(bottomView)
        bottomView.addSubview(camSwitchButton)
        bottomView.addSubview(photoText)
        bottomView.addSubview(videoText)
        bottomView.addSubview(QRScanText)
        bottomView.addSubview(quickShutterButton)
        bottomView.addSubview(galleryViewButton)
        bottomView.addSubview(shutterButton)
         
        
        bottomView.translatesAutoresizingMaskIntoConstraints = false
        camSwitchButton.translatesAutoresizingMaskIntoConstraints = false
        photoText.translatesAutoresizingMaskIntoConstraints = false
        videoText.translatesAutoresizingMaskIntoConstraints = false
        QRScanText.translatesAutoresizingMaskIntoConstraints = false
        quickShutterButton.translatesAutoresizingMaskIntoConstraints = false
        galleryViewButton.translatesAutoresizingMaskIntoConstraints = false
        shutterButton.translatesAutoresizingMaskIntoConstraints = false
        
        shutterButton.tintColor = .white
        shutterButton.layer.cornerRadius = 30
        shutterButton.layer.borderColor = UIColor.white.cgColor
        shutterButton.layer.borderWidth = 2
//        shutterButton.layer.shadowOffset = 2
//        shutterButton.layer.shadowRadius = 25
        
        NSLayoutConstraint.activate([
            bottomView.heightAnchor.constraint(equalToConstant: 100),
            bottomView.leadingAnchor.constraint(equalTo: view.safeAreaLayoutGuide.leadingAnchor),
            bottomView.trailingAnchor.constraint(equalTo: view.safeAreaLayoutGuide.trailingAnchor),
            bottomView.bottomAnchor.constraint(equalTo: view.safeAreaLayoutGuide.bottomAnchor),
            
            photoText.heightAnchor.constraint(equalToConstant: 30),
            photoText.widthAnchor.constraint(equalToConstant: 100),
            videoText.heightAnchor.constraint(equalToConstant: 30),
            videoText.widthAnchor.constraint(equalToConstant: 100),
            QRScanText.heightAnchor.constraint(equalToConstant: 30),
            QRScanText.widthAnchor.constraint(equalToConstant: 100),
            
            camSwitchButton.heightAnchor.constraint(equalToConstant: 40),
            camSwitchButton.widthAnchor.constraint(equalToConstant: 40),
            camSwitchButton.trailingAnchor.constraint(equalTo: view.safeAreaLayoutGuide.trailingAnchor, constant: -30),
            camSwitchButton.bottomAnchor.constraint(equalTo: view.safeAreaLayoutGuide.bottomAnchor, constant: -30),
            galleryViewButton.heightAnchor.constraint(equalToConstant: 40),
            galleryViewButton.widthAnchor.constraint(equalToConstant: 40),
            galleryViewButton.leadingAnchor.constraint(equalTo: view.safeAreaLayoutGuide.leadingAnchor, constant: 30),
            galleryViewButton.bottomAnchor.constraint(equalTo: view.safeAreaLayoutGuide.bottomAnchor, constant: -30),
            quickShutterButton.widthAnchor.constraint(equalToConstant: 40),
            quickShutterButton.heightAnchor.constraint(equalToConstant: 40),
            quickShutterButton.leadingAnchor.constraint(equalTo: view.safeAreaLayoutGuide.trailingAnchor, constant: 30),
            quickShutterButton.bottomAnchor.constraint(equalTo: view.safeAreaLayoutGuide.bottomAnchor, constant: -30),
            
            shutterButton.heightAnchor.constraint(equalToConstant: 50),
            shutterButton.widthAnchor.constraint(equalToConstant: 50),
            shutterButton.centerXAnchor.constraint(equalTo: view.safeAreaLayoutGuide.centerXAnchor),
            shutterButton.bottomAnchor.constraint(equalTo: view.safeAreaLayoutGuide.bottomAnchor, constant: -30)
            
        ])
    }
    
    private func setFlashView(){
        
    }
}

extension CamVC : UITextViewDelegate {
    func textViewDidBeginEditing(_ textView: UITextView) {
        print("did call textview delegate")
    }
}
