
import UIKit


class ViewController: UIViewController, ViewDelegate, UITextDelegate, TabBarDelegate{
    
    let customView = View()
    let uiTextView = UIText()
    let tabBar = TabBar()
    

    override func viewDidLoad() {
        super.viewDidLoad()
        
        view.addSubview(tabBar)
        
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
        uiTextView.bottomAnchor.constraint(equalTo: tabBar.topAnchor, constant: -16).isActive = true
 
        tabBar.delegate = self
        tabBar.translatesAutoresizingMaskIntoConstraints = false
        tabBar.leftAnchor.constraint(equalTo: view.leftAnchor, constant: 16).isActive = true
        tabBar.rightAnchor.constraint(equalTo: view.rightAnchor, constant: -16).isActive = true
        tabBar.heightAnchor.constraint(equalToConstant: 50).isActive = true
        tabBar.bottomAnchor.constraint(equalTo: view.bottomAnchor, constant: -20).isActive = true
    }
    
    func printNotes() {
      
    }
    
    func printText(text : String) {
//        print(text)
    }
    func saveButtonPressed(_ sender: TabBar) {
        customView.delegate?.printText(text: <#T##String#>)
    }
}

