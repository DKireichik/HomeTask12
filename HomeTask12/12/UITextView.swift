//
//  UITextView.swift
//  12
//
//  Created by Darya on 14.11.23.
//

import UIKit

protocol UITextDelegate: AnyObject {
  
    func printNotes()
}


class UIText: UIView {

    var notes = UITextView()
    
    weak var delegate : UITextDelegate?
    
    override init(frame: CGRect) {
        super.init(frame: frame)
  
        addSubview(notes)
        notes.translatesAutoresizingMaskIntoConstraints = false
        notes.backgroundColor = .gray
        notes.text = "Notes:"
        notes.isScrollEnabled = false
        notes.topAnchor.constraint(equalTo: topAnchor).isActive = true
        notes.rightAnchor.constraint(equalTo: rightAnchor).isActive = true
        notes.leftAnchor.constraint(equalTo: leftAnchor).isActive = true
        notes.bottomAnchor.constraint(equalTo: bottomAnchor).isActive = true
        
        
    }
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }


}
