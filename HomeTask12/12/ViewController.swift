//
//  ViewController.swift
//  12
//
//  Created by Darya on 10.11.23.
//

import UIKit


class ViewController: UIViewController, ViewDelegate {

    
    
    let customView = View()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        customView.delegate = self
        view.addSubview(customView)
        customView.translatesAutoresizingMaskIntoConstraints = false
        customView.topAnchor.constraint(equalTo: view.topAnchor, constant: 80).isActive = true
        customView.leftAnchor.constraint(equalTo: view.leftAnchor, constant: 16).isActive = true
        customView.rightAnchor.constraint(equalTo: view.rightAnchor, constant: -16).isActive = true
       
        
    }
    
   func printText(_ textField: String) {
  
    }
    
  
   
       
    
    
    

}

