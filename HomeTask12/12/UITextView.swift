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
        notes.isScrollEnabled = true
        notes.heightAnchor.constraint(equalToConstant: 400).isActive = true
        notes.widthAnchor.constraint(equalToConstant: 361).isActive = true
        
    }
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
//    @IBAction func printNotes() {
//            self.delegate?.printNotes()
//            print (notes.text!)
//            
//        }

}
