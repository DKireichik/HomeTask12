//
//  ViewController.swift
//  12
//
//  Created by Darya on 10.11.23.
//

import UIKit


class ViewController: UIViewController, ViewDelegate, UITextDelegate{
    func printNotes() {
      
    }
    
    func printText() {
    }
    
    let customView = View()
    let uiTextView = UIText()

    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        customView.delegate = self
        view.addSubview(customView)
        customView.translatesAutoresizingMaskIntoConstraints = false
        customView.topAnchor.constraint(equalTo: view.topAnchor, constant: 80).isActive = true
        customView.leftAnchor.constraint(equalTo: view.leftAnchor, constant: 16).isActive = true
        customView.rightAnchor.constraint(equalTo: view.rightAnchor, constant: -16).isActive = true
        customView.heightAnchor.constraint(equalToConstant: 110).isActive = true
        
        uiTextView.delegate = self
        view.addSubview(uiTextView)
        uiTextView.translatesAutoresizingMaskIntoConstraints = false
        uiTextView.topAnchor.constraint(equalTo: customView.bottomAnchor, constant: 16).isActive = true
        uiTextView.leftAnchor.constraint(equalTo: view.leftAnchor, constant: 16).isActive = true
        uiTextView.rightAnchor.constraint(equalTo: view.rightAnchor, constant: -16).isActive = true
        uiTextView.heightAnchor.constraint(equalToConstant: 400).isActive = true
 
     
    }
    
}

